#!/bin/python3

# Utility to auto-generate Cython bindings for imgui.h

# ------------------------------------------------------------------------------
# IMPORTS
# ------------------------------------------------------------------------------

from __future__ import annotations
from string import Template
from re import split, fullmatch
from typing import Generator

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

def struct(line: list[str], buffer: Generator=None) -> str:

    if not buffer:
        return f'struct {line[0]}:\n{TAB*2}pass'

    definition = [f'struct {line[0]}:']
    cpp_skipped = {'(', ')', '{', '<', '>'}

    while (nextline := next(buffer)).find('}') == -1:
        if not set(nextline) & cpp_skipped:
            # Skipping last character (;)
            definition.append(' '.join(nextline.split())[:-1])

    definition.append('pass')
    return f'\n{TAB*2}'.join(definition)

# ----------------------------------------------------------

def typedef(line: list[str]) -> str:
    return 'ctypedef ' + ' '.join(line)


full_statements = {
    f.__name__: f
    for f in (IMGUI_API, typedef, struct)
}

part_statements = {
    f.__name__: f
    for f in (struct,)
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

        lines = (i for i in imgui_h.readlines())
        for line in lines:

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

            if lsplit and not EXCLUDED & set(lsplit):
                if is_full_statement:
                    if lsplit[0] in full_statements:
                        imgui_decl[past_namespace].append(
                            full_statements[lsplit[0]](lsplit[1:]))

                elif lsplit[0] in part_statements:
                    imgui_decl[past_namespace].append(
                        part_statements[lsplit[0]](lsplit[1:], lines))

    with open(TEMPLATE, 'r') as imgui_template:
        pxd_template = Template(imgui_template.read())

    with open('imgui.pxd', 'w') as f:
        f.write(pxd_template.substitute(
            imgui_h=f'\n{TAB}'.join(imgui_decl[0]),
            imgui_namespace=f'\n{TAB}'.join(imgui_decl[1])
        ))