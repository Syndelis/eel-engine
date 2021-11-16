#!/bin/python3

# Utility to auto-generate Cython bindings for imgui.h

# ------------------------------------------------------------------------------
# IMPORTS
# ------------------------------------------------------------------------------

from __future__ import annotations
from string import Template
from re import split, fullmatch

TAB = ' ' * 4

# ------------------------------------------------------------------------------
# FUNCTIONS
# ------------------------------------------------------------------------------

def normalizeParam(param: str) -> str:
    listed = param.split()
    if listed and fullmatch(r'\w+', listed[-1]): return param + '_'
    else: return param


def IMGUI_API(line: list[str]) -> str:

    decl = ' '.join(line)

    params = [
        [j.strip() for j in i.split('=')]
        for i in split(r', (?=[a-zA-Z]+)', decl[decl.index('(')+1: decl.index(')')])
    ]
    # for i in decl[decl.index('(')+1: decl.index(')')].split(', ')

    decl_start  = decl[:decl.index('(')]
    decl_end    = ' nogil'

    param_iterations = []
    so_far = []

    for param in params:
        if len(param) > 1:
            param_iterations.append(so_far.copy())

        so_far.append(normalizeParam(param[0]))

    param_iterations.append(so_far)

    return f'\n{TAB}'.join(
        f"{decl_start}({tmp}){decl_end}"
        for params in param_iterations[::-1]
        if (tmp := ', '.join(params)).count('(') == tmp.count(')')
    )


# ----------------------------------------------------------

def struct(line: list[str]) -> str:
    return f'struct {line[0]}:\n{TAB*2}pass'

# ----------------------------------------------------------

def typedef(line: list[str]) -> str:
    return 'ctypedef ' + ' '.join(line)


method_translation = {
    f.__name__: f
    for f in (IMGUI_API, struct, typedef)
}

# ------------------------------------------------------------------------------
# MAIN CODE
# ------------------------------------------------------------------------------

SRC_FILE = '../../lib/imgui/imgui.h'
TEMPLATE = 'imgui.template.pxd'
NAMESPACE_DECL  = 'namespace ImGui'
NAMESPACE_END   = '} // namespace ImGui'
COMM_INDICATOR = '//'

# Manually excluded stuff that would break Cython
EXCLUDED = {'__int64', 'va_list'}

if __name__ == '__main__':

    #         Header, Namespace
    imgui_decl = [[], []]
    past_namespace = False

    with open(SRC_FILE, 'r') as imgui_h:
        for line in imgui_h.readlines():

            if NAMESPACE_END in line:
                break

            elif NAMESPACE_DECL in line:
                past_namespace = True
                continue


            # Replacing ';' → ' ' because sometimes there is no space between
            # code and comments, but there's always a semi-colon
            lsplit = line.replace(';', ' ').split()
            
            # Keep track to filter struct definitions. We only want declarations
            is_full_statement = line.find(';') != -1

            if COMM_INDICATOR in lsplit:

                # Remove everything that is a comment
                lsplit = lsplit[:lsplit.index(COMM_INDICATOR)]

            if is_full_statement and lsplit and lsplit[0] in method_translation:

                if not EXCLUDED & set(lsplit):
                    imgui_decl[past_namespace].append(
                        method_translation[lsplit[0]](lsplit[1:]))

    with open(TEMPLATE, 'r') as imgui_template:
        pxd_template = Template(imgui_template.read())

    with open('imgui.pxd', 'w') as f:
        f.write(pxd_template.substitute(
            imgui_h=f'\n{TAB}'.join(imgui_decl[0]),
            imgui_namespace=f'\n{TAB}'.join(imgui_decl[1])
        ))