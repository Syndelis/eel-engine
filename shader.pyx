"""
Imports
"""
from libc.stdio cimport printf

# C counterpart
from eelShader cimport *
# ------------------------------------------------------------------------------
"""
Shader Cdef class
"""
cdef class _Shader:

    cdef int program;
    cdef int in_use;

    def __cinit__(self, char *vertstr, char *fragstr):

        # forceGlew()

        cdef int prog

        with nogil:
            prog = newShader(vertstr, fragstr)
            if prog == -10:
                prog = newShaderFromStr(vertstr, fragstr)

        if prog == -1:
            raise Exception("eelShader: Couldn't compile shader")

        self.in_use = 0
        self.program = prog


    def __enter__(self):
        self.use()


    def __exit__(self, *err):
        self.stop()


    def __dealloc__(self):
        with nogil:
            deleteProgram(self.program)


    cpdef use(self):
        with nogil:
            useProgram(self.program)


    cpdef stop(self):
        with nogil:
            useProgram(0)


    cpdef getProgram(self):
        return self.program


    cpdef setUniform(self, char *name, values):



        # if not isinstance(values, list):
        #     values = (values,)

        cdef int amnt = len(values)
        # cdef int is_int = values[0] == int
        cdef int is_int = 0 # I know this is redundant, but I'll still implement it

        cdef int location, i
        cdef int v[4]

        for i in range(0, amnt):
            v[i] = values[i]

        with nogil:

            location = getUniformLocation(self.program, name)
            if is_int:
                if amnt == 1:
                    setUniform1i(location, v[0])

                elif amnt == 2:
                    setUniform2i(location, v[0], v[1])

                elif amnt == 3:
                    setUniform3i(location, v[0], v[1], v[2])

                elif amnt == 4:
                    setUniform4i(location, v[0], v[1], v[2], v[3])


            else:
                if amnt == 1:
                    setUniform1f(location, v[0])

                elif amnt == 2:
                    setUniform2f(location, v[0], v[1])
                    
                elif amnt == 3:
                    setUniform3f(location, v[0], v[1], v[2])
                    
                elif amnt == 4:
                    setUniform4f(location, v[0], v[1], v[2], v[3])
# ------------------------------------------------------------------------------
"""
Shader Python Wrapper
"""
class Shader(_Shader): pass