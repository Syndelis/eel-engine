from libc.stdint cimport int32_t, uint32_t, int64_t, uint64_t

cdef extern from "<GLFW/glfw3.h>":

    struct GLFWwindow:
        pass

    struct GLFWcursor:
        pass

    struct GLFWmonitor:
        pass

    struct __GLsync:
        pass

    int GLFW_MOD_SHIFT
    int GLFW_MOD_CAPS_LOCK

    ctypedef unsigned int GLenum

    ctypedef unsigned char GLboolean

    ctypedef unsigned int GLbitfield

    ctypedef void GLvoid

    ctypedef signed char GLbyte

    ctypedef short GLshort

    ctypedef int GLint

    ctypedef unsigned char GLubyte

    ctypedef unsigned short GLushort

    ctypedef unsigned int GLuint

    ctypedef int GLsizei

    ctypedef float GLfloat

    ctypedef float GLclampf

    ctypedef double GLdouble

    ctypedef double GLclampd

    void glClearIndex(GLfloat c)

    void glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha) nogil

    void glClear(GLbitfield mask) nogil

    void glIndexMask(GLuint mask)

    void glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)

    void glAlphaFunc(GLenum func, GLclampf ref)

    void glBlendFunc(GLenum sfactor, GLenum dfactor) nogil

    void glLogicOp(GLenum opcode)

    void glCullFace(GLenum mode)

    void glFrontFace(GLenum mode)

    void glPointSize(GLfloat size) nogil

    void glLineWidth(GLfloat width)

    void glLineStipple(GLint factor, GLushort pattern)

    void glPolygonMode(GLenum face, GLenum mode)

    void glPolygonOffset(GLfloat factor, GLfloat units)

    void glPolygonStipple(GLubyte* mask)

    void glGetPolygonStipple(GLubyte* mask)

    void glEdgeFlag(GLboolean flag)

    void glEdgeFlagv(GLboolean* flag)

    void glScissor(GLint x, GLint y, GLsizei width, GLsizei height)

    void glClipPlane(GLenum plane, GLdouble* equation)

    void glGetClipPlane(GLenum plane, GLdouble* equation)

    void glDrawBuffer(GLenum mode)

    void glReadBuffer(GLenum mode)

    void glEnable(GLenum cap) nogil

    void glDisable(GLenum cap)

    GLboolean glIsEnabled(GLenum cap)

    void glEnableClientState(GLenum cap)

    void glDisableClientState(GLenum cap)

    void glGetBooleanv(GLenum pname, GLboolean* params)

    void glGetDoublev(GLenum pname, GLdouble* params)

    void glGetFloatv(GLenum pname, GLfloat* params)

    void glGetIntegerv(GLenum pname, GLint* params)

    void glPushAttrib(GLbitfield mask)

    void glPopAttrib()

    void glPushClientAttrib(GLbitfield mask)

    void glPopClientAttrib()

    GLint glRenderMode(GLenum mode)

    GLenum glGetError()

    GLubyte* glGetString(GLenum name)

    void glFinish()

    void glFlush() nogil

    void glHint(GLenum target, GLenum mode)

    void glClearDepth(GLclampd depth)

    void glDepthFunc(GLenum func)

    void glDepthMask(GLboolean flag)

    void glDepthRange(GLclampd near_val, GLclampd far_val)

    void glClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)

    void glAccum(GLenum op, GLfloat value)

    void glMatrixMode(GLenum mode)

    void glOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val)

    void glFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val)

    void glViewport(GLint x, GLint y, GLsizei width, GLsizei height)

    void glPushMatrix()

    void glPopMatrix()

    void glLoadIdentity()

    void glLoadMatrixd(GLdouble* m)

    void glLoadMatrixf(GLfloat* m)

    void glMultMatrixd(GLdouble* m)

    void glMultMatrixf(GLfloat* m)

    void glRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z)

    void glRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z)

    void glScaled(GLdouble x, GLdouble y, GLdouble z)

    void glScalef(GLfloat x, GLfloat y, GLfloat z)

    void glTranslated(GLdouble x, GLdouble y, GLdouble z)

    void glTranslatef(GLfloat x, GLfloat y, GLfloat z)

    GLboolean glIsList(GLuint list)

    void glDeleteLists(GLuint list, GLsizei range)

    GLuint glGenLists(GLsizei range)

    void glNewList(GLuint list, GLenum mode)

    void glEndList()

    void glCallList(GLuint list)

    void glCallLists(GLsizei n, GLenum type, GLvoid* lists)

    void glListBase(GLuint base)

    void glBegin(GLenum mode) nogil

    void glEnd() nogil

    void glVertex2d(GLdouble x, GLdouble y)

    void glVertex2f(GLfloat x, GLfloat y) nogil

    void glVertex2i(GLint x, GLint y)

    void glVertex2s(GLshort x, GLshort y)

    void glVertex3d(GLdouble x, GLdouble y, GLdouble z)

    void glVertex3f(GLfloat x, GLfloat y, GLfloat z)

    void glVertex3i(GLint x, GLint y, GLint z)

    void glVertex3s(GLshort x, GLshort y, GLshort z)

    void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    void glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    void glVertex4i(GLint x, GLint y, GLint z, GLint w)

    void glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w)

    void glVertex2dv(GLdouble* v)

    void glVertex2fv(GLfloat* v)

    void glVertex2iv(GLint* v)

    void glVertex2sv(GLshort* v)

    void glVertex3dv(GLdouble* v)

    void glVertex3fv(GLfloat* v)

    void glVertex3iv(GLint* v)

    void glVertex3sv(GLshort* v)

    void glVertex4dv(GLdouble* v)

    void glVertex4fv(GLfloat* v)

    void glVertex4iv(GLint* v)

    void glVertex4sv(GLshort* v)

    void glNormal3b(GLbyte nx, GLbyte ny, GLbyte nz)

    void glNormal3d(GLdouble nx, GLdouble ny, GLdouble nz)

    void glNormal3f(GLfloat nx, GLfloat ny, GLfloat nz)

    void glNormal3i(GLint nx, GLint ny, GLint nz)

    void glNormal3s(GLshort nx, GLshort ny, GLshort nz)

    void glNormal3bv(GLbyte* v)

    void glNormal3dv(GLdouble* v)

    void glNormal3fv(GLfloat* v)

    void glNormal3iv(GLint* v)

    void glNormal3sv(GLshort* v)

    void glIndexd(GLdouble c)

    void glIndexf(GLfloat c)

    void glIndexi(GLint c)

    void glIndexs(GLshort c)

    void glIndexub(GLubyte c)

    void glIndexdv(GLdouble* c)

    void glIndexfv(GLfloat* c)

    void glIndexiv(GLint* c)

    void glIndexsv(GLshort* c)

    void glIndexubv(GLubyte* c)

    void glColor3b(GLbyte red, GLbyte green, GLbyte blue)

    void glColor3d(GLdouble red, GLdouble green, GLdouble blue)

    void glColor3f(GLfloat red, GLfloat green, GLfloat blue) nogil

    void glColor3i(GLint red, GLint green, GLint blue)

    void glColor3s(GLshort red, GLshort green, GLshort blue)

    void glColor3ub(GLubyte red, GLubyte green, GLubyte blue)

    void glColor3ui(GLuint red, GLuint green, GLuint blue)

    void glColor3us(GLushort red, GLushort green, GLushort blue)

    void glColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha)

    void glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha)

    void glColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) nogil

    void glColor4i(GLint red, GLint green, GLint blue, GLint alpha) nogil

    void glColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha)

    void glColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha)

    void glColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha)

    void glColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha)

    void glColor3bv(GLbyte* v)

    void glColor3dv(GLdouble* v)

    void glColor3fv(GLfloat* v)

    void glColor3iv(GLint* v)

    void glColor3sv(GLshort* v)

    void glColor3ubv(GLubyte* v)

    void glColor3uiv(GLuint* v)

    void glColor3usv(GLushort* v)

    void glColor4bv(GLbyte* v)

    void glColor4dv(GLdouble* v)

    void glColor4fv(GLfloat* v)

    void glColor4iv(GLint* v)

    void glColor4sv(GLshort* v)

    void glColor4ubv(GLubyte* v)

    void glColor4uiv(GLuint* v)

    void glColor4usv(GLushort* v)

    void glTexCoord1d(GLdouble s)

    void glTexCoord1f(GLfloat s)

    void glTexCoord1i(GLint s)

    void glTexCoord1s(GLshort s)

    void glTexCoord2d(GLdouble s, GLdouble t)

    void glTexCoord2f(GLfloat s, GLfloat t) nogil

    void glTexCoord2i(GLint s, GLint t)

    void glTexCoord2s(GLshort s, GLshort t)

    void glTexCoord3d(GLdouble s, GLdouble t, GLdouble r)

    void glTexCoord3f(GLfloat s, GLfloat t, GLfloat r)

    void glTexCoord3i(GLint s, GLint t, GLint r)

    void glTexCoord3s(GLshort s, GLshort t, GLshort r)

    void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q)

    void glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q)

    void glTexCoord4i(GLint s, GLint t, GLint r, GLint q)

    void glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q)

    void glTexCoord1dv(GLdouble* v)

    void glTexCoord1fv(GLfloat* v)

    void glTexCoord1iv(GLint* v)

    void glTexCoord1sv(GLshort* v)

    void glTexCoord2dv(GLdouble* v)

    void glTexCoord2fv(GLfloat* v)

    void glTexCoord2iv(GLint* v)

    void glTexCoord2sv(GLshort* v)

    void glTexCoord3dv(GLdouble* v)

    void glTexCoord3fv(GLfloat* v)

    void glTexCoord3iv(GLint* v)

    void glTexCoord3sv(GLshort* v)

    void glTexCoord4dv(GLdouble* v)

    void glTexCoord4fv(GLfloat* v)

    void glTexCoord4iv(GLint* v)

    void glTexCoord4sv(GLshort* v)

    void glRasterPos2d(GLdouble x, GLdouble y)

    void glRasterPos2f(GLfloat x, GLfloat y)

    void glRasterPos2i(GLint x, GLint y)

    void glRasterPos2s(GLshort x, GLshort y)

    void glRasterPos3d(GLdouble x, GLdouble y, GLdouble z)

    void glRasterPos3f(GLfloat x, GLfloat y, GLfloat z)

    void glRasterPos3i(GLint x, GLint y, GLint z)

    void glRasterPos3s(GLshort x, GLshort y, GLshort z)

    void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    void glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    void glRasterPos4i(GLint x, GLint y, GLint z, GLint w)

    void glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w)

    void glRasterPos2dv(GLdouble* v)

    void glRasterPos2fv(GLfloat* v)

    void glRasterPos2iv(GLint* v)

    void glRasterPos2sv(GLshort* v)

    void glRasterPos3dv(GLdouble* v)

    void glRasterPos3fv(GLfloat* v)

    void glRasterPos3iv(GLint* v)

    void glRasterPos3sv(GLshort* v)

    void glRasterPos4dv(GLdouble* v)

    void glRasterPos4fv(GLfloat* v)

    void glRasterPos4iv(GLint* v)

    void glRasterPos4sv(GLshort* v)

    void glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2)

    void glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2)

    void glRecti(GLint x1, GLint y1, GLint x2, GLint y2)

    void glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2)

    void glRectdv(GLdouble* v1, GLdouble* v2)

    void glRectfv(GLfloat* v1, GLfloat* v2)

    void glRectiv(GLint* v1, GLint* v2)

    void glRectsv(GLshort* v1, GLshort* v2)

    void glVertexPointer(GLint size, GLenum type, GLsizei stride, GLvoid* ptr)

    void glNormalPointer(GLenum type, GLsizei stride, GLvoid* ptr)

    void glColorPointer(GLint size, GLenum type, GLsizei stride, GLvoid* ptr)

    void glIndexPointer(GLenum type, GLsizei stride, GLvoid* ptr)

    void glTexCoordPointer(GLint size, GLenum type, GLsizei stride, GLvoid* ptr)

    void glEdgeFlagPointer(GLsizei stride, GLvoid* ptr)

    void glGetPointerv(GLenum pname, GLvoid** params)

    void glArrayElement(GLint i)

    void glDrawArrays(GLenum mode, GLint first, GLsizei count)

    void glDrawElements(GLenum mode, GLsizei count, GLenum type, GLvoid* indices)

    void glInterleavedArrays(GLenum format, GLsizei stride, GLvoid* pointer)

    void glShadeModel(GLenum mode)

    void glLightf(GLenum light, GLenum pname, GLfloat param)

    void glLighti(GLenum light, GLenum pname, GLint param)

    void glLightfv(GLenum light, GLenum pname, GLfloat* params)

    void glLightiv(GLenum light, GLenum pname, GLint* params)

    void glGetLightfv(GLenum light, GLenum pname, GLfloat* params)

    void glGetLightiv(GLenum light, GLenum pname, GLint* params)

    void glLightModelf(GLenum pname, GLfloat param)

    void glLightModeli(GLenum pname, GLint param)

    void glLightModelfv(GLenum pname, GLfloat* params)

    void glLightModeliv(GLenum pname, GLint* params)

    void glMaterialf(GLenum face, GLenum pname, GLfloat param)

    void glMateriali(GLenum face, GLenum pname, GLint param)

    void glMaterialfv(GLenum face, GLenum pname, GLfloat* params)

    void glMaterialiv(GLenum face, GLenum pname, GLint* params)

    void glGetMaterialfv(GLenum face, GLenum pname, GLfloat* params)

    void glGetMaterialiv(GLenum face, GLenum pname, GLint* params)

    void glColorMaterial(GLenum face, GLenum mode)

    void glPixelZoom(GLfloat xfactor, GLfloat yfactor)

    void glPixelStoref(GLenum pname, GLfloat param)

    void glPixelStorei(GLenum pname, GLint param)

    void glPixelTransferf(GLenum pname, GLfloat param)

    void glPixelTransferi(GLenum pname, GLint param)

    void glPixelMapfv(GLenum map, GLsizei mapsize, GLfloat* values)

    void glPixelMapuiv(GLenum map, GLsizei mapsize, GLuint* values)

    void glPixelMapusv(GLenum map, GLsizei mapsize, GLushort* values)

    void glGetPixelMapfv(GLenum map, GLfloat* values)

    void glGetPixelMapuiv(GLenum map, GLuint* values)

    void glGetPixelMapusv(GLenum map, GLushort* values)

    void glBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, GLubyte* bitmap)

    void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* pixels)

    void glDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* pixels)

    void glCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type)

    void glStencilFunc(GLenum func, GLint ref, GLuint mask)

    void glStencilMask(GLuint mask)

    void glStencilOp(GLenum fail, GLenum zfail, GLenum zpass)

    void glClearStencil(GLint s)

    void glTexGend(GLenum coord, GLenum pname, GLdouble param)

    void glTexGenf(GLenum coord, GLenum pname, GLfloat param)

    void glTexGeni(GLenum coord, GLenum pname, GLint param)

    void glTexGendv(GLenum coord, GLenum pname, GLdouble* params)

    void glTexGenfv(GLenum coord, GLenum pname, GLfloat* params)

    void glTexGeniv(GLenum coord, GLenum pname, GLint* params)

    void glGetTexGendv(GLenum coord, GLenum pname, GLdouble* params)

    void glGetTexGenfv(GLenum coord, GLenum pname, GLfloat* params)

    void glGetTexGeniv(GLenum coord, GLenum pname, GLint* params)

    void glTexEnvf(GLenum target, GLenum pname, GLfloat param)

    void glTexEnvi(GLenum target, GLenum pname, GLint param)

    void glTexEnvfv(GLenum target, GLenum pname, GLfloat* params)

    void glTexEnviv(GLenum target, GLenum pname, GLint* params)

    void glGetTexEnvfv(GLenum target, GLenum pname, GLfloat* params)

    void glGetTexEnviv(GLenum target, GLenum pname, GLint* params)

    void glTexParameterf(GLenum target, GLenum pname, GLfloat param)

    void glTexParameteri(GLenum target, GLenum pname, GLint param)

    void glTexParameterfv(GLenum target, GLenum pname, GLfloat* params)

    void glTexParameteriv(GLenum target, GLenum pname, GLint* params)

    void glGetTexParameterfv(GLenum target, GLenum pname, GLfloat* params)

    void glGetTexParameteriv(GLenum target, GLenum pname, GLint* params)

    void glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat* params)

    void glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint* params)

    void glTexImage1D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLint border, GLenum format, GLenum type, GLvoid* pixels)

    void glTexImage2D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, GLvoid* pixels)

    void glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels)

    void glGenTextures(GLsizei n, GLuint* textures)

    void glDeleteTextures(GLsizei n, GLuint* textures)

    void glBindTexture(GLenum target, GLuint texture) nogil

    void glPrioritizeTextures(GLsizei n, GLuint* textures, GLclampf* priorities)

    GLboolean glAreTexturesResident(GLsizei n, GLuint* textures, GLboolean* residences)

    GLboolean glIsTexture(GLuint texture)

    void glTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, GLvoid* pixels)

    void glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* pixels)

    void glCopyTexImage1D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)

    void glCopyTexImage2D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

    void glCopyTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

    void glCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    void glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, GLdouble* points)

    void glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, GLfloat* points)

    void glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble* points)

    void glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat* points)

    void glGetMapdv(GLenum target, GLenum query, GLdouble* v)

    void glGetMapfv(GLenum target, GLenum query, GLfloat* v)

    void glGetMapiv(GLenum target, GLenum query, GLint* v)

    void glEvalCoord1d(GLdouble u)

    void glEvalCoord1f(GLfloat u)

    void glEvalCoord1dv(GLdouble* u)

    void glEvalCoord1fv(GLfloat* u)

    void glEvalCoord2d(GLdouble u, GLdouble v)

    void glEvalCoord2f(GLfloat u, GLfloat v)

    void glEvalCoord2dv(GLdouble* u)

    void glEvalCoord2fv(GLfloat* u)

    void glMapGrid1d(GLint un, GLdouble u1, GLdouble u2)

    void glMapGrid1f(GLint un, GLfloat u1, GLfloat u2)

    void glMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2)

    void glMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2)

    void glEvalPoint1(GLint i)

    void glEvalPoint2(GLint i, GLint j)

    void glEvalMesh1(GLenum mode, GLint i1, GLint i2)

    void glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2)

    void glFogf(GLenum pname, GLfloat param)

    void glFogi(GLenum pname, GLint param)

    void glFogfv(GLenum pname, GLfloat* params)

    void glFogiv(GLenum pname, GLint* params)

    void glFeedbackBuffer(GLsizei size, GLenum type, GLfloat* buffer)

    void glPassThrough(GLfloat token)

    void glSelectBuffer(GLsizei size, GLuint* buffer)

    void glInitNames()

    void glLoadName(GLuint name)

    void glPushName(GLuint name)

    void glPopName()

    void glDrawRangeElements(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLvoid* indices)

    void glTexImage3D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid* pixels)

    void glTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid* pixels)

    void glCopyTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLDRAWRANGEELEMENTSPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, GLvoid* indices)

    ctypedef void (*PFNGLTEXIMAGE3DPROC)(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, GLvoid* pixels)

    ctypedef void (*PFNGLTEXSUBIMAGE3DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLvoid* pixels)

    ctypedef void (*PFNGLCOPYTEXSUBIMAGE3DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    void glColorTable(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid* table)

    void glColorSubTable(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, GLvoid* data)

    void glColorTableParameteriv(GLenum target, GLenum pname, GLint* params)

    void glColorTableParameterfv(GLenum target, GLenum pname, GLfloat* params)

    void glCopyColorSubTable(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)

    void glCopyColorTable(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)

    void glGetColorTable(GLenum target, GLenum format, GLenum type, GLvoid* table)

    void glGetColorTableParameterfv(GLenum target, GLenum pname, GLfloat* params)

    void glGetColorTableParameteriv(GLenum target, GLenum pname, GLint* params)

    void glBlendEquation(GLenum mode)

    void glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)

    void glHistogram(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink)

    void glResetHistogram(GLenum target)

    void glGetHistogram(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values)

    void glGetHistogramParameterfv(GLenum target, GLenum pname, GLfloat* params)

    void glGetHistogramParameteriv(GLenum target, GLenum pname, GLint* params)

    void glMinmax(GLenum target, GLenum internalformat, GLboolean sink)

    void glResetMinmax(GLenum target)

    void glGetMinmax(GLenum target, GLboolean reset, GLenum format, GLenum types, GLvoid* values)

    void glGetMinmaxParameterfv(GLenum target, GLenum pname, GLfloat* params)

    void glGetMinmaxParameteriv(GLenum target, GLenum pname, GLint* params)

    void glConvolutionFilter1D(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, GLvoid* image)

    void glConvolutionFilter2D(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* image)

    void glConvolutionParameterf(GLenum target, GLenum pname, GLfloat params)

    void glConvolutionParameterfv(GLenum target, GLenum pname, GLfloat* params)

    void glConvolutionParameteri(GLenum target, GLenum pname, GLint params)

    void glConvolutionParameteriv(GLenum target, GLenum pname, GLint* params)

    void glCopyConvolutionFilter1D(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)

    void glCopyConvolutionFilter2D(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)

    void glGetConvolutionFilter(GLenum target, GLenum format, GLenum type, GLvoid* image)

    void glGetConvolutionParameterfv(GLenum target, GLenum pname, GLfloat* params)

    void glGetConvolutionParameteriv(GLenum target, GLenum pname, GLint* params)

    void glSeparableFilter2D(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* row, GLvoid* column)

    void glGetSeparableFilter(GLenum target, GLenum format, GLenum type, GLvoid* row, GLvoid* column, GLvoid* span)

    void glActiveTexture(GLenum texture)

    void glClientActiveTexture(GLenum texture)

    void glCompressedTexImage1D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid* data)

    void glCompressedTexImage2D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid* data)

    void glCompressedTexImage3D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid* data)

    void glCompressedTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid* data)

    void glCompressedTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid* data)

    void glCompressedTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid* data)

    void glGetCompressedTexImage(GLenum target, GLint lod, GLvoid* img)

    void glMultiTexCoord1d(GLenum target, GLdouble s)

    void glMultiTexCoord1dv(GLenum target, GLdouble* v)

    void glMultiTexCoord1f(GLenum target, GLfloat s)

    void glMultiTexCoord1fv(GLenum target, GLfloat* v)

    void glMultiTexCoord1i(GLenum target, GLint s)

    void glMultiTexCoord1iv(GLenum target, GLint* v)

    void glMultiTexCoord1s(GLenum target, GLshort s)

    void glMultiTexCoord1sv(GLenum target, GLshort* v)

    void glMultiTexCoord2d(GLenum target, GLdouble s, GLdouble t)

    void glMultiTexCoord2dv(GLenum target, GLdouble* v)

    void glMultiTexCoord2f(GLenum target, GLfloat s, GLfloat t)

    void glMultiTexCoord2fv(GLenum target, GLfloat* v)

    void glMultiTexCoord2i(GLenum target, GLint s, GLint t)

    void glMultiTexCoord2iv(GLenum target, GLint* v)

    void glMultiTexCoord2s(GLenum target, GLshort s, GLshort t)

    void glMultiTexCoord2sv(GLenum target, GLshort* v)

    void glMultiTexCoord3d(GLenum target, GLdouble s, GLdouble t, GLdouble r)

    void glMultiTexCoord3dv(GLenum target, GLdouble* v)

    void glMultiTexCoord3f(GLenum target, GLfloat s, GLfloat t, GLfloat r)

    void glMultiTexCoord3fv(GLenum target, GLfloat* v)

    void glMultiTexCoord3i(GLenum target, GLint s, GLint t, GLint r)

    void glMultiTexCoord3iv(GLenum target, GLint* v)

    void glMultiTexCoord3s(GLenum target, GLshort s, GLshort t, GLshort r)

    void glMultiTexCoord3sv(GLenum target, GLshort* v)

    void glMultiTexCoord4d(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)

    void glMultiTexCoord4dv(GLenum target, GLdouble* v)

    void glMultiTexCoord4f(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)

    void glMultiTexCoord4fv(GLenum target, GLfloat* v)

    void glMultiTexCoord4i(GLenum target, GLint s, GLint t, GLint r, GLint q)

    void glMultiTexCoord4iv(GLenum target, GLint* v)

    void glMultiTexCoord4s(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)

    void glMultiTexCoord4sv(GLenum target, GLshort* v)

    void glLoadTransposeMatrixd(GLdouble m[16])

    void glLoadTransposeMatrixf(GLfloat m[16])

    void glMultTransposeMatrixd(GLdouble m[16])

    void glMultTransposeMatrixf(GLfloat m[16])

    void glSampleCoverage(GLclampf value, GLboolean invert)

    ctypedef void (*PFNGLACTIVETEXTUREPROC)(GLenum texture)

    ctypedef void (*PFNGLSAMPLECOVERAGEPROC)(GLclampf value, GLboolean invert)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE3DPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE2DPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE1DPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, GLvoid* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, GLvoid* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC)(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, GLvoid* data)

    ctypedef void (*PFNGLGETCOMPRESSEDTEXIMAGEPROC)(GLenum target, GLint level, GLvoid* img)

    void glActiveTextureARB(GLenum texture)

    void glClientActiveTextureARB(GLenum texture)

    void glMultiTexCoord1dARB(GLenum target, GLdouble s)

    void glMultiTexCoord1dvARB(GLenum target, GLdouble* v)

    void glMultiTexCoord1fARB(GLenum target, GLfloat s)

    void glMultiTexCoord1fvARB(GLenum target, GLfloat* v)

    void glMultiTexCoord1iARB(GLenum target, GLint s)

    void glMultiTexCoord1ivARB(GLenum target, GLint* v)

    void glMultiTexCoord1sARB(GLenum target, GLshort s)

    void glMultiTexCoord1svARB(GLenum target, GLshort* v)

    void glMultiTexCoord2dARB(GLenum target, GLdouble s, GLdouble t)

    void glMultiTexCoord2dvARB(GLenum target, GLdouble* v)

    void glMultiTexCoord2fARB(GLenum target, GLfloat s, GLfloat t)

    void glMultiTexCoord2fvARB(GLenum target, GLfloat* v)

    void glMultiTexCoord2iARB(GLenum target, GLint s, GLint t)

    void glMultiTexCoord2ivARB(GLenum target, GLint* v)

    void glMultiTexCoord2sARB(GLenum target, GLshort s, GLshort t)

    void glMultiTexCoord2svARB(GLenum target, GLshort* v)

    void glMultiTexCoord3dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r)

    void glMultiTexCoord3dvARB(GLenum target, GLdouble* v)

    void glMultiTexCoord3fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r)

    void glMultiTexCoord3fvARB(GLenum target, GLfloat* v)

    void glMultiTexCoord3iARB(GLenum target, GLint s, GLint t, GLint r)

    void glMultiTexCoord3ivARB(GLenum target, GLint* v)

    void glMultiTexCoord3sARB(GLenum target, GLshort s, GLshort t, GLshort r)

    void glMultiTexCoord3svARB(GLenum target, GLshort* v)

    void glMultiTexCoord4dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)

    void glMultiTexCoord4dvARB(GLenum target, GLdouble* v)

    void glMultiTexCoord4fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)

    void glMultiTexCoord4fvARB(GLenum target, GLfloat* v)

    void glMultiTexCoord4iARB(GLenum target, GLint s, GLint t, GLint r, GLint q)

    void glMultiTexCoord4ivARB(GLenum target, GLint* v)

    void glMultiTexCoord4sARB(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)

    void glMultiTexCoord4svARB(GLenum target, GLshort* v)

    ctypedef void (*PFNGLACTIVETEXTUREARBPROC)(GLenum texture)

    ctypedef void (*PFNGLCLIENTACTIVETEXTUREARBPROC)(GLenum texture)

    ctypedef void (*PFNGLMULTITEXCOORD1DARBPROC)(GLenum target, GLdouble s)

    ctypedef void (*PFNGLMULTITEXCOORD1DVARBPROC)(GLenum target, GLdouble* v)

    ctypedef void (*PFNGLMULTITEXCOORD1FARBPROC)(GLenum target, GLfloat s)

    ctypedef void (*PFNGLMULTITEXCOORD1FVARBPROC)(GLenum target, GLfloat* v)

    ctypedef void (*PFNGLMULTITEXCOORD1IARBPROC)(GLenum target, GLint s)

    ctypedef void (*PFNGLMULTITEXCOORD1IVARBPROC)(GLenum target, GLint* v)

    ctypedef void (*PFNGLMULTITEXCOORD1SARBPROC)(GLenum target, GLshort s)

    ctypedef void (*PFNGLMULTITEXCOORD1SVARBPROC)(GLenum target, GLshort* v)

    ctypedef void (*PFNGLMULTITEXCOORD2DARBPROC)(GLenum target, GLdouble s, GLdouble t)

    ctypedef void (*PFNGLMULTITEXCOORD2DVARBPROC)(GLenum target, GLdouble* v)

    ctypedef void (*PFNGLMULTITEXCOORD2FARBPROC)(GLenum target, GLfloat s, GLfloat t)

    ctypedef void (*PFNGLMULTITEXCOORD2FVARBPROC)(GLenum target, GLfloat* v)

    ctypedef void (*PFNGLMULTITEXCOORD2IARBPROC)(GLenum target, GLint s, GLint t)

    ctypedef void (*PFNGLMULTITEXCOORD2IVARBPROC)(GLenum target, GLint* v)

    ctypedef void (*PFNGLMULTITEXCOORD2SARBPROC)(GLenum target, GLshort s, GLshort t)

    ctypedef void (*PFNGLMULTITEXCOORD2SVARBPROC)(GLenum target, GLshort* v)

    ctypedef void (*PFNGLMULTITEXCOORD3DARBPROC)(GLenum target, GLdouble s, GLdouble t, GLdouble r)

    ctypedef void (*PFNGLMULTITEXCOORD3DVARBPROC)(GLenum target, GLdouble* v)

    ctypedef void (*PFNGLMULTITEXCOORD3FARBPROC)(GLenum target, GLfloat s, GLfloat t, GLfloat r)

    ctypedef void (*PFNGLMULTITEXCOORD3FVARBPROC)(GLenum target, GLfloat* v)

    ctypedef void (*PFNGLMULTITEXCOORD3IARBPROC)(GLenum target, GLint s, GLint t, GLint r)

    ctypedef void (*PFNGLMULTITEXCOORD3IVARBPROC)(GLenum target, GLint* v)

    ctypedef void (*PFNGLMULTITEXCOORD3SARBPROC)(GLenum target, GLshort s, GLshort t, GLshort r)

    ctypedef void (*PFNGLMULTITEXCOORD3SVARBPROC)(GLenum target, GLshort* v)

    ctypedef void (*PFNGLMULTITEXCOORD4DARBPROC)(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)

    ctypedef void (*PFNGLMULTITEXCOORD4DVARBPROC)(GLenum target, GLdouble* v)

    ctypedef void (*PFNGLMULTITEXCOORD4FARBPROC)(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)

    ctypedef void (*PFNGLMULTITEXCOORD4FVARBPROC)(GLenum target, GLfloat* v)

    ctypedef void (*PFNGLMULTITEXCOORD4IARBPROC)(GLenum target, GLint s, GLint t, GLint r, GLint q)

    ctypedef void (*PFNGLMULTITEXCOORD4IVARBPROC)(GLenum target, GLint* v)

    ctypedef void (*PFNGLMULTITEXCOORD4SARBPROC)(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)

    ctypedef void (*PFNGLMULTITEXCOORD4SVARBPROC)(GLenum target, GLshort* v)

    ctypedef int32_t khronos_int32_t

    ctypedef uint32_t khronos_uint32_t

    ctypedef int64_t khronos_int64_t

    ctypedef uint64_t khronos_uint64_t

    ctypedef signed char khronos_int8_t

    ctypedef unsigned char khronos_uint8_t

    ctypedef signed short int khronos_int16_t

    ctypedef unsigned short int khronos_uint16_t

    ctypedef signed long int khronos_intptr_t

    ctypedef unsigned long int khronos_uintptr_t

    ctypedef signed long int khronos_ssize_t

    ctypedef unsigned long int khronos_usize_t

    ctypedef float khronos_float_t

    ctypedef khronos_uint64_t khronos_utime_nanoseconds_t

    ctypedef khronos_int64_t khronos_stime_nanoseconds_t

    ctypedef enum khronos_boolean_enum_t:
        KHRONOS_FALSE
        KHRONOS_TRUE
        KHRONOS_BOOLEAN_ENUM_FORCE_SIZE

    ctypedef void (*PFNGLBLENDFUNCSEPARATEPROC)(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)

    ctypedef void (*PFNGLMULTIDRAWARRAYSPROC)(GLenum mode, GLint* first, GLsizei* count, GLsizei drawcount)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSPROC)(GLenum mode, GLsizei* count, GLenum type, void** indices, GLsizei drawcount)

    ctypedef void (*PFNGLPOINTPARAMETERFPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLPOINTPARAMETERFVPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLPOINTPARAMETERIPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLPOINTPARAMETERIVPROC)(GLenum pname, GLint* params)

    ctypedef void (*PFNGLFOGCOORDFPROC)(GLfloat coord)

    ctypedef void (*PFNGLFOGCOORDFVPROC)(GLfloat* coord)

    ctypedef void (*PFNGLFOGCOORDDPROC)(GLdouble coord)

    ctypedef void (*PFNGLFOGCOORDDVPROC)(GLdouble* coord)

    ctypedef void (*PFNGLFOGCOORDPOINTERPROC)(GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLSECONDARYCOLOR3BPROC)(GLbyte red, GLbyte green, GLbyte blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3BVPROC)(GLbyte* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3DPROC)(GLdouble red, GLdouble green, GLdouble blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3DVPROC)(GLdouble* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3FPROC)(GLfloat red, GLfloat green, GLfloat blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3FVPROC)(GLfloat* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3IPROC)(GLint red, GLint green, GLint blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3IVPROC)(GLint* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3SPROC)(GLshort red, GLshort green, GLshort blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3SVPROC)(GLshort* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3UBPROC)(GLubyte red, GLubyte green, GLubyte blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3UBVPROC)(GLubyte* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3UIPROC)(GLuint red, GLuint green, GLuint blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3UIVPROC)(GLuint* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3USPROC)(GLushort red, GLushort green, GLushort blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3USVPROC)(GLushort* v)

    ctypedef void (*PFNGLSECONDARYCOLORPOINTERPROC)(GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLWINDOWPOS2DPROC)(GLdouble x, GLdouble y)

    ctypedef void (*PFNGLWINDOWPOS2DVPROC)(GLdouble* v)

    ctypedef void (*PFNGLWINDOWPOS2FPROC)(GLfloat x, GLfloat y)

    ctypedef void (*PFNGLWINDOWPOS2FVPROC)(GLfloat* v)

    ctypedef void (*PFNGLWINDOWPOS2IPROC)(GLint x, GLint y)

    ctypedef void (*PFNGLWINDOWPOS2IVPROC)(GLint* v)

    ctypedef void (*PFNGLWINDOWPOS2SPROC)(GLshort x, GLshort y)

    ctypedef void (*PFNGLWINDOWPOS2SVPROC)(GLshort* v)

    ctypedef void (*PFNGLWINDOWPOS3DPROC)(GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLWINDOWPOS3DVPROC)(GLdouble* v)

    ctypedef void (*PFNGLWINDOWPOS3FPROC)(GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLWINDOWPOS3FVPROC)(GLfloat* v)

    ctypedef void (*PFNGLWINDOWPOS3IPROC)(GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLWINDOWPOS3IVPROC)(GLint* v)

    ctypedef void (*PFNGLWINDOWPOS3SPROC)(GLshort x, GLshort y, GLshort z)

    ctypedef void (*PFNGLWINDOWPOS3SVPROC)(GLshort* v)

    ctypedef void (*PFNGLBLENDCOLORPROC)(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)

    ctypedef void (*PFNGLBLENDEQUATIONPROC)(GLenum mode)

    ctypedef khronos_ssize_t GLsizeiptr

    ctypedef khronos_intptr_t GLintptr

    ctypedef void (*PFNGLGENQUERIESPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLDELETEQUERIESPROC)(GLsizei n, GLuint* ids)

    ctypedef GLboolean (*PFNGLISQUERYPROC)(GLuint id)

    ctypedef void (*PFNGLBEGINQUERYPROC)(GLenum target, GLuint id)

    ctypedef void (*PFNGLENDQUERYPROC)(GLenum target)

    ctypedef void (*PFNGLGETQUERYIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETQUERYOBJECTIVPROC)(GLuint id, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETQUERYOBJECTUIVPROC)(GLuint id, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLBINDBUFFERPROC)(GLenum target, GLuint buffer)

    ctypedef void (*PFNGLDELETEBUFFERSPROC)(GLsizei n, GLuint* buffers)

    ctypedef void (*PFNGLGENBUFFERSPROC)(GLsizei n, GLuint* buffers)

    ctypedef GLboolean (*PFNGLISBUFFERPROC)(GLuint buffer)

    ctypedef void (*PFNGLBUFFERDATAPROC)(GLenum target, GLsizeiptr size, void* data, GLenum usage)

    ctypedef void (*PFNGLBUFFERSUBDATAPROC)(GLenum target, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLGETBUFFERSUBDATAPROC)(GLenum target, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void* (*PFNGLMAPBUFFERPROC)(GLenum target, GLenum access)

    ctypedef GLboolean (*PFNGLUNMAPBUFFERPROC)(GLenum target)

    ctypedef void (*PFNGLGETBUFFERPARAMETERIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETBUFFERPOINTERVPROC)(GLenum target, GLenum pname, void** params)

    ctypedef char GLchar

    ctypedef void (*PFNGLBLENDEQUATIONSEPARATEPROC)(GLenum modeRGB, GLenum modeAlpha)

    ctypedef void (*PFNGLDRAWBUFFERSPROC)(GLsizei n, GLenum* bufs)

    ctypedef void (*PFNGLSTENCILOPSEPARATEPROC)(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass)

    ctypedef void (*PFNGLSTENCILFUNCSEPARATEPROC)(GLenum face, GLenum func, GLint ref, GLuint mask)

    ctypedef void (*PFNGLSTENCILMASKSEPARATEPROC)(GLenum face, GLuint mask)

    ctypedef void (*PFNGLATTACHSHADERPROC)(GLuint program, GLuint shader)

    ctypedef void (*PFNGLBINDATTRIBLOCATIONPROC)(GLuint program, GLuint index, GLchar* name)

    ctypedef void (*PFNGLCOMPILESHADERPROC)(GLuint shader)

    ctypedef GLuint (*PFNGLCREATEPROGRAMPROC)()

    ctypedef GLuint (*PFNGLCREATESHADERPROC)(GLenum type)

    ctypedef void (*PFNGLDELETEPROGRAMPROC)(GLuint program)

    ctypedef void (*PFNGLDELETESHADERPROC)(GLuint shader)

    ctypedef void (*PFNGLDETACHSHADERPROC)(GLuint program, GLuint shader)

    ctypedef void (*PFNGLDISABLEVERTEXATTRIBARRAYPROC)(GLuint index)

    ctypedef void (*PFNGLENABLEVERTEXATTRIBARRAYPROC)(GLuint index)

    ctypedef void (*PFNGLGETACTIVEATTRIBPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name)

    ctypedef void (*PFNGLGETACTIVEUNIFORMPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name)

    ctypedef void (*PFNGLGETATTACHEDSHADERSPROC)(GLuint program, GLsizei maxCount, GLsizei* count, GLuint* shaders)

    ctypedef GLint (*PFNGLGETATTRIBLOCATIONPROC)(GLuint program, GLchar* name)

    ctypedef void (*PFNGLGETPROGRAMIVPROC)(GLuint program, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETPROGRAMINFOLOGPROC)(GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog)

    ctypedef void (*PFNGLGETSHADERIVPROC)(GLuint shader, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETSHADERINFOLOGPROC)(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog)

    ctypedef void (*PFNGLGETSHADERSOURCEPROC)(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* source)

    ctypedef GLint (*PFNGLGETUNIFORMLOCATIONPROC)(GLuint program, GLchar* name)

    ctypedef void (*PFNGLGETUNIFORMFVPROC)(GLuint program, GLint location, GLfloat* params)

    ctypedef void (*PFNGLGETUNIFORMIVPROC)(GLuint program, GLint location, GLint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBDVPROC)(GLuint index, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBFVPROC)(GLuint index, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBIVPROC)(GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBPOINTERVPROC)(GLuint index, GLenum pname, void** pointer)

    ctypedef GLboolean (*PFNGLISPROGRAMPROC)(GLuint program)

    ctypedef GLboolean (*PFNGLISSHADERPROC)(GLuint shader)

    ctypedef void (*PFNGLLINKPROGRAMPROC)(GLuint program)

    ctypedef void (*PFNGLSHADERSOURCEPROC)(GLuint shader, GLsizei count, GLchar** string, GLint* length)

    ctypedef void (*PFNGLUSEPROGRAMPROC)(GLuint program)

    ctypedef void (*PFNGLUNIFORM1FPROC)(GLint location, GLfloat v0)

    ctypedef void (*PFNGLUNIFORM2FPROC)(GLint location, GLfloat v0, GLfloat v1)

    ctypedef void (*PFNGLUNIFORM3FPROC)(GLint location, GLfloat v0, GLfloat v1, GLfloat v2)

    ctypedef void (*PFNGLUNIFORM4FPROC)(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)

    ctypedef void (*PFNGLUNIFORM1IPROC)(GLint location, GLint v0)

    ctypedef void (*PFNGLUNIFORM2IPROC)(GLint location, GLint v0, GLint v1)

    ctypedef void (*PFNGLUNIFORM3IPROC)(GLint location, GLint v0, GLint v1, GLint v2)

    ctypedef void (*PFNGLUNIFORM4IPROC)(GLint location, GLint v0, GLint v1, GLint v2, GLint v3)

    ctypedef void (*PFNGLUNIFORM1FVPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM2FVPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM3FVPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM4FVPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM1IVPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORM2IVPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORM3IVPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORM4IVPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORMMATRIX2FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLVALIDATEPROGRAMPROC)(GLuint program)

    ctypedef void (*PFNGLVERTEXATTRIB1DPROC)(GLuint index, GLdouble x)

    ctypedef void (*PFNGLVERTEXATTRIB1DVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIB1FPROC)(GLuint index, GLfloat x)

    ctypedef void (*PFNGLVERTEXATTRIB1FVPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIB1SPROC)(GLuint index, GLshort x)

    ctypedef void (*PFNGLVERTEXATTRIB1SVPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB2DPROC)(GLuint index, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLVERTEXATTRIB2DVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIB2FPROC)(GLuint index, GLfloat x, GLfloat y)

    ctypedef void (*PFNGLVERTEXATTRIB2FVPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIB2SPROC)(GLuint index, GLshort x, GLshort y)

    ctypedef void (*PFNGLVERTEXATTRIB2SVPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB3DPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLVERTEXATTRIB3DVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIB3FPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLVERTEXATTRIB3FVPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIB3SPROC)(GLuint index, GLshort x, GLshort y, GLshort z)

    ctypedef void (*PFNGLVERTEXATTRIB3SVPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB4NBVPROC)(GLuint index, GLbyte* v)

    ctypedef void (*PFNGLVERTEXATTRIB4NIVPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIB4NSVPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB4NUBPROC)(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)

    ctypedef void (*PFNGLVERTEXATTRIB4NUBVPROC)(GLuint index, GLubyte* v)

    ctypedef void (*PFNGLVERTEXATTRIB4NUIVPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIB4NUSVPROC)(GLuint index, GLushort* v)

    ctypedef void (*PFNGLVERTEXATTRIB4BVPROC)(GLuint index, GLbyte* v)

    ctypedef void (*PFNGLVERTEXATTRIB4DPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLVERTEXATTRIB4DVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIB4FPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLVERTEXATTRIB4FVPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIB4IVPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIB4SPROC)(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)

    ctypedef void (*PFNGLVERTEXATTRIB4SVPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB4UBVPROC)(GLuint index, GLubyte* v)

    ctypedef void (*PFNGLVERTEXATTRIB4UIVPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIB4USVPROC)(GLuint index, GLushort* v)

    ctypedef void (*PFNGLVERTEXATTRIBPOINTERPROC)(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLUNIFORMMATRIX2X3FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3X2FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX2X4FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4X2FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3X4FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4X3FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef khronos_uint16_t GLhalf

    ctypedef void (*PFNGLCOLORMASKIPROC)(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a)

    ctypedef void (*PFNGLGETBOOLEANI_VPROC)(GLenum target, GLuint index, GLboolean* data)

    ctypedef void (*PFNGLGETINTEGERI_VPROC)(GLenum target, GLuint index, GLint* data)

    ctypedef void (*PFNGLENABLEIPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLDISABLEIPROC)(GLenum target, GLuint index)

    ctypedef GLboolean (*PFNGLISENABLEDIPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLBEGINTRANSFORMFEEDBACKPROC)(GLenum primitiveMode)

    ctypedef void (*PFNGLENDTRANSFORMFEEDBACKPROC)()

    ctypedef void (*PFNGLBINDBUFFERRANGEPROC)(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLBINDBUFFERBASEPROC)(GLenum target, GLuint index, GLuint buffer)

    ctypedef void (*PFNGLTRANSFORMFEEDBACKVARYINGSPROC)(GLuint program, GLsizei count, GLchar** varyings, GLenum bufferMode)

    ctypedef void (*PFNGLGETTRANSFORMFEEDBACKVARYINGPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name)

    ctypedef void (*PFNGLCLAMPCOLORPROC)(GLenum target, GLenum clamp)

    ctypedef void (*PFNGLBEGINCONDITIONALRENDERPROC)(GLuint id, GLenum mode)

    ctypedef void (*PFNGLENDCONDITIONALRENDERPROC)()

    ctypedef void (*PFNGLVERTEXATTRIBIPOINTERPROC)(GLuint index, GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLGETVERTEXATTRIBIIVPROC)(GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBIUIVPROC)(GLuint index, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLVERTEXATTRIBI1IPROC)(GLuint index, GLint x)

    ctypedef void (*PFNGLVERTEXATTRIBI2IPROC)(GLuint index, GLint x, GLint y)

    ctypedef void (*PFNGLVERTEXATTRIBI3IPROC)(GLuint index, GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLVERTEXATTRIBI4IPROC)(GLuint index, GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLVERTEXATTRIBI1UIPROC)(GLuint index, GLuint x)

    ctypedef void (*PFNGLVERTEXATTRIBI2UIPROC)(GLuint index, GLuint x, GLuint y)

    ctypedef void (*PFNGLVERTEXATTRIBI3UIPROC)(GLuint index, GLuint x, GLuint y, GLuint z)

    ctypedef void (*PFNGLVERTEXATTRIBI4UIPROC)(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

    ctypedef void (*PFNGLVERTEXATTRIBI1IVPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI2IVPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI3IVPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4IVPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI1UIVPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI2UIVPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI3UIVPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4UIVPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4BVPROC)(GLuint index, GLbyte* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4SVPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4UBVPROC)(GLuint index, GLubyte* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4USVPROC)(GLuint index, GLushort* v)

    ctypedef void (*PFNGLGETUNIFORMUIVPROC)(GLuint program, GLint location, GLuint* params)

    ctypedef void (*PFNGLBINDFRAGDATALOCATIONPROC)(GLuint program, GLuint color, GLchar* name)

    ctypedef GLint (*PFNGLGETFRAGDATALOCATIONPROC)(GLuint program, GLchar* name)

    ctypedef void (*PFNGLUNIFORM1UIPROC)(GLint location, GLuint v0)

    ctypedef void (*PFNGLUNIFORM2UIPROC)(GLint location, GLuint v0, GLuint v1)

    ctypedef void (*PFNGLUNIFORM3UIPROC)(GLint location, GLuint v0, GLuint v1, GLuint v2)

    ctypedef void (*PFNGLUNIFORM4UIPROC)(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)

    ctypedef void (*PFNGLUNIFORM1UIVPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLUNIFORM2UIVPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLUNIFORM3UIVPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLUNIFORM4UIVPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLTEXPARAMETERIIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLTEXPARAMETERIUIVPROC)(GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETTEXPARAMETERIIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTEXPARAMETERIUIVPROC)(GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLCLEARBUFFERIVPROC)(GLenum buffer, GLint drawbuffer, GLint* value)

    ctypedef void (*PFNGLCLEARBUFFERUIVPROC)(GLenum buffer, GLint drawbuffer, GLuint* value)

    ctypedef void (*PFNGLCLEARBUFFERFVPROC)(GLenum buffer, GLint drawbuffer, GLfloat* value)

    ctypedef void (*PFNGLCLEARBUFFERFIPROC)(GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil)

    ctypedef GLubyte* (*PFNGLGETSTRINGIPROC)(GLenum name, GLuint index)

    ctypedef GLboolean (*PFNGLISRENDERBUFFERPROC)(GLuint renderbuffer)

    ctypedef void (*PFNGLBINDRENDERBUFFERPROC)(GLenum target, GLuint renderbuffer)

    ctypedef void (*PFNGLDELETERENDERBUFFERSPROC)(GLsizei n, GLuint* renderbuffers)

    ctypedef void (*PFNGLGENRENDERBUFFERSPROC)(GLsizei n, GLuint* renderbuffers)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEPROC)(GLenum target, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLGETRENDERBUFFERPARAMETERIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISFRAMEBUFFERPROC)(GLuint framebuffer)

    ctypedef void (*PFNGLBINDFRAMEBUFFERPROC)(GLenum target, GLuint framebuffer)

    ctypedef void (*PFNGLDELETEFRAMEBUFFERSPROC)(GLsizei n, GLuint* framebuffers)

    ctypedef void (*PFNGLGENFRAMEBUFFERSPROC)(GLsizei n, GLuint* framebuffers)

    ctypedef GLenum (*PFNGLCHECKFRAMEBUFFERSTATUSPROC)(GLenum target)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE1DPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE2DPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE3DPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)

    ctypedef void (*PFNGLFRAMEBUFFERRENDERBUFFERPROC)(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)

    ctypedef void (*PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC)(GLenum target, GLenum attachment, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGENERATEMIPMAPPROC)(GLenum target)

    ctypedef void (*PFNGLBLITFRAMEBUFFERPROC)(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURELAYERPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)

    ctypedef void* (*PFNGLMAPBUFFERRANGEPROC)(GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access)

    ctypedef void (*PFNGLFLUSHMAPPEDBUFFERRANGEPROC)(GLenum target, GLintptr offset, GLsizeiptr length)

    ctypedef void (*PFNGLBINDVERTEXARRAYPROC)(GLuint array)

    ctypedef void (*PFNGLDELETEVERTEXARRAYSPROC)(GLsizei n, GLuint* arrays)

    ctypedef void (*PFNGLGENVERTEXARRAYSPROC)(GLsizei n, GLuint* arrays)

    ctypedef GLboolean (*PFNGLISVERTEXARRAYPROC)(GLuint array)

    ctypedef void (*PFNGLDRAWARRAYSINSTANCEDPROC)(GLenum mode, GLint first, GLsizei count, GLsizei instancecount)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei instancecount)

    ctypedef void (*PFNGLTEXBUFFERPROC)(GLenum target, GLenum internalformat, GLuint buffer)

    ctypedef void (*PFNGLPRIMITIVERESTARTINDEXPROC)(GLuint index)

    ctypedef void (*PFNGLCOPYBUFFERSUBDATAPROC)(GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)

    ctypedef void (*PFNGLGETUNIFORMINDICESPROC)(GLuint program, GLsizei uniformCount, GLchar** uniformNames, GLuint* uniformIndices)

    ctypedef void (*PFNGLGETACTIVEUNIFORMSIVPROC)(GLuint program, GLsizei uniformCount, GLuint* uniformIndices, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETACTIVEUNIFORMNAMEPROC)(GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName)

    ctypedef GLuint (*PFNGLGETUNIFORMBLOCKINDEXPROC)(GLuint program, GLchar* uniformBlockName)

    ctypedef void (*PFNGLGETACTIVEUNIFORMBLOCKIVPROC)(GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC)(GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName)

    ctypedef void (*PFNGLUNIFORMBLOCKBINDINGPROC)(GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding)

    ctypedef __GLsync* GLsync

    ctypedef khronos_uint64_t GLuint64

    ctypedef khronos_int64_t GLint64

    ctypedef void (*PFNGLDRAWELEMENTSBASEVERTEXPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLint basevertex)

    ctypedef void (*PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, void* indices, GLint basevertex)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei instancecount, GLint basevertex)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC)(GLenum mode, GLsizei* count, GLenum type, void** indices, GLsizei drawcount, GLint* basevertex)

    ctypedef void (*PFNGLPROVOKINGVERTEXPROC)(GLenum mode)

    ctypedef GLsync (*PFNGLFENCESYNCPROC)(GLenum condition, GLbitfield flags)

    ctypedef GLboolean (*PFNGLISSYNCPROC)(GLsync sync)

    ctypedef void (*PFNGLDELETESYNCPROC)(GLsync sync)

    ctypedef GLenum (*PFNGLCLIENTWAITSYNCPROC)(GLsync sync, GLbitfield flags, GLuint64 timeout)

    ctypedef void (*PFNGLWAITSYNCPROC)(GLsync sync, GLbitfield flags, GLuint64 timeout)

    ctypedef void (*PFNGLGETINTEGER64VPROC)(GLenum pname, GLint64* data)

    ctypedef void (*PFNGLGETSYNCIVPROC)(GLsync sync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values)

    ctypedef void (*PFNGLGETINTEGER64I_VPROC)(GLenum target, GLuint index, GLint64* data)

    ctypedef void (*PFNGLGETBUFFERPARAMETERI64VPROC)(GLenum target, GLenum pname, GLint64* params)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level)

    ctypedef void (*PFNGLTEXIMAGE2DMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXIMAGE3DMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLGETMULTISAMPLEFVPROC)(GLenum pname, GLuint index, GLfloat* val)

    ctypedef void (*PFNGLSAMPLEMASKIPROC)(GLuint maskNumber, GLbitfield mask)

    ctypedef void (*PFNGLBINDFRAGDATALOCATIONINDEXEDPROC)(GLuint program, GLuint colorNumber, GLuint index, GLchar* name)

    ctypedef GLint (*PFNGLGETFRAGDATAINDEXPROC)(GLuint program, GLchar* name)

    ctypedef void (*PFNGLGENSAMPLERSPROC)(GLsizei count, GLuint* samplers)

    ctypedef void (*PFNGLDELETESAMPLERSPROC)(GLsizei count, GLuint* samplers)

    ctypedef GLboolean (*PFNGLISSAMPLERPROC)(GLuint sampler)

    ctypedef void (*PFNGLBINDSAMPLERPROC)(GLuint unit, GLuint sampler)

    ctypedef void (*PFNGLSAMPLERPARAMETERIPROC)(GLuint sampler, GLenum pname, GLint param)

    ctypedef void (*PFNGLSAMPLERPARAMETERIVPROC)(GLuint sampler, GLenum pname, GLint* param)

    ctypedef void (*PFNGLSAMPLERPARAMETERFPROC)(GLuint sampler, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLSAMPLERPARAMETERFVPROC)(GLuint sampler, GLenum pname, GLfloat* param)

    ctypedef void (*PFNGLSAMPLERPARAMETERIIVPROC)(GLuint sampler, GLenum pname, GLint* param)

    ctypedef void (*PFNGLSAMPLERPARAMETERIUIVPROC)(GLuint sampler, GLenum pname, GLuint* param)

    ctypedef void (*PFNGLGETSAMPLERPARAMETERIVPROC)(GLuint sampler, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETSAMPLERPARAMETERIIVPROC)(GLuint sampler, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETSAMPLERPARAMETERFVPROC)(GLuint sampler, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETSAMPLERPARAMETERIUIVPROC)(GLuint sampler, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLQUERYCOUNTERPROC)(GLuint id, GLenum target)

    ctypedef void (*PFNGLGETQUERYOBJECTI64VPROC)(GLuint id, GLenum pname, GLint64* params)

    ctypedef void (*PFNGLGETQUERYOBJECTUI64VPROC)(GLuint id, GLenum pname, GLuint64* params)

    ctypedef void (*PFNGLVERTEXATTRIBDIVISORPROC)(GLuint index, GLuint divisor)

    ctypedef void (*PFNGLVERTEXATTRIBP1UIPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint value)

    ctypedef void (*PFNGLVERTEXATTRIBP1UIVPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint* value)

    ctypedef void (*PFNGLVERTEXATTRIBP2UIPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint value)

    ctypedef void (*PFNGLVERTEXATTRIBP2UIVPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint* value)

    ctypedef void (*PFNGLVERTEXATTRIBP3UIPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint value)

    ctypedef void (*PFNGLVERTEXATTRIBP3UIVPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint* value)

    ctypedef void (*PFNGLVERTEXATTRIBP4UIPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint value)

    ctypedef void (*PFNGLVERTEXATTRIBP4UIVPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint* value)

    ctypedef void (*PFNGLVERTEXP2UIPROC)(GLenum type, GLuint value)

    ctypedef void (*PFNGLVERTEXP2UIVPROC)(GLenum type, GLuint* value)

    ctypedef void (*PFNGLVERTEXP3UIPROC)(GLenum type, GLuint value)

    ctypedef void (*PFNGLVERTEXP3UIVPROC)(GLenum type, GLuint* value)

    ctypedef void (*PFNGLVERTEXP4UIPROC)(GLenum type, GLuint value)

    ctypedef void (*PFNGLVERTEXP4UIVPROC)(GLenum type, GLuint* value)

    ctypedef void (*PFNGLTEXCOORDP1UIPROC)(GLenum type, GLuint coords)

    ctypedef void (*PFNGLTEXCOORDP1UIVPROC)(GLenum type, GLuint* coords)

    ctypedef void (*PFNGLTEXCOORDP2UIPROC)(GLenum type, GLuint coords)

    ctypedef void (*PFNGLTEXCOORDP2UIVPROC)(GLenum type, GLuint* coords)

    ctypedef void (*PFNGLTEXCOORDP3UIPROC)(GLenum type, GLuint coords)

    ctypedef void (*PFNGLTEXCOORDP3UIVPROC)(GLenum type, GLuint* coords)

    ctypedef void (*PFNGLTEXCOORDP4UIPROC)(GLenum type, GLuint coords)

    ctypedef void (*PFNGLTEXCOORDP4UIVPROC)(GLenum type, GLuint* coords)

    ctypedef void (*PFNGLMULTITEXCOORDP1UIPROC)(GLenum texture, GLenum type, GLuint coords)

    ctypedef void (*PFNGLMULTITEXCOORDP1UIVPROC)(GLenum texture, GLenum type, GLuint* coords)

    ctypedef void (*PFNGLMULTITEXCOORDP2UIPROC)(GLenum texture, GLenum type, GLuint coords)

    ctypedef void (*PFNGLMULTITEXCOORDP2UIVPROC)(GLenum texture, GLenum type, GLuint* coords)

    ctypedef void (*PFNGLMULTITEXCOORDP3UIPROC)(GLenum texture, GLenum type, GLuint coords)

    ctypedef void (*PFNGLMULTITEXCOORDP3UIVPROC)(GLenum texture, GLenum type, GLuint* coords)

    ctypedef void (*PFNGLMULTITEXCOORDP4UIPROC)(GLenum texture, GLenum type, GLuint coords)

    ctypedef void (*PFNGLMULTITEXCOORDP4UIVPROC)(GLenum texture, GLenum type, GLuint* coords)

    ctypedef void (*PFNGLNORMALP3UIPROC)(GLenum type, GLuint coords)

    ctypedef void (*PFNGLNORMALP3UIVPROC)(GLenum type, GLuint* coords)

    ctypedef void (*PFNGLCOLORP3UIPROC)(GLenum type, GLuint color)

    ctypedef void (*PFNGLCOLORP3UIVPROC)(GLenum type, GLuint* color)

    ctypedef void (*PFNGLCOLORP4UIPROC)(GLenum type, GLuint color)

    ctypedef void (*PFNGLCOLORP4UIVPROC)(GLenum type, GLuint* color)

    ctypedef void (*PFNGLSECONDARYCOLORP3UIPROC)(GLenum type, GLuint color)

    ctypedef void (*PFNGLSECONDARYCOLORP3UIVPROC)(GLenum type, GLuint* color)

    ctypedef void (*PFNGLMINSAMPLESHADINGPROC)(GLfloat value)

    ctypedef void (*PFNGLBLENDEQUATIONIPROC)(GLuint buf, GLenum mode)

    ctypedef void (*PFNGLBLENDEQUATIONSEPARATEIPROC)(GLuint buf, GLenum modeRGB, GLenum modeAlpha)

    ctypedef void (*PFNGLBLENDFUNCIPROC)(GLuint buf, GLenum src, GLenum dst)

    ctypedef void (*PFNGLBLENDFUNCSEPARATEIPROC)(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)

    ctypedef void (*PFNGLDRAWARRAYSINDIRECTPROC)(GLenum mode, void* indirect)

    ctypedef void (*PFNGLDRAWELEMENTSINDIRECTPROC)(GLenum mode, GLenum type, void* indirect)

    ctypedef void (*PFNGLUNIFORM1DPROC)(GLint location, GLdouble x)

    ctypedef void (*PFNGLUNIFORM2DPROC)(GLint location, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLUNIFORM3DPROC)(GLint location, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLUNIFORM4DPROC)(GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLUNIFORM1DVPROC)(GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLUNIFORM2DVPROC)(GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLUNIFORM3DVPROC)(GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLUNIFORM4DVPROC)(GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX2DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX2X3DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX2X4DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3X2DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3X4DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4X2DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4X3DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLGETUNIFORMDVPROC)(GLuint program, GLint location, GLdouble* params)

    ctypedef GLint (*PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC)(GLuint program, GLenum shadertype, GLchar* name)

    ctypedef GLuint (*PFNGLGETSUBROUTINEINDEXPROC)(GLuint program, GLenum shadertype, GLchar* name)

    ctypedef void (*PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC)(GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values)

    ctypedef void (*PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC)(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name)

    ctypedef void (*PFNGLGETACTIVESUBROUTINENAMEPROC)(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name)

    ctypedef void (*PFNGLUNIFORMSUBROUTINESUIVPROC)(GLenum shadertype, GLsizei count, GLuint* indices)

    ctypedef void (*PFNGLGETUNIFORMSUBROUTINEUIVPROC)(GLenum shadertype, GLint location, GLuint* params)

    ctypedef void (*PFNGLGETPROGRAMSTAGEIVPROC)(GLuint program, GLenum shadertype, GLenum pname, GLint* values)

    ctypedef void (*PFNGLPATCHPARAMETERIPROC)(GLenum pname, GLint value)

    ctypedef void (*PFNGLPATCHPARAMETERFVPROC)(GLenum pname, GLfloat* values)

    ctypedef void (*PFNGLBINDTRANSFORMFEEDBACKPROC)(GLenum target, GLuint id)

    ctypedef void (*PFNGLDELETETRANSFORMFEEDBACKSPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLGENTRANSFORMFEEDBACKSPROC)(GLsizei n, GLuint* ids)

    ctypedef GLboolean (*PFNGLISTRANSFORMFEEDBACKPROC)(GLuint id)

    ctypedef void (*PFNGLPAUSETRANSFORMFEEDBACKPROC)()

    ctypedef void (*PFNGLRESUMETRANSFORMFEEDBACKPROC)()

    ctypedef void (*PFNGLDRAWTRANSFORMFEEDBACKPROC)(GLenum mode, GLuint id)

    ctypedef void (*PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC)(GLenum mode, GLuint id, GLuint stream)

    ctypedef void (*PFNGLBEGINQUERYINDEXEDPROC)(GLenum target, GLuint index, GLuint id)

    ctypedef void (*PFNGLENDQUERYINDEXEDPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLGETQUERYINDEXEDIVPROC)(GLenum target, GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLRELEASESHADERCOMPILERPROC)()

    ctypedef void (*PFNGLSHADERBINARYPROC)(GLsizei count, GLuint* shaders, GLenum binaryformat, void* binary, GLsizei length)

    ctypedef void (*PFNGLGETSHADERPRECISIONFORMATPROC)(GLenum shadertype, GLenum precisiontype, GLint* range, GLint* precision)

    ctypedef void (*PFNGLDEPTHRANGEFPROC)(GLfloat n, GLfloat f)

    ctypedef void (*PFNGLCLEARDEPTHFPROC)(GLfloat d)

    ctypedef void (*PFNGLGETPROGRAMBINARYPROC)(GLuint program, GLsizei bufSize, GLsizei* length, GLenum* binaryFormat, void* binary)

    ctypedef void (*PFNGLPROGRAMBINARYPROC)(GLuint program, GLenum binaryFormat, void* binary, GLsizei length)

    ctypedef void (*PFNGLPROGRAMPARAMETERIPROC)(GLuint program, GLenum pname, GLint value)

    ctypedef void (*PFNGLUSEPROGRAMSTAGESPROC)(GLuint pipeline, GLbitfield stages, GLuint program)

    ctypedef void (*PFNGLACTIVESHADERPROGRAMPROC)(GLuint pipeline, GLuint program)

    ctypedef GLuint (*PFNGLCREATESHADERPROGRAMVPROC)(GLenum type, GLsizei count, GLchar** strings)

    ctypedef void (*PFNGLBINDPROGRAMPIPELINEPROC)(GLuint pipeline)

    ctypedef void (*PFNGLDELETEPROGRAMPIPELINESPROC)(GLsizei n, GLuint* pipelines)

    ctypedef void (*PFNGLGENPROGRAMPIPELINESPROC)(GLsizei n, GLuint* pipelines)

    ctypedef GLboolean (*PFNGLISPROGRAMPIPELINEPROC)(GLuint pipeline)

    ctypedef void (*PFNGLGETPROGRAMPIPELINEIVPROC)(GLuint pipeline, GLenum pname, GLint* params)

    ctypedef void (*PFNGLPROGRAMUNIFORM1IPROC)(GLuint program, GLint location, GLint v0)

    ctypedef void (*PFNGLPROGRAMUNIFORM1IVPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1FPROC)(GLuint program, GLint location, GLfloat v0)

    ctypedef void (*PFNGLPROGRAMUNIFORM1FVPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1DPROC)(GLuint program, GLint location, GLdouble v0)

    ctypedef void (*PFNGLPROGRAMUNIFORM1DVPROC)(GLuint program, GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UIPROC)(GLuint program, GLint location, GLuint v0)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UIVPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2IPROC)(GLuint program, GLint location, GLint v0, GLint v1)

    ctypedef void (*PFNGLPROGRAMUNIFORM2IVPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2FPROC)(GLuint program, GLint location, GLfloat v0, GLfloat v1)

    ctypedef void (*PFNGLPROGRAMUNIFORM2FVPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2DPROC)(GLuint program, GLint location, GLdouble v0, GLdouble v1)

    ctypedef void (*PFNGLPROGRAMUNIFORM2DVPROC)(GLuint program, GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UIPROC)(GLuint program, GLint location, GLuint v0, GLuint v1)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UIVPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3IPROC)(GLuint program, GLint location, GLint v0, GLint v1, GLint v2)

    ctypedef void (*PFNGLPROGRAMUNIFORM3IVPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3FPROC)(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2)

    ctypedef void (*PFNGLPROGRAMUNIFORM3FVPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3DPROC)(GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2)

    ctypedef void (*PFNGLPROGRAMUNIFORM3DVPROC)(GLuint program, GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UIPROC)(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UIVPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4IPROC)(GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3)

    ctypedef void (*PFNGLPROGRAMUNIFORM4IVPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4FPROC)(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)

    ctypedef void (*PFNGLPROGRAMUNIFORM4FVPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4DPROC)(GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2, GLdouble v3)

    ctypedef void (*PFNGLPROGRAMUNIFORM4DVPROC)(GLuint program, GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UIPROC)(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UIVPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLVALIDATEPROGRAMPIPELINEPROC)(GLuint pipeline)

    ctypedef void (*PFNGLGETPROGRAMPIPELINEINFOLOGPROC)(GLuint pipeline, GLsizei bufSize, GLsizei* length, GLchar* infoLog)

    ctypedef void (*PFNGLVERTEXATTRIBL1DPROC)(GLuint index, GLdouble x)

    ctypedef void (*PFNGLVERTEXATTRIBL2DPROC)(GLuint index, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLVERTEXATTRIBL3DPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLVERTEXATTRIBL4DPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLVERTEXATTRIBL1DVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBL2DVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBL3DVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBL4DVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBLPOINTERPROC)(GLuint index, GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLGETVERTEXATTRIBLDVPROC)(GLuint index, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLVIEWPORTARRAYVPROC)(GLuint first, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLVIEWPORTINDEXEDFPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h)

    ctypedef void (*PFNGLVIEWPORTINDEXEDFVPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLSCISSORARRAYVPROC)(GLuint first, GLsizei count, GLint* v)

    ctypedef void (*PFNGLSCISSORINDEXEDPROC)(GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLSCISSORINDEXEDVPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLDEPTHRANGEARRAYVPROC)(GLuint first, GLsizei count, GLdouble* v)

    ctypedef void (*PFNGLDEPTHRANGEINDEXEDPROC)(GLuint index, GLdouble n, GLdouble f)

    ctypedef void (*PFNGLGETFLOATI_VPROC)(GLenum target, GLuint index, GLfloat* data)

    ctypedef void (*PFNGLGETDOUBLEI_VPROC)(GLenum target, GLuint index, GLdouble* data)

    ctypedef void (*PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC)(GLenum mode, GLint first, GLsizei count, GLsizei instancecount, GLuint baseinstance)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei instancecount, GLuint baseinstance)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei instancecount, GLint basevertex, GLuint baseinstance)

    ctypedef void (*PFNGLGETINTERNALFORMATIVPROC)(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params)

    ctypedef void (*PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC)(GLuint program, GLuint bufferIndex, GLenum pname, GLint* params)

    ctypedef void (*PFNGLBINDIMAGETEXTUREPROC)(GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format)

    ctypedef void (*PFNGLMEMORYBARRIERPROC)(GLbitfield barriers)

    ctypedef void (*PFNGLTEXSTORAGE1DPROC)(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width)

    ctypedef void (*PFNGLTEXSTORAGE2DPROC)(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLTEXSTORAGE3DPROC)(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC)(GLenum mode, GLuint id, GLsizei instancecount)

    ctypedef void (*PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC)(GLenum mode, GLuint id, GLuint stream, GLsizei instancecount)

    ctypedef void (*GLDEBUGPROC)(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, GLchar* message, void* userParam)

    ctypedef void (*PFNGLCLEARBUFFERDATAPROC)(GLenum target, GLenum internalformat, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLEARBUFFERSUBDATAPROC)(GLenum target, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLDISPATCHCOMPUTEPROC)(GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z)

    ctypedef void (*PFNGLDISPATCHCOMPUTEINDIRECTPROC)(GLintptr indirect)

    ctypedef void (*PFNGLCOPYIMAGESUBDATAPROC)(GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth)

    ctypedef void (*PFNGLFRAMEBUFFERPARAMETERIPROC)(GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLGETFRAMEBUFFERPARAMETERIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETINTERNALFORMATI64VPROC)(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint64* params)

    ctypedef void (*PFNGLINVALIDATETEXSUBIMAGEPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLINVALIDATETEXIMAGEPROC)(GLuint texture, GLint level)

    ctypedef void (*PFNGLINVALIDATEBUFFERSUBDATAPROC)(GLuint buffer, GLintptr offset, GLsizeiptr length)

    ctypedef void (*PFNGLINVALIDATEBUFFERDATAPROC)(GLuint buffer)

    ctypedef void (*PFNGLINVALIDATEFRAMEBUFFERPROC)(GLenum target, GLsizei numAttachments, GLenum* attachments)

    ctypedef void (*PFNGLINVALIDATESUBFRAMEBUFFERPROC)(GLenum target, GLsizei numAttachments, GLenum* attachments, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTPROC)(GLenum mode, void* indirect, GLsizei drawcount, GLsizei stride)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTPROC)(GLenum mode, GLenum type, void* indirect, GLsizei drawcount, GLsizei stride)

    ctypedef void (*PFNGLGETPROGRAMINTERFACEIVPROC)(GLuint program, GLenum programInterface, GLenum pname, GLint* params)

    ctypedef GLuint (*PFNGLGETPROGRAMRESOURCEINDEXPROC)(GLuint program, GLenum programInterface, GLchar* name)

    ctypedef void (*PFNGLGETPROGRAMRESOURCENAMEPROC)(GLuint program, GLenum programInterface, GLuint index, GLsizei bufSize, GLsizei* length, GLchar* name)

    ctypedef void (*PFNGLGETPROGRAMRESOURCEIVPROC)(GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, GLenum* props, GLsizei bufSize, GLsizei* length, GLint* params)

    ctypedef GLint (*PFNGLGETPROGRAMRESOURCELOCATIONPROC)(GLuint program, GLenum programInterface, GLchar* name)

    ctypedef GLint (*PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC)(GLuint program, GLenum programInterface, GLchar* name)

    ctypedef void (*PFNGLSHADERSTORAGEBLOCKBINDINGPROC)(GLuint program, GLuint storageBlockIndex, GLuint storageBlockBinding)

    ctypedef void (*PFNGLTEXBUFFERRANGEPROC)(GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLTEXSTORAGE2DMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXSTORAGE3DMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXTUREVIEWPROC)(GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers)

    ctypedef void (*PFNGLBINDVERTEXBUFFERPROC)(GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride)

    ctypedef void (*PFNGLVERTEXATTRIBFORMATPROC)(GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXATTRIBIFORMATPROC)(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXATTRIBLFORMATPROC)(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXATTRIBBINDINGPROC)(GLuint attribindex, GLuint bindingindex)

    ctypedef void (*PFNGLVERTEXBINDINGDIVISORPROC)(GLuint bindingindex, GLuint divisor)

    ctypedef void (*PFNGLDEBUGMESSAGECONTROLPROC)(GLenum source, GLenum type, GLenum severity, GLsizei count, GLuint* ids, GLboolean enabled)

    ctypedef void (*PFNGLDEBUGMESSAGEINSERTPROC)(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, GLchar* buf)

    ctypedef void (*PFNGLDEBUGMESSAGECALLBACKPROC)(GLDEBUGPROC callback, void* userParam)

    ctypedef GLuint (*PFNGLGETDEBUGMESSAGELOGPROC)(GLuint count, GLsizei bufSize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog)

    ctypedef void (*PFNGLPUSHDEBUGGROUPPROC)(GLenum source, GLuint id, GLsizei length, GLchar* message)

    ctypedef void (*PFNGLPOPDEBUGGROUPPROC)()

    ctypedef void (*PFNGLOBJECTLABELPROC)(GLenum identifier, GLuint name, GLsizei length, GLchar* label)

    ctypedef void (*PFNGLGETOBJECTLABELPROC)(GLenum identifier, GLuint name, GLsizei bufSize, GLsizei* length, GLchar* label)

    ctypedef void (*PFNGLOBJECTPTRLABELPROC)(void* ptr, GLsizei length, GLchar* label)

    ctypedef void (*PFNGLGETOBJECTPTRLABELPROC)(void* ptr, GLsizei bufSize, GLsizei* length, GLchar* label)

    ctypedef void (*PFNGLBUFFERSTORAGEPROC)(GLenum target, GLsizeiptr size, void* data, GLbitfield flags)

    ctypedef void (*PFNGLCLEARTEXIMAGEPROC)(GLuint texture, GLint level, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLEARTEXSUBIMAGEPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLBINDBUFFERSBASEPROC)(GLenum target, GLuint first, GLsizei count, GLuint* buffers)

    ctypedef void (*PFNGLBINDBUFFERSRANGEPROC)(GLenum target, GLuint first, GLsizei count, GLuint* buffers, GLintptr* offsets, GLsizeiptr* sizes)

    ctypedef void (*PFNGLBINDTEXTURESPROC)(GLuint first, GLsizei count, GLuint* textures)

    ctypedef void (*PFNGLBINDSAMPLERSPROC)(GLuint first, GLsizei count, GLuint* samplers)

    ctypedef void (*PFNGLBINDIMAGETEXTURESPROC)(GLuint first, GLsizei count, GLuint* textures)

    ctypedef void (*PFNGLBINDVERTEXBUFFERSPROC)(GLuint first, GLsizei count, GLuint* buffers, GLintptr* offsets, GLsizei* strides)

    ctypedef void (*PFNGLCLIPCONTROLPROC)(GLenum origin, GLenum depth)

    ctypedef void (*PFNGLCREATETRANSFORMFEEDBACKSPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLTRANSFORMFEEDBACKBUFFERBASEPROC)(GLuint xfb, GLuint index, GLuint buffer)

    ctypedef void (*PFNGLTRANSFORMFEEDBACKBUFFERRANGEPROC)(GLuint xfb, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLGETTRANSFORMFEEDBACKIVPROC)(GLuint xfb, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETTRANSFORMFEEDBACKI_VPROC)(GLuint xfb, GLenum pname, GLuint index, GLint* param)

    ctypedef void (*PFNGLGETTRANSFORMFEEDBACKI64_VPROC)(GLuint xfb, GLenum pname, GLuint index, GLint64* param)

    ctypedef void (*PFNGLCREATEBUFFERSPROC)(GLsizei n, GLuint* buffers)

    ctypedef void (*PFNGLNAMEDBUFFERSTORAGEPROC)(GLuint buffer, GLsizeiptr size, void* data, GLbitfield flags)

    ctypedef void (*PFNGLNAMEDBUFFERDATAPROC)(GLuint buffer, GLsizeiptr size, void* data, GLenum usage)

    ctypedef void (*PFNGLNAMEDBUFFERSUBDATAPROC)(GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLCOPYNAMEDBUFFERSUBDATAPROC)(GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)

    ctypedef void (*PFNGLCLEARNAMEDBUFFERDATAPROC)(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLEARNAMEDBUFFERSUBDATAPROC)(GLuint buffer, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, void* data)

    ctypedef void* (*PFNGLMAPNAMEDBUFFERPROC)(GLuint buffer, GLenum access)

    ctypedef void* (*PFNGLMAPNAMEDBUFFERRANGEPROC)(GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access)

    ctypedef GLboolean (*PFNGLUNMAPNAMEDBUFFERPROC)(GLuint buffer)

    ctypedef void (*PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEPROC)(GLuint buffer, GLintptr offset, GLsizeiptr length)

    ctypedef void (*PFNGLGETNAMEDBUFFERPARAMETERIVPROC)(GLuint buffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETNAMEDBUFFERPARAMETERI64VPROC)(GLuint buffer, GLenum pname, GLint64* params)

    ctypedef void (*PFNGLGETNAMEDBUFFERPOINTERVPROC)(GLuint buffer, GLenum pname, void** params)

    ctypedef void (*PFNGLGETNAMEDBUFFERSUBDATAPROC)(GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLCREATEFRAMEBUFFERSPROC)(GLsizei n, GLuint* framebuffers)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERRENDERBUFFERPROC)(GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERPARAMETERIPROC)(GLuint framebuffer, GLenum pname, GLint param)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTUREPROC)(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTURELAYERPROC)(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERDRAWBUFFERPROC)(GLuint framebuffer, GLenum buf)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERDRAWBUFFERSPROC)(GLuint framebuffer, GLsizei n, GLenum* bufs)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERREADBUFFERPROC)(GLuint framebuffer, GLenum src)

    ctypedef void (*PFNGLINVALIDATENAMEDFRAMEBUFFERDATAPROC)(GLuint framebuffer, GLsizei numAttachments, GLenum* attachments)

    ctypedef void (*PFNGLINVALIDATENAMEDFRAMEBUFFERSUBDATAPROC)(GLuint framebuffer, GLsizei numAttachments, GLenum* attachments, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLCLEARNAMEDFRAMEBUFFERIVPROC)(GLuint framebuffer, GLenum buffer, GLint drawbuffer, GLint* value)

    ctypedef void (*PFNGLCLEARNAMEDFRAMEBUFFERUIVPROC)(GLuint framebuffer, GLenum buffer, GLint drawbuffer, GLuint* value)

    ctypedef void (*PFNGLCLEARNAMEDFRAMEBUFFERFVPROC)(GLuint framebuffer, GLenum buffer, GLint drawbuffer, GLfloat* value)

    ctypedef void (*PFNGLCLEARNAMEDFRAMEBUFFERFIPROC)(GLuint framebuffer, GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil)

    ctypedef void (*PFNGLBLITNAMEDFRAMEBUFFERPROC)(GLuint readFramebuffer, GLuint drawFramebuffer, GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

    ctypedef GLenum (*PFNGLCHECKNAMEDFRAMEBUFFERSTATUSPROC)(GLuint framebuffer, GLenum target)

    ctypedef void (*PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVPROC)(GLuint framebuffer, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVPROC)(GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params)

    ctypedef void (*PFNGLCREATERENDERBUFFERSPROC)(GLsizei n, GLuint* renderbuffers)

    ctypedef void (*PFNGLNAMEDRENDERBUFFERSTORAGEPROC)(GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEPROC)(GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLGETNAMEDRENDERBUFFERPARAMETERIVPROC)(GLuint renderbuffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLCREATETEXTURESPROC)(GLenum target, GLsizei n, GLuint* textures)

    ctypedef void (*PFNGLTEXTUREBUFFERPROC)(GLuint texture, GLenum internalformat, GLuint buffer)

    ctypedef void (*PFNGLTEXTUREBUFFERRANGEPROC)(GLuint texture, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLTEXTURESTORAGE1DPROC)(GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width)

    ctypedef void (*PFNGLTEXTURESTORAGE2DPROC)(GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLTEXTURESTORAGE3DPROC)(GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLTEXTURESTORAGE2DMULTISAMPLEPROC)(GLuint texture, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXTURESTORAGE3DMULTISAMPLEPROC)(GLuint texture, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXTURESUBIMAGE1DPROC)(GLuint texture, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTURESUBIMAGE2DPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTURESUBIMAGE3DPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLCOMPRESSEDTEXTURESUBIMAGE1DPROC)(GLuint texture, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXTURESUBIMAGE2DPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXTURESUBIMAGE3DPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOPYTEXTURESUBIMAGE1DPROC)(GLuint texture, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYTEXTURESUBIMAGE2DPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLCOPYTEXTURESUBIMAGE3DPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLTEXTUREPARAMETERFPROC)(GLuint texture, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLTEXTUREPARAMETERFVPROC)(GLuint texture, GLenum pname, GLfloat* param)

    ctypedef void (*PFNGLTEXTUREPARAMETERIPROC)(GLuint texture, GLenum pname, GLint param)

    ctypedef void (*PFNGLTEXTUREPARAMETERIIVPROC)(GLuint texture, GLenum pname, GLint* params)

    ctypedef void (*PFNGLTEXTUREPARAMETERIUIVPROC)(GLuint texture, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLTEXTUREPARAMETERIVPROC)(GLuint texture, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGENERATETEXTUREMIPMAPPROC)(GLuint texture)

    ctypedef void (*PFNGLBINDTEXTUREUNITPROC)(GLuint unit, GLuint texture)

    ctypedef void (*PFNGLGETTEXTUREIMAGEPROC)(GLuint texture, GLint level, GLenum format, GLenum type, GLsizei bufSize, void* pixels)

    ctypedef void (*PFNGLGETCOMPRESSEDTEXTUREIMAGEPROC)(GLuint texture, GLint level, GLsizei bufSize, void* pixels)

    ctypedef void (*PFNGLGETTEXTURELEVELPARAMETERFVPROC)(GLuint texture, GLint level, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETTEXTURELEVELPARAMETERIVPROC)(GLuint texture, GLint level, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERFVPROC)(GLuint texture, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERIIVPROC)(GLuint texture, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERIUIVPROC)(GLuint texture, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERIVPROC)(GLuint texture, GLenum pname, GLint* params)

    ctypedef void (*PFNGLCREATEVERTEXARRAYSPROC)(GLsizei n, GLuint* arrays)

    ctypedef void (*PFNGLDISABLEVERTEXARRAYATTRIBPROC)(GLuint vaobj, GLuint index)

    ctypedef void (*PFNGLENABLEVERTEXARRAYATTRIBPROC)(GLuint vaobj, GLuint index)

    ctypedef void (*PFNGLVERTEXARRAYELEMENTBUFFERPROC)(GLuint vaobj, GLuint buffer)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXBUFFERPROC)(GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXBUFFERSPROC)(GLuint vaobj, GLuint first, GLsizei count, GLuint* buffers, GLintptr* offsets, GLsizei* strides)

    ctypedef void (*PFNGLVERTEXARRAYATTRIBBINDINGPROC)(GLuint vaobj, GLuint attribindex, GLuint bindingindex)

    ctypedef void (*PFNGLVERTEXARRAYATTRIBFORMATPROC)(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXARRAYATTRIBIFORMATPROC)(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXARRAYATTRIBLFORMATPROC)(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXARRAYBINDINGDIVISORPROC)(GLuint vaobj, GLuint bindingindex, GLuint divisor)

    ctypedef void (*PFNGLGETVERTEXARRAYIVPROC)(GLuint vaobj, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETVERTEXARRAYINDEXEDIVPROC)(GLuint vaobj, GLuint index, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETVERTEXARRAYINDEXED64IVPROC)(GLuint vaobj, GLuint index, GLenum pname, GLint64* param)

    ctypedef void (*PFNGLCREATESAMPLERSPROC)(GLsizei n, GLuint* samplers)

    ctypedef void (*PFNGLCREATEPROGRAMPIPELINESPROC)(GLsizei n, GLuint* pipelines)

    ctypedef void (*PFNGLCREATEQUERIESPROC)(GLenum target, GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLGETQUERYBUFFEROBJECTI64VPROC)(GLuint id, GLuint buffer, GLenum pname, GLintptr offset)

    ctypedef void (*PFNGLGETQUERYBUFFEROBJECTIVPROC)(GLuint id, GLuint buffer, GLenum pname, GLintptr offset)

    ctypedef void (*PFNGLGETQUERYBUFFEROBJECTUI64VPROC)(GLuint id, GLuint buffer, GLenum pname, GLintptr offset)

    ctypedef void (*PFNGLGETQUERYBUFFEROBJECTUIVPROC)(GLuint id, GLuint buffer, GLenum pname, GLintptr offset)

    ctypedef void (*PFNGLMEMORYBARRIERBYREGIONPROC)(GLbitfield barriers)

    ctypedef void (*PFNGLGETTEXTURESUBIMAGEPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLsizei bufSize, void* pixels)

    ctypedef void (*PFNGLGETCOMPRESSEDTEXTURESUBIMAGEPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei bufSize, void* pixels)

    ctypedef GLenum (*PFNGLGETGRAPHICSRESETSTATUSPROC)()

    ctypedef void (*PFNGLGETNCOMPRESSEDTEXIMAGEPROC)(GLenum target, GLint lod, GLsizei bufSize, void* pixels)

    ctypedef void (*PFNGLGETNTEXIMAGEPROC)(GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, void* pixels)

    ctypedef void (*PFNGLGETNUNIFORMDVPROC)(GLuint program, GLint location, GLsizei bufSize, GLdouble* params)

    ctypedef void (*PFNGLGETNUNIFORMFVPROC)(GLuint program, GLint location, GLsizei bufSize, GLfloat* params)

    ctypedef void (*PFNGLGETNUNIFORMIVPROC)(GLuint program, GLint location, GLsizei bufSize, GLint* params)

    ctypedef void (*PFNGLGETNUNIFORMUIVPROC)(GLuint program, GLint location, GLsizei bufSize, GLuint* params)

    ctypedef void (*PFNGLREADNPIXELSPROC)(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, void* data)

    ctypedef void (*PFNGLGETNMAPDVPROC)(GLenum target, GLenum query, GLsizei bufSize, GLdouble* v)

    ctypedef void (*PFNGLGETNMAPFVPROC)(GLenum target, GLenum query, GLsizei bufSize, GLfloat* v)

    ctypedef void (*PFNGLGETNMAPIVPROC)(GLenum target, GLenum query, GLsizei bufSize, GLint* v)

    ctypedef void (*PFNGLGETNPIXELMAPFVPROC)(GLenum map, GLsizei bufSize, GLfloat* values)

    ctypedef void (*PFNGLGETNPIXELMAPUIVPROC)(GLenum map, GLsizei bufSize, GLuint* values)

    ctypedef void (*PFNGLGETNPIXELMAPUSVPROC)(GLenum map, GLsizei bufSize, GLushort* values)

    ctypedef void (*PFNGLGETNPOLYGONSTIPPLEPROC)(GLsizei bufSize, GLubyte* pattern)

    ctypedef void (*PFNGLGETNCOLORTABLEPROC)(GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* table)

    ctypedef void (*PFNGLGETNCONVOLUTIONFILTERPROC)(GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* image)

    ctypedef void (*PFNGLGETNSEPARABLEFILTERPROC)(GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, void* row, GLsizei columnBufSize, void* column, void* span)

    ctypedef void (*PFNGLGETNHISTOGRAMPROC)(GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values)

    ctypedef void (*PFNGLGETNMINMAXPROC)(GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values)

    ctypedef void (*PFNGLTEXTUREBARRIERPROC)()

    ctypedef void (*PFNGLSPECIALIZESHADERPROC)(GLuint shader, GLchar* pEntryPoint, GLuint numSpecializationConstants, GLuint* pConstantIndex, GLuint* pConstantValue)

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTCOUNTPROC)(GLenum mode, void* indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTPROC)(GLenum mode, GLenum type, void* indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride)

    ctypedef void (*PFNGLPOLYGONOFFSETCLAMPPROC)(GLfloat factor, GLfloat units, GLfloat clamp)

    ctypedef void (*PFNGLPRIMITIVEBOUNDINGBOXARBPROC)(GLfloat minX, GLfloat minY, GLfloat minZ, GLfloat minW, GLfloat maxX, GLfloat maxY, GLfloat maxZ, GLfloat maxW)

    ctypedef khronos_uint64_t GLuint64EXT

    ctypedef GLuint64 (*PFNGLGETTEXTUREHANDLEARBPROC)(GLuint texture)

    ctypedef GLuint64 (*PFNGLGETTEXTURESAMPLERHANDLEARBPROC)(GLuint texture, GLuint sampler)

    ctypedef void (*PFNGLMAKETEXTUREHANDLERESIDENTARBPROC)(GLuint64 handle)

    ctypedef void (*PFNGLMAKETEXTUREHANDLENONRESIDENTARBPROC)(GLuint64 handle)

    ctypedef GLuint64 (*PFNGLGETIMAGEHANDLEARBPROC)(GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format)

    ctypedef void (*PFNGLMAKEIMAGEHANDLERESIDENTARBPROC)(GLuint64 handle, GLenum access)

    ctypedef void (*PFNGLMAKEIMAGEHANDLENONRESIDENTARBPROC)(GLuint64 handle)

    ctypedef void (*PFNGLUNIFORMHANDLEUI64ARBPROC)(GLint location, GLuint64 value)

    ctypedef void (*PFNGLUNIFORMHANDLEUI64VARBPROC)(GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMHANDLEUI64ARBPROC)(GLuint program, GLint location, GLuint64 value)

    ctypedef void (*PFNGLPROGRAMUNIFORMHANDLEUI64VARBPROC)(GLuint program, GLint location, GLsizei count, GLuint64* values)

    ctypedef GLboolean (*PFNGLISTEXTUREHANDLERESIDENTARBPROC)(GLuint64 handle)

    ctypedef GLboolean (*PFNGLISIMAGEHANDLERESIDENTARBPROC)(GLuint64 handle)

    ctypedef void (*PFNGLVERTEXATTRIBL1UI64ARBPROC)(GLuint index, GLuint64EXT x)

    ctypedef void (*PFNGLVERTEXATTRIBL1UI64VARBPROC)(GLuint index, GLuint64EXT* v)

    ctypedef void (*PFNGLGETVERTEXATTRIBLUI64VARBPROC)(GLuint index, GLenum pname, GLuint64EXT* params)

    cdef struct _cl_context

    cdef struct _cl_event

    ctypedef GLsync (*PFNGLCREATESYNCFROMCLEVENTARBPROC)(_cl_context* context, _cl_event* event, GLbitfield flags)

    ctypedef void (*PFNGLCLAMPCOLORARBPROC)(GLenum target, GLenum clamp)

    ctypedef void (*PFNGLDISPATCHCOMPUTEGROUPSIZEARBPROC)(GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z, GLuint group_size_x, GLuint group_size_y, GLuint group_size_z)

    ctypedef void (*GLDEBUGPROCARB)(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, GLchar* message, void* userParam)

    ctypedef void (*PFNGLDEBUGMESSAGECONTROLARBPROC)(GLenum source, GLenum type, GLenum severity, GLsizei count, GLuint* ids, GLboolean enabled)

    ctypedef void (*PFNGLDEBUGMESSAGEINSERTARBPROC)(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, GLchar* buf)

    ctypedef void (*PFNGLDEBUGMESSAGECALLBACKARBPROC)(GLDEBUGPROCARB callback, void* userParam)

    ctypedef GLuint (*PFNGLGETDEBUGMESSAGELOGARBPROC)(GLuint count, GLsizei bufSize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog)

    ctypedef void (*PFNGLDRAWBUFFERSARBPROC)(GLsizei n, GLenum* bufs)

    ctypedef void (*PFNGLBLENDEQUATIONIARBPROC)(GLuint buf, GLenum mode)

    ctypedef void (*PFNGLBLENDEQUATIONSEPARATEIARBPROC)(GLuint buf, GLenum modeRGB, GLenum modeAlpha)

    ctypedef void (*PFNGLBLENDFUNCIARBPROC)(GLuint buf, GLenum src, GLenum dst)

    ctypedef void (*PFNGLBLENDFUNCSEPARATEIARBPROC)(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)

    ctypedef void (*PFNGLDRAWARRAYSINSTANCEDARBPROC)(GLenum mode, GLint first, GLsizei count, GLsizei primcount)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDARBPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei primcount)

    ctypedef void (*PFNGLPROGRAMSTRINGARBPROC)(GLenum target, GLenum format, GLsizei len, void* string)

    ctypedef void (*PFNGLBINDPROGRAMARBPROC)(GLenum target, GLuint program)

    ctypedef void (*PFNGLDELETEPROGRAMSARBPROC)(GLsizei n, GLuint* programs)

    ctypedef void (*PFNGLGENPROGRAMSARBPROC)(GLsizei n, GLuint* programs)

    ctypedef void (*PFNGLPROGRAMENVPARAMETER4DARBPROC)(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLPROGRAMENVPARAMETER4DVARBPROC)(GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLPROGRAMENVPARAMETER4FARBPROC)(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLPROGRAMENVPARAMETER4FVARBPROC)(GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETER4DARBPROC)(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETER4DVARBPROC)(GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETER4FARBPROC)(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETER4FVARBPROC)(GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLGETPROGRAMENVPARAMETERDVARBPROC)(GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLGETPROGRAMENVPARAMETERFVARBPROC)(GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC)(GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC)(GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLGETPROGRAMIVARBPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETPROGRAMSTRINGARBPROC)(GLenum target, GLenum pname, void* string)

    ctypedef GLboolean (*PFNGLISPROGRAMARBPROC)(GLuint program)

    ctypedef void (*PFNGLPROGRAMPARAMETERIARBPROC)(GLuint program, GLenum pname, GLint value)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREARBPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURELAYERARBPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREFACEARBPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face)

    ctypedef void (*PFNGLSPECIALIZESHADERARBPROC)(GLuint shader, GLchar* pEntryPoint, GLuint numSpecializationConstants, GLuint* pConstantIndex, GLuint* pConstantValue)

    ctypedef void (*PFNGLUNIFORM1I64ARBPROC)(GLint location, GLint64 x)

    ctypedef void (*PFNGLUNIFORM2I64ARBPROC)(GLint location, GLint64 x, GLint64 y)

    ctypedef void (*PFNGLUNIFORM3I64ARBPROC)(GLint location, GLint64 x, GLint64 y, GLint64 z)

    ctypedef void (*PFNGLUNIFORM4I64ARBPROC)(GLint location, GLint64 x, GLint64 y, GLint64 z, GLint64 w)

    ctypedef void (*PFNGLUNIFORM1I64VARBPROC)(GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLUNIFORM2I64VARBPROC)(GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLUNIFORM3I64VARBPROC)(GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLUNIFORM4I64VARBPROC)(GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLUNIFORM1UI64ARBPROC)(GLint location, GLuint64 x)

    ctypedef void (*PFNGLUNIFORM2UI64ARBPROC)(GLint location, GLuint64 x, GLuint64 y)

    ctypedef void (*PFNGLUNIFORM3UI64ARBPROC)(GLint location, GLuint64 x, GLuint64 y, GLuint64 z)

    ctypedef void (*PFNGLUNIFORM4UI64ARBPROC)(GLint location, GLuint64 x, GLuint64 y, GLuint64 z, GLuint64 w)

    ctypedef void (*PFNGLUNIFORM1UI64VARBPROC)(GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLUNIFORM2UI64VARBPROC)(GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLUNIFORM3UI64VARBPROC)(GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLUNIFORM4UI64VARBPROC)(GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLGETUNIFORMI64VARBPROC)(GLuint program, GLint location, GLint64* params)

    ctypedef void (*PFNGLGETUNIFORMUI64VARBPROC)(GLuint program, GLint location, GLuint64* params)

    ctypedef void (*PFNGLGETNUNIFORMI64VARBPROC)(GLuint program, GLint location, GLsizei bufSize, GLint64* params)

    ctypedef void (*PFNGLGETNUNIFORMUI64VARBPROC)(GLuint program, GLint location, GLsizei bufSize, GLuint64* params)

    ctypedef void (*PFNGLPROGRAMUNIFORM1I64ARBPROC)(GLuint program, GLint location, GLint64 x)

    ctypedef void (*PFNGLPROGRAMUNIFORM2I64ARBPROC)(GLuint program, GLint location, GLint64 x, GLint64 y)

    ctypedef void (*PFNGLPROGRAMUNIFORM3I64ARBPROC)(GLuint program, GLint location, GLint64 x, GLint64 y, GLint64 z)

    ctypedef void (*PFNGLPROGRAMUNIFORM4I64ARBPROC)(GLuint program, GLint location, GLint64 x, GLint64 y, GLint64 z, GLint64 w)

    ctypedef void (*PFNGLPROGRAMUNIFORM1I64VARBPROC)(GLuint program, GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2I64VARBPROC)(GLuint program, GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3I64VARBPROC)(GLuint program, GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4I64VARBPROC)(GLuint program, GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UI64ARBPROC)(GLuint program, GLint location, GLuint64 x)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UI64ARBPROC)(GLuint program, GLint location, GLuint64 x, GLuint64 y)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UI64ARBPROC)(GLuint program, GLint location, GLuint64 x, GLuint64 y, GLuint64 z)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UI64ARBPROC)(GLuint program, GLint location, GLuint64 x, GLuint64 y, GLuint64 z, GLuint64 w)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UI64VARBPROC)(GLuint program, GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UI64VARBPROC)(GLuint program, GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UI64VARBPROC)(GLuint program, GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UI64VARBPROC)(GLuint program, GLint location, GLsizei count, GLuint64* value)

    ctypedef khronos_uint16_t GLhalfARB

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTCOUNTARBPROC)(GLenum mode, void* indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTARBPROC)(GLenum mode, GLenum type, void* indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride)

    ctypedef void (*PFNGLVERTEXATTRIBDIVISORARBPROC)(GLuint index, GLuint divisor)

    ctypedef void (*PFNGLCURRENTPALETTEMATRIXARBPROC)(GLint index)

    ctypedef void (*PFNGLMATRIXINDEXUBVARBPROC)(GLint size, GLubyte* indices)

    ctypedef void (*PFNGLMATRIXINDEXUSVARBPROC)(GLint size, GLushort* indices)

    ctypedef void (*PFNGLMATRIXINDEXUIVARBPROC)(GLint size, GLuint* indices)

    ctypedef void (*PFNGLMATRIXINDEXPOINTERARBPROC)(GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLSAMPLECOVERAGEARBPROC)(GLfloat value, GLboolean invert)

    ctypedef void (*PFNGLGENQUERIESARBPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLDELETEQUERIESARBPROC)(GLsizei n, GLuint* ids)

    ctypedef GLboolean (*PFNGLISQUERYARBPROC)(GLuint id)

    ctypedef void (*PFNGLBEGINQUERYARBPROC)(GLenum target, GLuint id)

    ctypedef void (*PFNGLENDQUERYARBPROC)(GLenum target)

    ctypedef void (*PFNGLGETQUERYIVARBPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETQUERYOBJECTIVARBPROC)(GLuint id, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETQUERYOBJECTUIVARBPROC)(GLuint id, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLMAXSHADERCOMPILERTHREADSARBPROC)(GLuint count)

    ctypedef void (*PFNGLPOINTPARAMETERFARBPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLPOINTPARAMETERFVARBPROC)(GLenum pname, GLfloat* params)

    ctypedef GLenum (*PFNGLGETGRAPHICSRESETSTATUSARBPROC)()

    ctypedef void (*PFNGLGETNTEXIMAGEARBPROC)(GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, void* img)

    ctypedef void (*PFNGLREADNPIXELSARBPROC)(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, void* data)

    ctypedef void (*PFNGLGETNCOMPRESSEDTEXIMAGEARBPROC)(GLenum target, GLint lod, GLsizei bufSize, void* img)

    ctypedef void (*PFNGLGETNUNIFORMFVARBPROC)(GLuint program, GLint location, GLsizei bufSize, GLfloat* params)

    ctypedef void (*PFNGLGETNUNIFORMIVARBPROC)(GLuint program, GLint location, GLsizei bufSize, GLint* params)

    ctypedef void (*PFNGLGETNUNIFORMUIVARBPROC)(GLuint program, GLint location, GLsizei bufSize, GLuint* params)

    ctypedef void (*PFNGLGETNUNIFORMDVARBPROC)(GLuint program, GLint location, GLsizei bufSize, GLdouble* params)

    ctypedef void (*PFNGLGETNMAPDVARBPROC)(GLenum target, GLenum query, GLsizei bufSize, GLdouble* v)

    ctypedef void (*PFNGLGETNMAPFVARBPROC)(GLenum target, GLenum query, GLsizei bufSize, GLfloat* v)

    ctypedef void (*PFNGLGETNMAPIVARBPROC)(GLenum target, GLenum query, GLsizei bufSize, GLint* v)

    ctypedef void (*PFNGLGETNPIXELMAPFVARBPROC)(GLenum map, GLsizei bufSize, GLfloat* values)

    ctypedef void (*PFNGLGETNPIXELMAPUIVARBPROC)(GLenum map, GLsizei bufSize, GLuint* values)

    ctypedef void (*PFNGLGETNPIXELMAPUSVARBPROC)(GLenum map, GLsizei bufSize, GLushort* values)

    ctypedef void (*PFNGLGETNPOLYGONSTIPPLEARBPROC)(GLsizei bufSize, GLubyte* pattern)

    ctypedef void (*PFNGLGETNCOLORTABLEARBPROC)(GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* table)

    ctypedef void (*PFNGLGETNCONVOLUTIONFILTERARBPROC)(GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* image)

    ctypedef void (*PFNGLGETNSEPARABLEFILTERARBPROC)(GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, void* row, GLsizei columnBufSize, void* column, void* span)

    ctypedef void (*PFNGLGETNHISTOGRAMARBPROC)(GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values)

    ctypedef void (*PFNGLGETNMINMAXARBPROC)(GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values)

    ctypedef void (*PFNGLFRAMEBUFFERSAMPLELOCATIONSFVARBPROC)(GLenum target, GLuint start, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERSAMPLELOCATIONSFVARBPROC)(GLuint framebuffer, GLuint start, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLEVALUATEDEPTHVALUESARBPROC)()

    ctypedef void (*PFNGLMINSAMPLESHADINGARBPROC)(GLfloat value)

    ctypedef unsigned int GLhandleARB

    ctypedef char GLcharARB

    ctypedef void (*PFNGLDELETEOBJECTARBPROC)(GLhandleARB obj)

    ctypedef GLhandleARB (*PFNGLGETHANDLEARBPROC)(GLenum pname)

    ctypedef void (*PFNGLDETACHOBJECTARBPROC)(GLhandleARB containerObj, GLhandleARB attachedObj)

    ctypedef GLhandleARB (*PFNGLCREATESHADEROBJECTARBPROC)(GLenum shaderType)

    ctypedef void (*PFNGLSHADERSOURCEARBPROC)(GLhandleARB shaderObj, GLsizei count, GLcharARB** string, GLint* length)

    ctypedef void (*PFNGLCOMPILESHADERARBPROC)(GLhandleARB shaderObj)

    ctypedef GLhandleARB (*PFNGLCREATEPROGRAMOBJECTARBPROC)()

    ctypedef void (*PFNGLATTACHOBJECTARBPROC)(GLhandleARB containerObj, GLhandleARB obj)

    ctypedef void (*PFNGLLINKPROGRAMARBPROC)(GLhandleARB programObj)

    ctypedef void (*PFNGLUSEPROGRAMOBJECTARBPROC)(GLhandleARB programObj)

    ctypedef void (*PFNGLVALIDATEPROGRAMARBPROC)(GLhandleARB programObj)

    ctypedef void (*PFNGLUNIFORM1FARBPROC)(GLint location, GLfloat v0)

    ctypedef void (*PFNGLUNIFORM2FARBPROC)(GLint location, GLfloat v0, GLfloat v1)

    ctypedef void (*PFNGLUNIFORM3FARBPROC)(GLint location, GLfloat v0, GLfloat v1, GLfloat v2)

    ctypedef void (*PFNGLUNIFORM4FARBPROC)(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)

    ctypedef void (*PFNGLUNIFORM1IARBPROC)(GLint location, GLint v0)

    ctypedef void (*PFNGLUNIFORM2IARBPROC)(GLint location, GLint v0, GLint v1)

    ctypedef void (*PFNGLUNIFORM3IARBPROC)(GLint location, GLint v0, GLint v1, GLint v2)

    ctypedef void (*PFNGLUNIFORM4IARBPROC)(GLint location, GLint v0, GLint v1, GLint v2, GLint v3)

    ctypedef void (*PFNGLUNIFORM1FVARBPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM2FVARBPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM3FVARBPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM4FVARBPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM1IVARBPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORM2IVARBPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORM3IVARBPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORM4IVARBPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORMMATRIX2FVARBPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3FVARBPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4FVARBPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLGETOBJECTPARAMETERFVARBPROC)(GLhandleARB obj, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETOBJECTPARAMETERIVARBPROC)(GLhandleARB obj, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETINFOLOGARBPROC)(GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* infoLog)

    ctypedef void (*PFNGLGETATTACHEDOBJECTSARBPROC)(GLhandleARB containerObj, GLsizei maxCount, GLsizei* count, GLhandleARB* obj)

    ctypedef GLint (*PFNGLGETUNIFORMLOCATIONARBPROC)(GLhandleARB programObj, GLcharARB* name)

    ctypedef void (*PFNGLGETACTIVEUNIFORMARBPROC)(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name)

    ctypedef void (*PFNGLGETUNIFORMFVARBPROC)(GLhandleARB programObj, GLint location, GLfloat* params)

    ctypedef void (*PFNGLGETUNIFORMIVARBPROC)(GLhandleARB programObj, GLint location, GLint* params)

    ctypedef void (*PFNGLGETSHADERSOURCEARBPROC)(GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* source)

    ctypedef void (*PFNGLNAMEDSTRINGARBPROC)(GLenum type, GLint namelen, GLchar* name, GLint stringlen, GLchar* string)

    ctypedef void (*PFNGLDELETENAMEDSTRINGARBPROC)(GLint namelen, GLchar* name)

    ctypedef void (*PFNGLCOMPILESHADERINCLUDEARBPROC)(GLuint shader, GLsizei count, GLchar** path, GLint* length)

    ctypedef GLboolean (*PFNGLISNAMEDSTRINGARBPROC)(GLint namelen, GLchar* name)

    ctypedef void (*PFNGLGETNAMEDSTRINGARBPROC)(GLint namelen, GLchar* name, GLsizei bufSize, GLint* stringlen, GLchar* string)

    ctypedef void (*PFNGLGETNAMEDSTRINGIVARBPROC)(GLint namelen, GLchar* name, GLenum pname, GLint* params)

    ctypedef void (*PFNGLBUFFERPAGECOMMITMENTARBPROC)(GLenum target, GLintptr offset, GLsizeiptr size, GLboolean commit)

    ctypedef void (*PFNGLNAMEDBUFFERPAGECOMMITMENTEXTPROC)(GLuint buffer, GLintptr offset, GLsizeiptr size, GLboolean commit)

    ctypedef void (*PFNGLNAMEDBUFFERPAGECOMMITMENTARBPROC)(GLuint buffer, GLintptr offset, GLsizeiptr size, GLboolean commit)

    ctypedef void (*PFNGLTEXPAGECOMMITMENTARBPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLboolean commit)

    ctypedef void (*PFNGLTEXBUFFERARBPROC)(GLenum target, GLenum internalformat, GLuint buffer)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE3DARBPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE2DARBPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE1DARBPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC)(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLGETCOMPRESSEDTEXIMAGEARBPROC)(GLenum target, GLint level, void* img)

    ctypedef void (*PFNGLLOADTRANSPOSEMATRIXFARBPROC)(GLfloat* m)

    ctypedef void (*PFNGLLOADTRANSPOSEMATRIXDARBPROC)(GLdouble* m)

    ctypedef void (*PFNGLMULTTRANSPOSEMATRIXFARBPROC)(GLfloat* m)

    ctypedef void (*PFNGLMULTTRANSPOSEMATRIXDARBPROC)(GLdouble* m)

    ctypedef void (*PFNGLWEIGHTBVARBPROC)(GLint size, GLbyte* weights)

    ctypedef void (*PFNGLWEIGHTSVARBPROC)(GLint size, GLshort* weights)

    ctypedef void (*PFNGLWEIGHTIVARBPROC)(GLint size, GLint* weights)

    ctypedef void (*PFNGLWEIGHTFVARBPROC)(GLint size, GLfloat* weights)

    ctypedef void (*PFNGLWEIGHTDVARBPROC)(GLint size, GLdouble* weights)

    ctypedef void (*PFNGLWEIGHTUBVARBPROC)(GLint size, GLubyte* weights)

    ctypedef void (*PFNGLWEIGHTUSVARBPROC)(GLint size, GLushort* weights)

    ctypedef void (*PFNGLWEIGHTUIVARBPROC)(GLint size, GLuint* weights)

    ctypedef void (*PFNGLWEIGHTPOINTERARBPROC)(GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLVERTEXBLENDARBPROC)(GLint count)

    ctypedef khronos_ssize_t GLsizeiptrARB

    ctypedef khronos_intptr_t GLintptrARB

    ctypedef void (*PFNGLBINDBUFFERARBPROC)(GLenum target, GLuint buffer)

    ctypedef void (*PFNGLDELETEBUFFERSARBPROC)(GLsizei n, GLuint* buffers)

    ctypedef void (*PFNGLGENBUFFERSARBPROC)(GLsizei n, GLuint* buffers)

    ctypedef GLboolean (*PFNGLISBUFFERARBPROC)(GLuint buffer)

    ctypedef void (*PFNGLBUFFERDATAARBPROC)(GLenum target, GLsizeiptrARB size, void* data, GLenum usage)

    ctypedef void (*PFNGLBUFFERSUBDATAARBPROC)(GLenum target, GLintptrARB offset, GLsizeiptrARB size, void* data)

    ctypedef void (*PFNGLGETBUFFERSUBDATAARBPROC)(GLenum target, GLintptrARB offset, GLsizeiptrARB size, void* data)

    ctypedef void* (*PFNGLMAPBUFFERARBPROC)(GLenum target, GLenum access)

    ctypedef GLboolean (*PFNGLUNMAPBUFFERARBPROC)(GLenum target)

    ctypedef void (*PFNGLGETBUFFERPARAMETERIVARBPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETBUFFERPOINTERVARBPROC)(GLenum target, GLenum pname, void** params)

    ctypedef void (*PFNGLVERTEXATTRIB1DARBPROC)(GLuint index, GLdouble x)

    ctypedef void (*PFNGLVERTEXATTRIB1DVARBPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIB1FARBPROC)(GLuint index, GLfloat x)

    ctypedef void (*PFNGLVERTEXATTRIB1FVARBPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIB1SARBPROC)(GLuint index, GLshort x)

    ctypedef void (*PFNGLVERTEXATTRIB1SVARBPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB2DARBPROC)(GLuint index, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLVERTEXATTRIB2DVARBPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIB2FARBPROC)(GLuint index, GLfloat x, GLfloat y)

    ctypedef void (*PFNGLVERTEXATTRIB2FVARBPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIB2SARBPROC)(GLuint index, GLshort x, GLshort y)

    ctypedef void (*PFNGLVERTEXATTRIB2SVARBPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB3DARBPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLVERTEXATTRIB3DVARBPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIB3FARBPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLVERTEXATTRIB3FVARBPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIB3SARBPROC)(GLuint index, GLshort x, GLshort y, GLshort z)

    ctypedef void (*PFNGLVERTEXATTRIB3SVARBPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB4NBVARBPROC)(GLuint index, GLbyte* v)

    ctypedef void (*PFNGLVERTEXATTRIB4NIVARBPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIB4NSVARBPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB4NUBARBPROC)(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)

    ctypedef void (*PFNGLVERTEXATTRIB4NUBVARBPROC)(GLuint index, GLubyte* v)

    ctypedef void (*PFNGLVERTEXATTRIB4NUIVARBPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIB4NUSVARBPROC)(GLuint index, GLushort* v)

    ctypedef void (*PFNGLVERTEXATTRIB4BVARBPROC)(GLuint index, GLbyte* v)

    ctypedef void (*PFNGLVERTEXATTRIB4DARBPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLVERTEXATTRIB4DVARBPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIB4FARBPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLVERTEXATTRIB4FVARBPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIB4IVARBPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIB4SARBPROC)(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)

    ctypedef void (*PFNGLVERTEXATTRIB4SVARBPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB4UBVARBPROC)(GLuint index, GLubyte* v)

    ctypedef void (*PFNGLVERTEXATTRIB4UIVARBPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIB4USVARBPROC)(GLuint index, GLushort* v)

    ctypedef void (*PFNGLVERTEXATTRIBPOINTERARBPROC)(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLENABLEVERTEXATTRIBARRAYARBPROC)(GLuint index)

    ctypedef void (*PFNGLDISABLEVERTEXATTRIBARRAYARBPROC)(GLuint index)

    ctypedef void (*PFNGLGETVERTEXATTRIBDVARBPROC)(GLuint index, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBFVARBPROC)(GLuint index, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBIVARBPROC)(GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBPOINTERVARBPROC)(GLuint index, GLenum pname, void** pointer)

    ctypedef void (*PFNGLBINDATTRIBLOCATIONARBPROC)(GLhandleARB programObj, GLuint index, GLcharARB* name)

    ctypedef void (*PFNGLGETACTIVEATTRIBARBPROC)(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name)

    ctypedef GLint (*PFNGLGETATTRIBLOCATIONARBPROC)(GLhandleARB programObj, GLcharARB* name)

    ctypedef void (*PFNGLWINDOWPOS2DARBPROC)(GLdouble x, GLdouble y)

    ctypedef void (*PFNGLWINDOWPOS2DVARBPROC)(GLdouble* v)

    ctypedef void (*PFNGLWINDOWPOS2FARBPROC)(GLfloat x, GLfloat y)

    ctypedef void (*PFNGLWINDOWPOS2FVARBPROC)(GLfloat* v)

    ctypedef void (*PFNGLWINDOWPOS2IARBPROC)(GLint x, GLint y)

    ctypedef void (*PFNGLWINDOWPOS2IVARBPROC)(GLint* v)

    ctypedef void (*PFNGLWINDOWPOS2SARBPROC)(GLshort x, GLshort y)

    ctypedef void (*PFNGLWINDOWPOS2SVARBPROC)(GLshort* v)

    ctypedef void (*PFNGLWINDOWPOS3DARBPROC)(GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLWINDOWPOS3DVARBPROC)(GLdouble* v)

    ctypedef void (*PFNGLWINDOWPOS3FARBPROC)(GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLWINDOWPOS3FVARBPROC)(GLfloat* v)

    ctypedef void (*PFNGLWINDOWPOS3IARBPROC)(GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLWINDOWPOS3IVARBPROC)(GLint* v)

    ctypedef void (*PFNGLWINDOWPOS3SARBPROC)(GLshort x, GLshort y, GLshort z)

    ctypedef void (*PFNGLWINDOWPOS3SVARBPROC)(GLshort* v)

    ctypedef void (*PFNGLBLENDBARRIERKHRPROC)()

    ctypedef void (*PFNGLMAXSHADERCOMPILERTHREADSKHRPROC)(GLuint count)

    ctypedef void (*PFNGLMULTITEXCOORD1BOESPROC)(GLenum texture, GLbyte s)

    ctypedef void (*PFNGLMULTITEXCOORD1BVOESPROC)(GLenum texture, GLbyte* coords)

    ctypedef void (*PFNGLMULTITEXCOORD2BOESPROC)(GLenum texture, GLbyte s, GLbyte t)

    ctypedef void (*PFNGLMULTITEXCOORD2BVOESPROC)(GLenum texture, GLbyte* coords)

    ctypedef void (*PFNGLMULTITEXCOORD3BOESPROC)(GLenum texture, GLbyte s, GLbyte t, GLbyte r)

    ctypedef void (*PFNGLMULTITEXCOORD3BVOESPROC)(GLenum texture, GLbyte* coords)

    ctypedef void (*PFNGLMULTITEXCOORD4BOESPROC)(GLenum texture, GLbyte s, GLbyte t, GLbyte r, GLbyte q)

    ctypedef void (*PFNGLMULTITEXCOORD4BVOESPROC)(GLenum texture, GLbyte* coords)

    ctypedef void (*PFNGLTEXCOORD1BOESPROC)(GLbyte s)

    ctypedef void (*PFNGLTEXCOORD1BVOESPROC)(GLbyte* coords)

    ctypedef void (*PFNGLTEXCOORD2BOESPROC)(GLbyte s, GLbyte t)

    ctypedef void (*PFNGLTEXCOORD2BVOESPROC)(GLbyte* coords)

    ctypedef void (*PFNGLTEXCOORD3BOESPROC)(GLbyte s, GLbyte t, GLbyte r)

    ctypedef void (*PFNGLTEXCOORD3BVOESPROC)(GLbyte* coords)

    ctypedef void (*PFNGLTEXCOORD4BOESPROC)(GLbyte s, GLbyte t, GLbyte r, GLbyte q)

    ctypedef void (*PFNGLTEXCOORD4BVOESPROC)(GLbyte* coords)

    ctypedef void (*PFNGLVERTEX2BOESPROC)(GLbyte x, GLbyte y)

    ctypedef void (*PFNGLVERTEX2BVOESPROC)(GLbyte* coords)

    ctypedef void (*PFNGLVERTEX3BOESPROC)(GLbyte x, GLbyte y, GLbyte z)

    ctypedef void (*PFNGLVERTEX3BVOESPROC)(GLbyte* coords)

    ctypedef void (*PFNGLVERTEX4BOESPROC)(GLbyte x, GLbyte y, GLbyte z, GLbyte w)

    ctypedef void (*PFNGLVERTEX4BVOESPROC)(GLbyte* coords)

    ctypedef khronos_int32_t GLfixed

    ctypedef void (*PFNGLALPHAFUNCXOESPROC)(GLenum func, GLfixed ref)

    ctypedef void (*PFNGLCLEARCOLORXOESPROC)(GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha)

    ctypedef void (*PFNGLCLEARDEPTHXOESPROC)(GLfixed depth)

    ctypedef void (*PFNGLCLIPPLANEXOESPROC)(GLenum plane, GLfixed* equation)

    ctypedef void (*PFNGLCOLOR4XOESPROC)(GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha)

    ctypedef void (*PFNGLDEPTHRANGEXOESPROC)(GLfixed n, GLfixed f)

    ctypedef void (*PFNGLFOGXOESPROC)(GLenum pname, GLfixed param)

    ctypedef void (*PFNGLFOGXVOESPROC)(GLenum pname, GLfixed* param)

    ctypedef void (*PFNGLFRUSTUMXOESPROC)(GLfixed l, GLfixed r, GLfixed b, GLfixed t, GLfixed n, GLfixed f)

    ctypedef void (*PFNGLGETCLIPPLANEXOESPROC)(GLenum plane, GLfixed* equation)

    ctypedef void (*PFNGLGETFIXEDVOESPROC)(GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLGETTEXENVXVOESPROC)(GLenum target, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLGETTEXPARAMETERXVOESPROC)(GLenum target, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLLIGHTMODELXOESPROC)(GLenum pname, GLfixed param)

    ctypedef void (*PFNGLLIGHTMODELXVOESPROC)(GLenum pname, GLfixed* param)

    ctypedef void (*PFNGLLIGHTXOESPROC)(GLenum light, GLenum pname, GLfixed param)

    ctypedef void (*PFNGLLIGHTXVOESPROC)(GLenum light, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLLINEWIDTHXOESPROC)(GLfixed width)

    ctypedef void (*PFNGLLOADMATRIXXOESPROC)(GLfixed* m)

    ctypedef void (*PFNGLMATERIALXOESPROC)(GLenum face, GLenum pname, GLfixed param)

    ctypedef void (*PFNGLMATERIALXVOESPROC)(GLenum face, GLenum pname, GLfixed* param)

    ctypedef void (*PFNGLMULTMATRIXXOESPROC)(GLfixed* m)

    ctypedef void (*PFNGLMULTITEXCOORD4XOESPROC)(GLenum texture, GLfixed s, GLfixed t, GLfixed r, GLfixed q)

    ctypedef void (*PFNGLNORMAL3XOESPROC)(GLfixed nx, GLfixed ny, GLfixed nz)

    ctypedef void (*PFNGLORTHOXOESPROC)(GLfixed l, GLfixed r, GLfixed b, GLfixed t, GLfixed n, GLfixed f)

    ctypedef void (*PFNGLPOINTPARAMETERXVOESPROC)(GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLPOINTSIZEXOESPROC)(GLfixed size)

    ctypedef void (*PFNGLPOLYGONOFFSETXOESPROC)(GLfixed factor, GLfixed units)

    ctypedef void (*PFNGLROTATEXOESPROC)(GLfixed angle, GLfixed x, GLfixed y, GLfixed z)

    ctypedef void (*PFNGLSCALEXOESPROC)(GLfixed x, GLfixed y, GLfixed z)

    ctypedef void (*PFNGLTEXENVXOESPROC)(GLenum target, GLenum pname, GLfixed param)

    ctypedef void (*PFNGLTEXENVXVOESPROC)(GLenum target, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLTEXPARAMETERXOESPROC)(GLenum target, GLenum pname, GLfixed param)

    ctypedef void (*PFNGLTEXPARAMETERXVOESPROC)(GLenum target, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLTRANSLATEXOESPROC)(GLfixed x, GLfixed y, GLfixed z)

    ctypedef void (*PFNGLACCUMXOESPROC)(GLenum op, GLfixed value)

    ctypedef void (*PFNGLBITMAPXOESPROC)(GLsizei width, GLsizei height, GLfixed xorig, GLfixed yorig, GLfixed xmove, GLfixed ymove, GLubyte* bitmap)

    ctypedef void (*PFNGLBLENDCOLORXOESPROC)(GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha)

    ctypedef void (*PFNGLCLEARACCUMXOESPROC)(GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha)

    ctypedef void (*PFNGLCOLOR3XOESPROC)(GLfixed red, GLfixed green, GLfixed blue)

    ctypedef void (*PFNGLCOLOR3XVOESPROC)(GLfixed* components)

    ctypedef void (*PFNGLCOLOR4XVOESPROC)(GLfixed* components)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERXOESPROC)(GLenum target, GLenum pname, GLfixed param)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERXVOESPROC)(GLenum target, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLEVALCOORD1XOESPROC)(GLfixed u)

    ctypedef void (*PFNGLEVALCOORD1XVOESPROC)(GLfixed* coords)

    ctypedef void (*PFNGLEVALCOORD2XOESPROC)(GLfixed u, GLfixed v)

    ctypedef void (*PFNGLEVALCOORD2XVOESPROC)(GLfixed* coords)

    ctypedef void (*PFNGLFEEDBACKBUFFERXOESPROC)(GLsizei n, GLenum type, GLfixed* buffer)

    ctypedef void (*PFNGLGETCONVOLUTIONPARAMETERXVOESPROC)(GLenum target, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLGETHISTOGRAMPARAMETERXVOESPROC)(GLenum target, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLGETLIGHTXOESPROC)(GLenum light, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLGETMAPXVOESPROC)(GLenum target, GLenum query, GLfixed* v)

    ctypedef void (*PFNGLGETMATERIALXOESPROC)(GLenum face, GLenum pname, GLfixed param)

    ctypedef void (*PFNGLGETPIXELMAPXVPROC)(GLenum map, GLint size, GLfixed* values)

    ctypedef void (*PFNGLGETTEXGENXVOESPROC)(GLenum coord, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLGETTEXLEVELPARAMETERXVOESPROC)(GLenum target, GLint level, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLINDEXXOESPROC)(GLfixed component)

    ctypedef void (*PFNGLINDEXXVOESPROC)(GLfixed* component)

    ctypedef void (*PFNGLLOADTRANSPOSEMATRIXXOESPROC)(GLfixed* m)

    ctypedef void (*PFNGLMAP1XOESPROC)(GLenum target, GLfixed u1, GLfixed u2, GLint stride, GLint order, GLfixed points)

    ctypedef void (*PFNGLMAP2XOESPROC)(GLenum target, GLfixed u1, GLfixed u2, GLint ustride, GLint uorder, GLfixed v1, GLfixed v2, GLint vstride, GLint vorder, GLfixed points)

    ctypedef void (*PFNGLMAPGRID1XOESPROC)(GLint n, GLfixed u1, GLfixed u2)

    ctypedef void (*PFNGLMAPGRID2XOESPROC)(GLint n, GLfixed u1, GLfixed u2, GLfixed v1, GLfixed v2)

    ctypedef void (*PFNGLMULTTRANSPOSEMATRIXXOESPROC)(GLfixed* m)

    ctypedef void (*PFNGLMULTITEXCOORD1XOESPROC)(GLenum texture, GLfixed s)

    ctypedef void (*PFNGLMULTITEXCOORD1XVOESPROC)(GLenum texture, GLfixed* coords)

    ctypedef void (*PFNGLMULTITEXCOORD2XOESPROC)(GLenum texture, GLfixed s, GLfixed t)

    ctypedef void (*PFNGLMULTITEXCOORD2XVOESPROC)(GLenum texture, GLfixed* coords)

    ctypedef void (*PFNGLMULTITEXCOORD3XOESPROC)(GLenum texture, GLfixed s, GLfixed t, GLfixed r)

    ctypedef void (*PFNGLMULTITEXCOORD3XVOESPROC)(GLenum texture, GLfixed* coords)

    ctypedef void (*PFNGLMULTITEXCOORD4XVOESPROC)(GLenum texture, GLfixed* coords)

    ctypedef void (*PFNGLNORMAL3XVOESPROC)(GLfixed* coords)

    ctypedef void (*PFNGLPASSTHROUGHXOESPROC)(GLfixed token)

    ctypedef void (*PFNGLPIXELMAPXPROC)(GLenum map, GLint size, GLfixed* values)

    ctypedef void (*PFNGLPIXELSTOREXPROC)(GLenum pname, GLfixed param)

    ctypedef void (*PFNGLPIXELTRANSFERXOESPROC)(GLenum pname, GLfixed param)

    ctypedef void (*PFNGLPIXELZOOMXOESPROC)(GLfixed xfactor, GLfixed yfactor)

    ctypedef void (*PFNGLPRIORITIZETEXTURESXOESPROC)(GLsizei n, GLuint* textures, GLfixed* priorities)

    ctypedef void (*PFNGLRASTERPOS2XOESPROC)(GLfixed x, GLfixed y)

    ctypedef void (*PFNGLRASTERPOS2XVOESPROC)(GLfixed* coords)

    ctypedef void (*PFNGLRASTERPOS3XOESPROC)(GLfixed x, GLfixed y, GLfixed z)

    ctypedef void (*PFNGLRASTERPOS3XVOESPROC)(GLfixed* coords)

    ctypedef void (*PFNGLRASTERPOS4XOESPROC)(GLfixed x, GLfixed y, GLfixed z, GLfixed w)

    ctypedef void (*PFNGLRASTERPOS4XVOESPROC)(GLfixed* coords)

    ctypedef void (*PFNGLRECTXOESPROC)(GLfixed x1, GLfixed y1, GLfixed x2, GLfixed y2)

    ctypedef void (*PFNGLRECTXVOESPROC)(GLfixed* v1, GLfixed* v2)

    ctypedef void (*PFNGLTEXCOORD1XOESPROC)(GLfixed s)

    ctypedef void (*PFNGLTEXCOORD1XVOESPROC)(GLfixed* coords)

    ctypedef void (*PFNGLTEXCOORD2XOESPROC)(GLfixed s, GLfixed t)

    ctypedef void (*PFNGLTEXCOORD2XVOESPROC)(GLfixed* coords)

    ctypedef void (*PFNGLTEXCOORD3XOESPROC)(GLfixed s, GLfixed t, GLfixed r)

    ctypedef void (*PFNGLTEXCOORD3XVOESPROC)(GLfixed* coords)

    ctypedef void (*PFNGLTEXCOORD4XOESPROC)(GLfixed s, GLfixed t, GLfixed r, GLfixed q)

    ctypedef void (*PFNGLTEXCOORD4XVOESPROC)(GLfixed* coords)

    ctypedef void (*PFNGLTEXGENXOESPROC)(GLenum coord, GLenum pname, GLfixed param)

    ctypedef void (*PFNGLTEXGENXVOESPROC)(GLenum coord, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLVERTEX2XOESPROC)(GLfixed x)

    ctypedef void (*PFNGLVERTEX2XVOESPROC)(GLfixed* coords)

    ctypedef void (*PFNGLVERTEX3XOESPROC)(GLfixed x, GLfixed y)

    ctypedef void (*PFNGLVERTEX3XVOESPROC)(GLfixed* coords)

    ctypedef void (*PFNGLVERTEX4XOESPROC)(GLfixed x, GLfixed y, GLfixed z)

    ctypedef void (*PFNGLVERTEX4XVOESPROC)(GLfixed* coords)

    ctypedef GLbitfield (*PFNGLQUERYMATRIXXOESPROC)(GLfixed* mantissa, GLint* exponent)

    ctypedef void (*PFNGLCLEARDEPTHFOESPROC)(GLclampf depth)

    ctypedef void (*PFNGLCLIPPLANEFOESPROC)(GLenum plane, GLfloat* equation)

    ctypedef void (*PFNGLDEPTHRANGEFOESPROC)(GLclampf n, GLclampf f)

    ctypedef void (*PFNGLFRUSTUMFOESPROC)(GLfloat l, GLfloat r, GLfloat b, GLfloat t, GLfloat n, GLfloat f)

    ctypedef void (*PFNGLGETCLIPPLANEFOESPROC)(GLenum plane, GLfloat* equation)

    ctypedef void (*PFNGLORTHOFOESPROC)(GLfloat l, GLfloat r, GLfloat b, GLfloat t, GLfloat n, GLfloat f)

    ctypedef void (*PFNGLTBUFFERMASK3DFXPROC)(GLuint mask)

    ctypedef void (*GLDEBUGPROCAMD)(GLuint id, GLenum category, GLenum severity, GLsizei length, GLchar* message, void* userParam)

    ctypedef void (*PFNGLDEBUGMESSAGEENABLEAMDPROC)(GLenum category, GLenum severity, GLsizei count, GLuint* ids, GLboolean enabled)

    ctypedef void (*PFNGLDEBUGMESSAGEINSERTAMDPROC)(GLenum category, GLenum severity, GLuint id, GLsizei length, GLchar* buf)

    ctypedef void (*PFNGLDEBUGMESSAGECALLBACKAMDPROC)(GLDEBUGPROCAMD callback, void* userParam)

    ctypedef GLuint (*PFNGLGETDEBUGMESSAGELOGAMDPROC)(GLuint count, GLsizei bufsize, GLenum* categories, GLuint* severities, GLuint* ids, GLsizei* lengths, GLchar* message)

    ctypedef void (*PFNGLBLENDFUNCINDEXEDAMDPROC)(GLuint buf, GLenum src, GLenum dst)

    ctypedef void (*PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC)(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)

    ctypedef void (*PFNGLBLENDEQUATIONINDEXEDAMDPROC)(GLuint buf, GLenum mode)

    ctypedef void (*PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC)(GLuint buf, GLenum modeRGB, GLenum modeAlpha)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEMULTISAMPLEADVANCEDAMDPROC)(GLenum target, GLsizei samples, GLsizei storageSamples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEADVANCEDAMDPROC)(GLuint renderbuffer, GLsizei samples, GLsizei storageSamples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLFRAMEBUFFERSAMPLEPOSITIONSFVAMDPROC)(GLenum target, GLuint numsamples, GLuint pixelindex, GLfloat* values)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERSAMPLEPOSITIONSFVAMDPROC)(GLuint framebuffer, GLuint numsamples, GLuint pixelindex, GLfloat* values)

    ctypedef void (*PFNGLGETFRAMEBUFFERPARAMETERFVAMDPROC)(GLenum target, GLenum pname, GLuint numsamples, GLuint pixelindex, GLsizei size, GLfloat* values)

    ctypedef void (*PFNGLGETNAMEDFRAMEBUFFERPARAMETERFVAMDPROC)(GLuint framebuffer, GLenum pname, GLuint numsamples, GLuint pixelindex, GLsizei size, GLfloat* values)

    ctypedef khronos_int64_t GLint64EXT

    ctypedef void (*PFNGLUNIFORM1I64NVPROC)(GLint location, GLint64EXT x)

    ctypedef void (*PFNGLUNIFORM2I64NVPROC)(GLint location, GLint64EXT x, GLint64EXT y)

    ctypedef void (*PFNGLUNIFORM3I64NVPROC)(GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z)

    ctypedef void (*PFNGLUNIFORM4I64NVPROC)(GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)

    ctypedef void (*PFNGLUNIFORM1I64VNVPROC)(GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLUNIFORM2I64VNVPROC)(GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLUNIFORM3I64VNVPROC)(GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLUNIFORM4I64VNVPROC)(GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLUNIFORM1UI64NVPROC)(GLint location, GLuint64EXT x)

    ctypedef void (*PFNGLUNIFORM2UI64NVPROC)(GLint location, GLuint64EXT x, GLuint64EXT y)

    ctypedef void (*PFNGLUNIFORM3UI64NVPROC)(GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)

    ctypedef void (*PFNGLUNIFORM4UI64NVPROC)(GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)

    ctypedef void (*PFNGLUNIFORM1UI64VNVPROC)(GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLUNIFORM2UI64VNVPROC)(GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLUNIFORM3UI64VNVPROC)(GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLUNIFORM4UI64VNVPROC)(GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLGETUNIFORMI64VNVPROC)(GLuint program, GLint location, GLint64EXT* params)

    ctypedef void (*PFNGLGETUNIFORMUI64VNVPROC)(GLuint program, GLint location, GLuint64EXT* params)

    ctypedef void (*PFNGLPROGRAMUNIFORM1I64NVPROC)(GLuint program, GLint location, GLint64EXT x)

    ctypedef void (*PFNGLPROGRAMUNIFORM2I64NVPROC)(GLuint program, GLint location, GLint64EXT x, GLint64EXT y)

    ctypedef void (*PFNGLPROGRAMUNIFORM3I64NVPROC)(GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z)

    ctypedef void (*PFNGLPROGRAMUNIFORM4I64NVPROC)(GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)

    ctypedef void (*PFNGLPROGRAMUNIFORM1I64VNVPROC)(GLuint program, GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2I64VNVPROC)(GLuint program, GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3I64VNVPROC)(GLuint program, GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4I64VNVPROC)(GLuint program, GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UI64NVPROC)(GLuint program, GLint location, GLuint64EXT x)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UI64NVPROC)(GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UI64NVPROC)(GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UI64NVPROC)(GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UI64VNVPROC)(GLuint program, GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UI64VNVPROC)(GLuint program, GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UI64VNVPROC)(GLuint program, GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UI64VNVPROC)(GLuint program, GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLVERTEXATTRIBPARAMETERIAMDPROC)(GLuint index, GLenum pname, GLint param)

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTAMDPROC)(GLenum mode, void* indirect, GLsizei primcount, GLsizei stride)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTAMDPROC)(GLenum mode, GLenum type, void* indirect, GLsizei primcount, GLsizei stride)

    ctypedef void (*PFNGLGENNAMESAMDPROC)(GLenum identifier, GLuint num, GLuint* names)

    ctypedef void (*PFNGLDELETENAMESAMDPROC)(GLenum identifier, GLuint num, GLuint* names)

    ctypedef GLboolean (*PFNGLISNAMEAMDPROC)(GLenum identifier, GLuint name)

    ctypedef void (*PFNGLQUERYOBJECTPARAMETERUIAMDPROC)(GLenum target, GLuint id, GLenum pname, GLuint param)

    ctypedef void (*PFNGLGETPERFMONITORGROUPSAMDPROC)(GLint* numGroups, GLsizei groupsSize, GLuint* groups)

    ctypedef void (*PFNGLGETPERFMONITORCOUNTERSAMDPROC)(GLuint group, GLint* numCounters, GLint* maxActiveCounters, GLsizei counterSize, GLuint* counters)

    ctypedef void (*PFNGLGETPERFMONITORGROUPSTRINGAMDPROC)(GLuint group, GLsizei bufSize, GLsizei* length, GLchar* groupString)

    ctypedef void (*PFNGLGETPERFMONITORCOUNTERSTRINGAMDPROC)(GLuint group, GLuint counter, GLsizei bufSize, GLsizei* length, GLchar* counterString)

    ctypedef void (*PFNGLGETPERFMONITORCOUNTERINFOAMDPROC)(GLuint group, GLuint counter, GLenum pname, void* data)

    ctypedef void (*PFNGLGENPERFMONITORSAMDPROC)(GLsizei n, GLuint* monitors)

    ctypedef void (*PFNGLDELETEPERFMONITORSAMDPROC)(GLsizei n, GLuint* monitors)

    ctypedef void (*PFNGLSELECTPERFMONITORCOUNTERSAMDPROC)(GLuint monitor, GLboolean enable, GLuint group, GLint numCounters, GLuint* counterList)

    ctypedef void (*PFNGLBEGINPERFMONITORAMDPROC)(GLuint monitor)

    ctypedef void (*PFNGLENDPERFMONITORAMDPROC)(GLuint monitor)

    ctypedef void (*PFNGLGETPERFMONITORCOUNTERDATAAMDPROC)(GLuint monitor, GLenum pname, GLsizei dataSize, GLuint* data, GLint* bytesWritten)

    ctypedef void (*PFNGLSETMULTISAMPLEFVAMDPROC)(GLenum pname, GLuint index, GLfloat* val)

    ctypedef void (*PFNGLTEXSTORAGESPARSEAMDPROC)(GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags)

    ctypedef void (*PFNGLTEXTURESTORAGESPARSEAMDPROC)(GLuint texture, GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags)

    ctypedef void (*PFNGLSTENCILOPVALUEAMDPROC)(GLenum face, GLuint value)

    ctypedef void (*PFNGLTESSELLATIONFACTORAMDPROC)(GLfloat factor)

    ctypedef void (*PFNGLTESSELLATIONMODEAMDPROC)(GLenum mode)

    ctypedef void (*PFNGLELEMENTPOINTERAPPLEPROC)(GLenum type, void* pointer)

    ctypedef void (*PFNGLDRAWELEMENTARRAYAPPLEPROC)(GLenum mode, GLint first, GLsizei count)

    ctypedef void (*PFNGLDRAWRANGEELEMENTARRAYAPPLEPROC)(GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count)

    ctypedef void (*PFNGLMULTIDRAWELEMENTARRAYAPPLEPROC)(GLenum mode, GLint* first, GLsizei* count, GLsizei primcount)

    ctypedef void (*PFNGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC)(GLenum mode, GLuint start, GLuint end, GLint* first, GLsizei* count, GLsizei primcount)

    ctypedef void (*PFNGLGENFENCESAPPLEPROC)(GLsizei n, GLuint* fences)

    ctypedef void (*PFNGLDELETEFENCESAPPLEPROC)(GLsizei n, GLuint* fences)

    ctypedef void (*PFNGLSETFENCEAPPLEPROC)(GLuint fence)

    ctypedef GLboolean (*PFNGLISFENCEAPPLEPROC)(GLuint fence)

    ctypedef GLboolean (*PFNGLTESTFENCEAPPLEPROC)(GLuint fence)

    ctypedef void (*PFNGLFINISHFENCEAPPLEPROC)(GLuint fence)

    ctypedef GLboolean (*PFNGLTESTOBJECTAPPLEPROC)(GLenum object, GLuint name)

    ctypedef void (*PFNGLFINISHOBJECTAPPLEPROC)(GLenum object, GLint name)

    ctypedef void (*PFNGLBUFFERPARAMETERIAPPLEPROC)(GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC)(GLenum target, GLintptr offset, GLsizeiptr size)

    ctypedef GLenum (*PFNGLOBJECTPURGEABLEAPPLEPROC)(GLenum objectType, GLuint name, GLenum option)

    ctypedef GLenum (*PFNGLOBJECTUNPURGEABLEAPPLEPROC)(GLenum objectType, GLuint name, GLenum option)

    ctypedef void (*PFNGLGETOBJECTPARAMETERIVAPPLEPROC)(GLenum objectType, GLuint name, GLenum pname, GLint* params)

    ctypedef void (*PFNGLTEXTURERANGEAPPLEPROC)(GLenum target, GLsizei length, void* pointer)

    ctypedef void (*PFNGLGETTEXPARAMETERPOINTERVAPPLEPROC)(GLenum target, GLenum pname, void** params)

    ctypedef void (*PFNGLBINDVERTEXARRAYAPPLEPROC)(GLuint array)

    ctypedef void (*PFNGLDELETEVERTEXARRAYSAPPLEPROC)(GLsizei n, GLuint* arrays)

    ctypedef void (*PFNGLGENVERTEXARRAYSAPPLEPROC)(GLsizei n, GLuint* arrays)

    ctypedef GLboolean (*PFNGLISVERTEXARRAYAPPLEPROC)(GLuint array)

    ctypedef void (*PFNGLVERTEXARRAYRANGEAPPLEPROC)(GLsizei length, void* pointer)

    ctypedef void (*PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC)(GLsizei length, void* pointer)

    ctypedef void (*PFNGLVERTEXARRAYPARAMETERIAPPLEPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLENABLEVERTEXATTRIBAPPLEPROC)(GLuint index, GLenum pname)

    ctypedef void (*PFNGLDISABLEVERTEXATTRIBAPPLEPROC)(GLuint index, GLenum pname)

    ctypedef GLboolean (*PFNGLISVERTEXATTRIBENABLEDAPPLEPROC)(GLuint index, GLenum pname)

    ctypedef void (*PFNGLMAPVERTEXATTRIB1DAPPLEPROC)(GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, GLdouble* points)

    ctypedef void (*PFNGLMAPVERTEXATTRIB1FAPPLEPROC)(GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, GLfloat* points)

    ctypedef void (*PFNGLMAPVERTEXATTRIB2DAPPLEPROC)(GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble* points)

    ctypedef void (*PFNGLMAPVERTEXATTRIB2FAPPLEPROC)(GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat* points)

    ctypedef void (*PFNGLDRAWBUFFERSATIPROC)(GLsizei n, GLenum* bufs)

    ctypedef void (*PFNGLELEMENTPOINTERATIPROC)(GLenum type, void* pointer)

    ctypedef void (*PFNGLDRAWELEMENTARRAYATIPROC)(GLenum mode, GLsizei count)

    ctypedef void (*PFNGLDRAWRANGEELEMENTARRAYATIPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count)

    ctypedef void (*PFNGLTEXBUMPPARAMETERIVATIPROC)(GLenum pname, GLint* param)

    ctypedef void (*PFNGLTEXBUMPPARAMETERFVATIPROC)(GLenum pname, GLfloat* param)

    ctypedef void (*PFNGLGETTEXBUMPPARAMETERIVATIPROC)(GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETTEXBUMPPARAMETERFVATIPROC)(GLenum pname, GLfloat* param)

    ctypedef GLuint (*PFNGLGENFRAGMENTSHADERSATIPROC)(GLuint range)

    ctypedef void (*PFNGLBINDFRAGMENTSHADERATIPROC)(GLuint id)

    ctypedef void (*PFNGLDELETEFRAGMENTSHADERATIPROC)(GLuint id)

    ctypedef void (*PFNGLBEGINFRAGMENTSHADERATIPROC)()

    ctypedef void (*PFNGLENDFRAGMENTSHADERATIPROC)()

    ctypedef void (*PFNGLPASSTEXCOORDATIPROC)(GLuint dst, GLuint coord, GLenum swizzle)

    ctypedef void (*PFNGLSAMPLEMAPATIPROC)(GLuint dst, GLuint interp, GLenum swizzle)

    ctypedef void (*PFNGLCOLORFRAGMENTOP1ATIPROC)(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod)

    ctypedef void (*PFNGLCOLORFRAGMENTOP2ATIPROC)(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod)

    ctypedef void (*PFNGLCOLORFRAGMENTOP3ATIPROC)(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod)

    ctypedef void (*PFNGLALPHAFRAGMENTOP1ATIPROC)(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod)

    ctypedef void (*PFNGLALPHAFRAGMENTOP2ATIPROC)(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod)

    ctypedef void (*PFNGLALPHAFRAGMENTOP3ATIPROC)(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod)

    ctypedef void (*PFNGLSETFRAGMENTSHADERCONSTANTATIPROC)(GLuint dst, GLfloat* value)

    ctypedef void* (*PFNGLMAPOBJECTBUFFERATIPROC)(GLuint buffer)

    ctypedef void (*PFNGLUNMAPOBJECTBUFFERATIPROC)(GLuint buffer)

    ctypedef void (*PFNGLPNTRIANGLESIATIPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLPNTRIANGLESFATIPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLSTENCILOPSEPARATEATIPROC)(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass)

    ctypedef void (*PFNGLSTENCILFUNCSEPARATEATIPROC)(GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask)

    ctypedef GLuint (*PFNGLNEWOBJECTBUFFERATIPROC)(GLsizei size, void* pointer, GLenum usage)

    ctypedef GLboolean (*PFNGLISOBJECTBUFFERATIPROC)(GLuint buffer)

    ctypedef void (*PFNGLUPDATEOBJECTBUFFERATIPROC)(GLuint buffer, GLuint offset, GLsizei size, void* pointer, GLenum preserve)

    ctypedef void (*PFNGLGETOBJECTBUFFERFVATIPROC)(GLuint buffer, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETOBJECTBUFFERIVATIPROC)(GLuint buffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLFREEOBJECTBUFFERATIPROC)(GLuint buffer)

    ctypedef void (*PFNGLARRAYOBJECTATIPROC)(GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset)

    ctypedef void (*PFNGLGETARRAYOBJECTFVATIPROC)(GLenum array, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETARRAYOBJECTIVATIPROC)(GLenum array, GLenum pname, GLint* params)

    ctypedef void (*PFNGLVARIANTARRAYOBJECTATIPROC)(GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset)

    ctypedef void (*PFNGLGETVARIANTARRAYOBJECTFVATIPROC)(GLuint id, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETVARIANTARRAYOBJECTIVATIPROC)(GLuint id, GLenum pname, GLint* params)

    ctypedef void (*PFNGLVERTEXATTRIBARRAYOBJECTATIPROC)(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset)

    ctypedef void (*PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC)(GLuint index, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC)(GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLVERTEXSTREAM1SATIPROC)(GLenum stream, GLshort x)

    ctypedef void (*PFNGLVERTEXSTREAM1SVATIPROC)(GLenum stream, GLshort* coords)

    ctypedef void (*PFNGLVERTEXSTREAM1IATIPROC)(GLenum stream, GLint x)

    ctypedef void (*PFNGLVERTEXSTREAM1IVATIPROC)(GLenum stream, GLint* coords)

    ctypedef void (*PFNGLVERTEXSTREAM1FATIPROC)(GLenum stream, GLfloat x)

    ctypedef void (*PFNGLVERTEXSTREAM1FVATIPROC)(GLenum stream, GLfloat* coords)

    ctypedef void (*PFNGLVERTEXSTREAM1DATIPROC)(GLenum stream, GLdouble x)

    ctypedef void (*PFNGLVERTEXSTREAM1DVATIPROC)(GLenum stream, GLdouble* coords)

    ctypedef void (*PFNGLVERTEXSTREAM2SATIPROC)(GLenum stream, GLshort x, GLshort y)

    ctypedef void (*PFNGLVERTEXSTREAM2SVATIPROC)(GLenum stream, GLshort* coords)

    ctypedef void (*PFNGLVERTEXSTREAM2IATIPROC)(GLenum stream, GLint x, GLint y)

    ctypedef void (*PFNGLVERTEXSTREAM2IVATIPROC)(GLenum stream, GLint* coords)

    ctypedef void (*PFNGLVERTEXSTREAM2FATIPROC)(GLenum stream, GLfloat x, GLfloat y)

    ctypedef void (*PFNGLVERTEXSTREAM2FVATIPROC)(GLenum stream, GLfloat* coords)

    ctypedef void (*PFNGLVERTEXSTREAM2DATIPROC)(GLenum stream, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLVERTEXSTREAM2DVATIPROC)(GLenum stream, GLdouble* coords)

    ctypedef void (*PFNGLVERTEXSTREAM3SATIPROC)(GLenum stream, GLshort x, GLshort y, GLshort z)

    ctypedef void (*PFNGLVERTEXSTREAM3SVATIPROC)(GLenum stream, GLshort* coords)

    ctypedef void (*PFNGLVERTEXSTREAM3IATIPROC)(GLenum stream, GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLVERTEXSTREAM3IVATIPROC)(GLenum stream, GLint* coords)

    ctypedef void (*PFNGLVERTEXSTREAM3FATIPROC)(GLenum stream, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLVERTEXSTREAM3FVATIPROC)(GLenum stream, GLfloat* coords)

    ctypedef void (*PFNGLVERTEXSTREAM3DATIPROC)(GLenum stream, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLVERTEXSTREAM3DVATIPROC)(GLenum stream, GLdouble* coords)

    ctypedef void (*PFNGLVERTEXSTREAM4SATIPROC)(GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w)

    ctypedef void (*PFNGLVERTEXSTREAM4SVATIPROC)(GLenum stream, GLshort* coords)

    ctypedef void (*PFNGLVERTEXSTREAM4IATIPROC)(GLenum stream, GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLVERTEXSTREAM4IVATIPROC)(GLenum stream, GLint* coords)

    ctypedef void (*PFNGLVERTEXSTREAM4FATIPROC)(GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLVERTEXSTREAM4FVATIPROC)(GLenum stream, GLfloat* coords)

    ctypedef void (*PFNGLVERTEXSTREAM4DATIPROC)(GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLVERTEXSTREAM4DVATIPROC)(GLenum stream, GLdouble* coords)

    ctypedef void (*PFNGLNORMALSTREAM3BATIPROC)(GLenum stream, GLbyte nx, GLbyte ny, GLbyte nz)

    ctypedef void (*PFNGLNORMALSTREAM3BVATIPROC)(GLenum stream, GLbyte* coords)

    ctypedef void (*PFNGLNORMALSTREAM3SATIPROC)(GLenum stream, GLshort nx, GLshort ny, GLshort nz)

    ctypedef void (*PFNGLNORMALSTREAM3SVATIPROC)(GLenum stream, GLshort* coords)

    ctypedef void (*PFNGLNORMALSTREAM3IATIPROC)(GLenum stream, GLint nx, GLint ny, GLint nz)

    ctypedef void (*PFNGLNORMALSTREAM3IVATIPROC)(GLenum stream, GLint* coords)

    ctypedef void (*PFNGLNORMALSTREAM3FATIPROC)(GLenum stream, GLfloat nx, GLfloat ny, GLfloat nz)

    ctypedef void (*PFNGLNORMALSTREAM3FVATIPROC)(GLenum stream, GLfloat* coords)

    ctypedef void (*PFNGLNORMALSTREAM3DATIPROC)(GLenum stream, GLdouble nx, GLdouble ny, GLdouble nz)

    ctypedef void (*PFNGLNORMALSTREAM3DVATIPROC)(GLenum stream, GLdouble* coords)

    ctypedef void (*PFNGLCLIENTACTIVEVERTEXSTREAMATIPROC)(GLenum stream)

    ctypedef void (*PFNGLVERTEXBLENDENVIATIPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLVERTEXBLENDENVFATIPROC)(GLenum pname, GLfloat param)

    ctypedef void* GLeglImageOES

    ctypedef void (*PFNGLEGLIMAGETARGETTEXSTORAGEEXTPROC)(GLenum target, GLeglImageOES image, GLint* attrib_list)

    ctypedef void (*PFNGLEGLIMAGETARGETTEXTURESTORAGEEXTPROC)(GLuint texture, GLeglImageOES image, GLint* attrib_list)

    ctypedef void (*PFNGLUNIFORMBUFFEREXTPROC)(GLuint program, GLint location, GLuint buffer)

    ctypedef GLint (*PFNGLGETUNIFORMBUFFERSIZEEXTPROC)(GLuint program, GLint location)

    ctypedef GLintptr (*PFNGLGETUNIFORMOFFSETEXTPROC)(GLuint program, GLint location)

    ctypedef void (*PFNGLBLENDCOLOREXTPROC)(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)

    ctypedef void (*PFNGLBLENDEQUATIONSEPARATEEXTPROC)(GLenum modeRGB, GLenum modeAlpha)

    ctypedef void (*PFNGLBLENDFUNCSEPARATEEXTPROC)(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)

    ctypedef void (*PFNGLBLENDEQUATIONEXTPROC)(GLenum mode)

    ctypedef void (*PFNGLCOLORSUBTABLEEXTPROC)(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCOPYCOLORSUBTABLEEXTPROC)(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLLOCKARRAYSEXTPROC)(GLint first, GLsizei count)

    ctypedef void (*PFNGLUNLOCKARRAYSEXTPROC)()

    ctypedef void (*PFNGLCONVOLUTIONFILTER1DEXTPROC)(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, void* image)

    ctypedef void (*PFNGLCONVOLUTIONFILTER2DEXTPROC)(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, void* image)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERFEXTPROC)(GLenum target, GLenum pname, GLfloat params)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERFVEXTPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERIEXTPROC)(GLenum target, GLenum pname, GLint params)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC)(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC)(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLGETCONVOLUTIONFILTEREXTPROC)(GLenum target, GLenum format, GLenum type, void* image)

    ctypedef void (*PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETSEPARABLEFILTEREXTPROC)(GLenum target, GLenum format, GLenum type, void* row, void* column, void* span)

    ctypedef void (*PFNGLSEPARABLEFILTER2DEXTPROC)(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, void* row, void* column)

    ctypedef void (*PFNGLTANGENT3BEXTPROC)(GLbyte tx, GLbyte ty, GLbyte tz)

    ctypedef void (*PFNGLTANGENT3BVEXTPROC)(GLbyte* v)

    ctypedef void (*PFNGLTANGENT3DEXTPROC)(GLdouble tx, GLdouble ty, GLdouble tz)

    ctypedef void (*PFNGLTANGENT3DVEXTPROC)(GLdouble* v)

    ctypedef void (*PFNGLTANGENT3FEXTPROC)(GLfloat tx, GLfloat ty, GLfloat tz)

    ctypedef void (*PFNGLTANGENT3FVEXTPROC)(GLfloat* v)

    ctypedef void (*PFNGLTANGENT3IEXTPROC)(GLint tx, GLint ty, GLint tz)

    ctypedef void (*PFNGLTANGENT3IVEXTPROC)(GLint* v)

    ctypedef void (*PFNGLTANGENT3SEXTPROC)(GLshort tx, GLshort ty, GLshort tz)

    ctypedef void (*PFNGLTANGENT3SVEXTPROC)(GLshort* v)

    ctypedef void (*PFNGLBINORMAL3BEXTPROC)(GLbyte bx, GLbyte by_, GLbyte bz)

    ctypedef void (*PFNGLBINORMAL3BVEXTPROC)(GLbyte* v)

    ctypedef void (*PFNGLBINORMAL3DEXTPROC)(GLdouble bx, GLdouble by_, GLdouble bz)

    ctypedef void (*PFNGLBINORMAL3DVEXTPROC)(GLdouble* v)

    ctypedef void (*PFNGLBINORMAL3FEXTPROC)(GLfloat bx, GLfloat by_, GLfloat bz)

    ctypedef void (*PFNGLBINORMAL3FVEXTPROC)(GLfloat* v)

    ctypedef void (*PFNGLBINORMAL3IEXTPROC)(GLint bx, GLint by_, GLint bz)

    ctypedef void (*PFNGLBINORMAL3IVEXTPROC)(GLint* v)

    ctypedef void (*PFNGLBINORMAL3SEXTPROC)(GLshort bx, GLshort by_, GLshort bz)

    ctypedef void (*PFNGLBINORMAL3SVEXTPROC)(GLshort* v)

    ctypedef void (*PFNGLTANGENTPOINTEREXTPROC)(GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLBINORMALPOINTEREXTPROC)(GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLCOPYTEXIMAGE1DEXTPROC)(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)

    ctypedef void (*PFNGLCOPYTEXIMAGE2DEXTPROC)(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

    ctypedef void (*PFNGLCOPYTEXSUBIMAGE1DEXTPROC)(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYTEXSUBIMAGE2DEXTPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLCOPYTEXSUBIMAGE3DEXTPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLCULLPARAMETERDVEXTPROC)(GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLCULLPARAMETERFVEXTPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLLABELOBJECTEXTPROC)(GLenum type, GLuint object, GLsizei length, GLchar* label)

    ctypedef void (*PFNGLGETOBJECTLABELEXTPROC)(GLenum type, GLuint object, GLsizei bufSize, GLsizei* length, GLchar* label)

    ctypedef void (*PFNGLINSERTEVENTMARKEREXTPROC)(GLsizei length, GLchar* marker)

    ctypedef void (*PFNGLPUSHGROUPMARKEREXTPROC)(GLsizei length, GLchar* marker)

    ctypedef void (*PFNGLPOPGROUPMARKEREXTPROC)()

    ctypedef void (*PFNGLDEPTHBOUNDSEXTPROC)(GLclampd zmin, GLclampd zmax)

    ctypedef void (*PFNGLMATRIXLOADFEXTPROC)(GLenum mode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXLOADDEXTPROC)(GLenum mode, GLdouble* m)

    ctypedef void (*PFNGLMATRIXMULTFEXTPROC)(GLenum mode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXMULTDEXTPROC)(GLenum mode, GLdouble* m)

    ctypedef void (*PFNGLMATRIXLOADIDENTITYEXTPROC)(GLenum mode)

    ctypedef void (*PFNGLMATRIXROTATEFEXTPROC)(GLenum mode, GLfloat angle, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLMATRIXROTATEDEXTPROC)(GLenum mode, GLdouble angle, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLMATRIXSCALEFEXTPROC)(GLenum mode, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLMATRIXSCALEDEXTPROC)(GLenum mode, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLMATRIXTRANSLATEFEXTPROC)(GLenum mode, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLMATRIXTRANSLATEDEXTPROC)(GLenum mode, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLMATRIXFRUSTUMEXTPROC)(GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)

    ctypedef void (*PFNGLMATRIXORTHOEXTPROC)(GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)

    ctypedef void (*PFNGLMATRIXPOPEXTPROC)(GLenum mode)

    ctypedef void (*PFNGLMATRIXPUSHEXTPROC)(GLenum mode)

    ctypedef void (*PFNGLCLIENTATTRIBDEFAULTEXTPROC)(GLbitfield mask)

    ctypedef void (*PFNGLPUSHCLIENTATTRIBDEFAULTEXTPROC)(GLbitfield mask)

    ctypedef void (*PFNGLTEXTUREPARAMETERFEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLTEXTUREPARAMETERFVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLTEXTUREPARAMETERIEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLTEXTUREPARAMETERIVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLTEXTUREIMAGE1DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTUREIMAGE2DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTURESUBIMAGE1DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTURESUBIMAGE2DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLCOPYTEXTUREIMAGE1DEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)

    ctypedef void (*PFNGLCOPYTEXTUREIMAGE2DEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

    ctypedef void (*PFNGLCOPYTEXTURESUBIMAGE1DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYTEXTURESUBIMAGE2DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLGETTEXTUREIMAGEEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERFVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERIVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTEXTURELEVELPARAMETERFVEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETTEXTURELEVELPARAMETERIVEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum pname, GLint* params)

    ctypedef void (*PFNGLTEXTUREIMAGE3DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTURESUBIMAGE3DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLCOPYTEXTURESUBIMAGE3DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLBINDMULTITEXTUREEXTPROC)(GLenum texunit, GLenum target, GLuint texture)

    ctypedef void (*PFNGLMULTITEXCOORDPOINTEREXTPROC)(GLenum texunit, GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLMULTITEXENVFEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLMULTITEXENVFVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLMULTITEXENVIEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLMULTITEXENVIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLMULTITEXGENDEXTPROC)(GLenum texunit, GLenum coord, GLenum pname, GLdouble param)

    ctypedef void (*PFNGLMULTITEXGENDVEXTPROC)(GLenum texunit, GLenum coord, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLMULTITEXGENFEXTPROC)(GLenum texunit, GLenum coord, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLMULTITEXGENFVEXTPROC)(GLenum texunit, GLenum coord, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLMULTITEXGENIEXTPROC)(GLenum texunit, GLenum coord, GLenum pname, GLint param)

    ctypedef void (*PFNGLMULTITEXGENIVEXTPROC)(GLenum texunit, GLenum coord, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMULTITEXENVFVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMULTITEXENVIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMULTITEXGENDVEXTPROC)(GLenum texunit, GLenum coord, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLGETMULTITEXGENFVEXTPROC)(GLenum texunit, GLenum coord, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMULTITEXGENIVEXTPROC)(GLenum texunit, GLenum coord, GLenum pname, GLint* params)

    ctypedef void (*PFNGLMULTITEXPARAMETERIEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLMULTITEXPARAMETERIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLMULTITEXPARAMETERFEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLMULTITEXPARAMETERFVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLMULTITEXIMAGE1DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLMULTITEXIMAGE2DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLMULTITEXSUBIMAGE1DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLMULTITEXSUBIMAGE2DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLCOPYMULTITEXIMAGE1DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)

    ctypedef void (*PFNGLCOPYMULTITEXIMAGE2DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

    ctypedef void (*PFNGLCOPYMULTITEXSUBIMAGE1DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYMULTITEXSUBIMAGE2DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLGETMULTITEXIMAGEEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLGETMULTITEXPARAMETERFVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMULTITEXPARAMETERIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMULTITEXLEVELPARAMETERFVEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMULTITEXLEVELPARAMETERIVEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum pname, GLint* params)

    ctypedef void (*PFNGLMULTITEXIMAGE3DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLMULTITEXSUBIMAGE3DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLCOPYMULTITEXSUBIMAGE3DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLENABLECLIENTSTATEINDEXEDEXTPROC)(GLenum array, GLuint index)

    ctypedef void (*PFNGLDISABLECLIENTSTATEINDEXEDEXTPROC)(GLenum array, GLuint index)

    ctypedef void (*PFNGLGETFLOATINDEXEDVEXTPROC)(GLenum target, GLuint index, GLfloat* data)

    ctypedef void (*PFNGLGETDOUBLEINDEXEDVEXTPROC)(GLenum target, GLuint index, GLdouble* data)

    ctypedef void (*PFNGLGETPOINTERINDEXEDVEXTPROC)(GLenum target, GLuint index, void** data)

    ctypedef void (*PFNGLENABLEINDEXEDEXTPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLDISABLEINDEXEDEXTPROC)(GLenum target, GLuint index)

    ctypedef GLboolean (*PFNGLISENABLEDINDEXEDEXTPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLGETINTEGERINDEXEDVEXTPROC)(GLenum target, GLuint index, GLint* data)

    ctypedef void (*PFNGLGETBOOLEANINDEXEDVEXTPROC)(GLenum target, GLuint index, GLboolean* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXTUREIMAGE3DEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, void* bits)

    ctypedef void (*PFNGLCOMPRESSEDTEXTUREIMAGE2DEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, void* bits)

    ctypedef void (*PFNGLCOMPRESSEDTEXTUREIMAGE1DEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, void* bits)

    ctypedef void (*PFNGLCOMPRESSEDTEXTURESUBIMAGE3DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, void* bits)

    ctypedef void (*PFNGLCOMPRESSEDTEXTURESUBIMAGE2DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, void* bits)

    ctypedef void (*PFNGLCOMPRESSEDTEXTURESUBIMAGE1DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, void* bits)

    ctypedef void (*PFNGLGETCOMPRESSEDTEXTUREIMAGEEXTPROC)(GLuint texture, GLenum target, GLint lod, void* img)

    ctypedef void (*PFNGLCOMPRESSEDMULTITEXIMAGE3DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, void* bits)

    ctypedef void (*PFNGLCOMPRESSEDMULTITEXIMAGE2DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, void* bits)

    ctypedef void (*PFNGLCOMPRESSEDMULTITEXIMAGE1DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, void* bits)

    ctypedef void (*PFNGLCOMPRESSEDMULTITEXSUBIMAGE3DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, void* bits)

    ctypedef void (*PFNGLCOMPRESSEDMULTITEXSUBIMAGE2DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, void* bits)

    ctypedef void (*PFNGLCOMPRESSEDMULTITEXSUBIMAGE1DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, void* bits)

    ctypedef void (*PFNGLGETCOMPRESSEDMULTITEXIMAGEEXTPROC)(GLenum texunit, GLenum target, GLint lod, void* img)

    ctypedef void (*PFNGLMATRIXLOADTRANSPOSEFEXTPROC)(GLenum mode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXLOADTRANSPOSEDEXTPROC)(GLenum mode, GLdouble* m)

    ctypedef void (*PFNGLMATRIXMULTTRANSPOSEFEXTPROC)(GLenum mode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXMULTTRANSPOSEDEXTPROC)(GLenum mode, GLdouble* m)

    ctypedef void (*PFNGLNAMEDBUFFERDATAEXTPROC)(GLuint buffer, GLsizeiptr size, void* data, GLenum usage)

    ctypedef void (*PFNGLNAMEDBUFFERSUBDATAEXTPROC)(GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void* (*PFNGLMAPNAMEDBUFFEREXTPROC)(GLuint buffer, GLenum access)

    ctypedef GLboolean (*PFNGLUNMAPNAMEDBUFFEREXTPROC)(GLuint buffer)

    ctypedef void (*PFNGLGETNAMEDBUFFERPARAMETERIVEXTPROC)(GLuint buffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETNAMEDBUFFERPOINTERVEXTPROC)(GLuint buffer, GLenum pname, void** params)

    ctypedef void (*PFNGLGETNAMEDBUFFERSUBDATAEXTPROC)(GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLPROGRAMUNIFORM1FEXTPROC)(GLuint program, GLint location, GLfloat v0)

    ctypedef void (*PFNGLPROGRAMUNIFORM2FEXTPROC)(GLuint program, GLint location, GLfloat v0, GLfloat v1)

    ctypedef void (*PFNGLPROGRAMUNIFORM3FEXTPROC)(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2)

    ctypedef void (*PFNGLPROGRAMUNIFORM4FEXTPROC)(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)

    ctypedef void (*PFNGLPROGRAMUNIFORM1IEXTPROC)(GLuint program, GLint location, GLint v0)

    ctypedef void (*PFNGLPROGRAMUNIFORM2IEXTPROC)(GLuint program, GLint location, GLint v0, GLint v1)

    ctypedef void (*PFNGLPROGRAMUNIFORM3IEXTPROC)(GLuint program, GLint location, GLint v0, GLint v1, GLint v2)

    ctypedef void (*PFNGLPROGRAMUNIFORM4IEXTPROC)(GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3)

    ctypedef void (*PFNGLPROGRAMUNIFORM1FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1IVEXTPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2IVEXTPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3IVEXTPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4IVEXTPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X3FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X2FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X4FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X2FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X4FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X3FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLTEXTUREBUFFEREXTPROC)(GLuint texture, GLenum target, GLenum internalformat, GLuint buffer)

    ctypedef void (*PFNGLMULTITEXBUFFEREXTPROC)(GLenum texunit, GLenum target, GLenum internalformat, GLuint buffer)

    ctypedef void (*PFNGLTEXTUREPARAMETERIIVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLTEXTUREPARAMETERIUIVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERIIVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERIUIVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLMULTITEXPARAMETERIIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLMULTITEXPARAMETERIUIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETMULTITEXPARAMETERIIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMULTITEXPARAMETERIUIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UIEXTPROC)(GLuint program, GLint location, GLuint v0)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UIEXTPROC)(GLuint program, GLint location, GLuint v0, GLuint v1)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UIEXTPROC)(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UIEXTPROC)(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UIVEXTPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UIVEXTPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UIVEXTPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UIVEXTPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERS4FVEXTPROC)(GLuint program, GLenum target, GLuint index, GLsizei count, GLfloat* params)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERI4IEXTPROC)(GLuint program, GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERI4IVEXTPROC)(GLuint program, GLenum target, GLuint index, GLint* params)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERSI4IVEXTPROC)(GLuint program, GLenum target, GLuint index, GLsizei count, GLint* params)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIEXTPROC)(GLuint program, GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIVEXTPROC)(GLuint program, GLenum target, GLuint index, GLuint* params)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERSI4UIVEXTPROC)(GLuint program, GLenum target, GLuint index, GLsizei count, GLuint* params)

    ctypedef void (*PFNGLGETNAMEDPROGRAMLOCALPARAMETERIIVEXTPROC)(GLuint program, GLenum target, GLuint index, GLint* params)

    ctypedef void (*PFNGLGETNAMEDPROGRAMLOCALPARAMETERIUIVEXTPROC)(GLuint program, GLenum target, GLuint index, GLuint* params)

    ctypedef void (*PFNGLENABLECLIENTSTATEIEXTPROC)(GLenum array, GLuint index)

    ctypedef void (*PFNGLDISABLECLIENTSTATEIEXTPROC)(GLenum array, GLuint index)

    ctypedef void (*PFNGLGETFLOATI_VEXTPROC)(GLenum pname, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLGETDOUBLEI_VEXTPROC)(GLenum pname, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLGETPOINTERI_VEXTPROC)(GLenum pname, GLuint index, void** params)

    ctypedef void (*PFNGLNAMEDPROGRAMSTRINGEXTPROC)(GLuint program, GLenum target, GLenum format, GLsizei len, void* string)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETER4DEXTPROC)(GLuint program, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETER4DVEXTPROC)(GLuint program, GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETER4FEXTPROC)(GLuint program, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETER4FVEXTPROC)(GLuint program, GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLGETNAMEDPROGRAMLOCALPARAMETERDVEXTPROC)(GLuint program, GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLGETNAMEDPROGRAMLOCALPARAMETERFVEXTPROC)(GLuint program, GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLGETNAMEDPROGRAMIVEXTPROC)(GLuint program, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETNAMEDPROGRAMSTRINGEXTPROC)(GLuint program, GLenum target, GLenum pname, void* string)

    ctypedef void (*PFNGLNAMEDRENDERBUFFERSTORAGEEXTPROC)(GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLGETNAMEDRENDERBUFFERPARAMETERIVEXTPROC)(GLuint renderbuffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC)(GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLECOVERAGEEXTPROC)(GLuint renderbuffer, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef GLenum (*PFNGLCHECKNAMEDFRAMEBUFFERSTATUSEXTPROC)(GLuint framebuffer, GLenum target)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTURE1DEXTPROC)(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTURE2DEXTPROC)(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTURE3DEXTPROC)(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERRENDERBUFFEREXTPROC)(GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)

    ctypedef void (*PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC)(GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGENERATETEXTUREMIPMAPEXTPROC)(GLuint texture, GLenum target)

    ctypedef void (*PFNGLGENERATEMULTITEXMIPMAPEXTPROC)(GLenum texunit, GLenum target)

    ctypedef void (*PFNGLFRAMEBUFFERDRAWBUFFEREXTPROC)(GLuint framebuffer, GLenum mode)

    ctypedef void (*PFNGLFRAMEBUFFERDRAWBUFFERSEXTPROC)(GLuint framebuffer, GLsizei n, GLenum* bufs)

    ctypedef void (*PFNGLFRAMEBUFFERREADBUFFEREXTPROC)(GLuint framebuffer, GLenum mode)

    ctypedef void (*PFNGLGETFRAMEBUFFERPARAMETERIVEXTPROC)(GLuint framebuffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLNAMEDCOPYBUFFERSUBDATAEXTPROC)(GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTUREEXTPROC)(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTURELAYEREXTPROC)(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTUREFACEEXTPROC)(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLenum face)

    ctypedef void (*PFNGLTEXTURERENDERBUFFEREXTPROC)(GLuint texture, GLenum target, GLuint renderbuffer)

    ctypedef void (*PFNGLMULTITEXRENDERBUFFEREXTPROC)(GLenum texunit, GLenum target, GLuint renderbuffer)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYCOLOROFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYEDGEFLAGOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYINDEXOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYNORMALOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYTEXCOORDOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYMULTITEXCOORDOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLenum texunit, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYFOGCOORDOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYSECONDARYCOLOROFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBIOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLENABLEVERTEXARRAYEXTPROC)(GLuint vaobj, GLenum array)

    ctypedef void (*PFNGLDISABLEVERTEXARRAYEXTPROC)(GLuint vaobj, GLenum array)

    ctypedef void (*PFNGLENABLEVERTEXARRAYATTRIBEXTPROC)(GLuint vaobj, GLuint index)

    ctypedef void (*PFNGLDISABLEVERTEXARRAYATTRIBEXTPROC)(GLuint vaobj, GLuint index)

    ctypedef void (*PFNGLGETVERTEXARRAYINTEGERVEXTPROC)(GLuint vaobj, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETVERTEXARRAYPOINTERVEXTPROC)(GLuint vaobj, GLenum pname, void** param)

    ctypedef void (*PFNGLGETVERTEXARRAYINTEGERI_VEXTPROC)(GLuint vaobj, GLuint index, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETVERTEXARRAYPOINTERI_VEXTPROC)(GLuint vaobj, GLuint index, GLenum pname, void** param)

    ctypedef void* (*PFNGLMAPNAMEDBUFFERRANGEEXTPROC)(GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access)

    ctypedef void (*PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEEXTPROC)(GLuint buffer, GLintptr offset, GLsizeiptr length)

    ctypedef void (*PFNGLNAMEDBUFFERSTORAGEEXTPROC)(GLuint buffer, GLsizeiptr size, void* data, GLbitfield flags)

    ctypedef void (*PFNGLCLEARNAMEDBUFFERDATAEXTPROC)(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLEARNAMEDBUFFERSUBDATAEXTPROC)(GLuint buffer, GLenum internalformat, GLsizeiptr offset, GLsizeiptr size, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERPARAMETERIEXTPROC)(GLuint framebuffer, GLenum pname, GLint param)

    ctypedef void (*PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVEXTPROC)(GLuint framebuffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLPROGRAMUNIFORM1DEXTPROC)(GLuint program, GLint location, GLdouble x)

    ctypedef void (*PFNGLPROGRAMUNIFORM2DEXTPROC)(GLuint program, GLint location, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLPROGRAMUNIFORM3DEXTPROC)(GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLPROGRAMUNIFORM4DEXTPROC)(GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLPROGRAMUNIFORM1DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X3DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X4DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X2DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X4DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X2DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X3DVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLTEXTUREBUFFERRANGEEXTPROC)(GLuint texture, GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLTEXTURESTORAGE1DEXTPROC)(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width)

    ctypedef void (*PFNGLTEXTURESTORAGE2DEXTPROC)(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLTEXTURESTORAGE3DEXTPROC)(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLTEXTURESTORAGE2DMULTISAMPLEEXTPROC)(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXTURESTORAGE3DMULTISAMPLEEXTPROC)(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLVERTEXARRAYBINDVERTEXBUFFEREXTPROC)(GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBFORMATEXTPROC)(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBIFORMATEXTPROC)(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBLFORMATEXTPROC)(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBBINDINGEXTPROC)(GLuint vaobj, GLuint attribindex, GLuint bindingindex)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXBINDINGDIVISOREXTPROC)(GLuint vaobj, GLuint bindingindex, GLuint divisor)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBLOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLTEXTUREPAGECOMMITMENTEXTPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLboolean commit)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBDIVISOREXTPROC)(GLuint vaobj, GLuint index, GLuint divisor)

    ctypedef void (*PFNGLCOLORMASKINDEXEDEXTPROC)(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a)

    ctypedef void (*PFNGLDRAWARRAYSINSTANCEDEXTPROC)(GLenum mode, GLint start, GLsizei count, GLsizei primcount)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDEXTPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei primcount)

    ctypedef void (*PFNGLDRAWRANGEELEMENTSEXTPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, void* indices)

    ctypedef void* GLeglClientBufferEXT

    ctypedef void (*PFNGLBUFFERSTORAGEEXTERNALEXTPROC)(GLenum target, GLintptr offset, GLsizeiptr size, GLeglClientBufferEXT clientBuffer, GLbitfield flags)

    ctypedef void (*PFNGLNAMEDBUFFERSTORAGEEXTERNALEXTPROC)(GLuint buffer, GLintptr offset, GLsizeiptr size, GLeglClientBufferEXT clientBuffer, GLbitfield flags)

    ctypedef void (*PFNGLFOGCOORDFEXTPROC)(GLfloat coord)

    ctypedef void (*PFNGLFOGCOORDFVEXTPROC)(GLfloat* coord)

    ctypedef void (*PFNGLFOGCOORDDEXTPROC)(GLdouble coord)

    ctypedef void (*PFNGLFOGCOORDDVEXTPROC)(GLdouble* coord)

    ctypedef void (*PFNGLFOGCOORDPOINTEREXTPROC)(GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLBLITFRAMEBUFFEREXTPROC)(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef GLboolean (*PFNGLISRENDERBUFFEREXTPROC)(GLuint renderbuffer)

    ctypedef void (*PFNGLBINDRENDERBUFFEREXTPROC)(GLenum target, GLuint renderbuffer)

    ctypedef void (*PFNGLDELETERENDERBUFFERSEXTPROC)(GLsizei n, GLuint* renderbuffers)

    ctypedef void (*PFNGLGENRENDERBUFFERSEXTPROC)(GLsizei n, GLuint* renderbuffers)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEEXTPROC)(GLenum target, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLGETRENDERBUFFERPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISFRAMEBUFFEREXTPROC)(GLuint framebuffer)

    ctypedef void (*PFNGLBINDFRAMEBUFFEREXTPROC)(GLenum target, GLuint framebuffer)

    ctypedef void (*PFNGLDELETEFRAMEBUFFERSEXTPROC)(GLsizei n, GLuint* framebuffers)

    ctypedef void (*PFNGLGENFRAMEBUFFERSEXTPROC)(GLsizei n, GLuint* framebuffers)

    ctypedef GLenum (*PFNGLCHECKFRAMEBUFFERSTATUSEXTPROC)(GLenum target)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE1DEXTPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE2DEXTPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE3DEXTPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)

    ctypedef void (*PFNGLFRAMEBUFFERRENDERBUFFEREXTPROC)(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)

    ctypedef void (*PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC)(GLenum target, GLenum attachment, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGENERATEMIPMAPEXTPROC)(GLenum target)

    ctypedef void (*PFNGLPROGRAMPARAMETERIEXTPROC)(GLuint program, GLenum pname, GLint value)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERS4FVEXTPROC)(GLenum target, GLuint index, GLsizei count, GLfloat* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERS4FVEXTPROC)(GLenum target, GLuint index, GLsizei count, GLfloat* params)

    ctypedef void (*PFNGLGETUNIFORMUIVEXTPROC)(GLuint program, GLint location, GLuint* params)

    ctypedef void (*PFNGLBINDFRAGDATALOCATIONEXTPROC)(GLuint program, GLuint color, GLchar* name)

    ctypedef GLint (*PFNGLGETFRAGDATALOCATIONEXTPROC)(GLuint program, GLchar* name)

    ctypedef void (*PFNGLUNIFORM1UIEXTPROC)(GLint location, GLuint v0)

    ctypedef void (*PFNGLUNIFORM2UIEXTPROC)(GLint location, GLuint v0, GLuint v1)

    ctypedef void (*PFNGLUNIFORM3UIEXTPROC)(GLint location, GLuint v0, GLuint v1, GLuint v2)

    ctypedef void (*PFNGLUNIFORM4UIEXTPROC)(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)

    ctypedef void (*PFNGLUNIFORM1UIVEXTPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLUNIFORM2UIVEXTPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLUNIFORM3UIVEXTPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLUNIFORM4UIVEXTPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLGETHISTOGRAMEXTPROC)(GLenum target, GLboolean reset, GLenum format, GLenum type, void* values)

    ctypedef void (*PFNGLGETHISTOGRAMPARAMETERFVEXTPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETHISTOGRAMPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMINMAXEXTPROC)(GLenum target, GLboolean reset, GLenum format, GLenum type, void* values)

    ctypedef void (*PFNGLGETMINMAXPARAMETERFVEXTPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMINMAXPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLHISTOGRAMEXTPROC)(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink)

    ctypedef void (*PFNGLMINMAXEXTPROC)(GLenum target, GLenum internalformat, GLboolean sink)

    ctypedef void (*PFNGLRESETHISTOGRAMEXTPROC)(GLenum target)

    ctypedef void (*PFNGLRESETMINMAXEXTPROC)(GLenum target)

    ctypedef void (*PFNGLINDEXFUNCEXTPROC)(GLenum func, GLclampf ref)

    ctypedef void (*PFNGLINDEXMATERIALEXTPROC)(GLenum face, GLenum mode)

    ctypedef void (*PFNGLAPPLYTEXTUREEXTPROC)(GLenum mode)

    ctypedef void (*PFNGLTEXTURELIGHTEXTPROC)(GLenum pname)

    ctypedef void (*PFNGLTEXTUREMATERIALEXTPROC)(GLenum face, GLenum mode)

    ctypedef void (*PFNGLGETUNSIGNEDBYTEVEXTPROC)(GLenum pname, GLubyte* data)

    ctypedef void (*PFNGLGETUNSIGNEDBYTEI_VEXTPROC)(GLenum target, GLuint index, GLubyte* data)

    ctypedef void (*PFNGLDELETEMEMORYOBJECTSEXTPROC)(GLsizei n, GLuint* memoryObjects)

    ctypedef GLboolean (*PFNGLISMEMORYOBJECTEXTPROC)(GLuint memoryObject)

    ctypedef void (*PFNGLCREATEMEMORYOBJECTSEXTPROC)(GLsizei n, GLuint* memoryObjects)

    ctypedef void (*PFNGLMEMORYOBJECTPARAMETERIVEXTPROC)(GLuint memoryObject, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMEMORYOBJECTPARAMETERIVEXTPROC)(GLuint memoryObject, GLenum pname, GLint* params)

    ctypedef void (*PFNGLTEXSTORAGEMEM2DEXTPROC)(GLenum target, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXSTORAGEMEM2DMULTISAMPLEEXTPROC)(GLenum target, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXSTORAGEMEM3DEXTPROC)(GLenum target, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXSTORAGEMEM3DMULTISAMPLEEXTPROC)(GLenum target, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLBUFFERSTORAGEMEMEXTPROC)(GLenum target, GLsizeiptr size, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXTURESTORAGEMEM2DEXTPROC)(GLuint texture, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXTURESTORAGEMEM2DMULTISAMPLEEXTPROC)(GLuint texture, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXTURESTORAGEMEM3DEXTPROC)(GLuint texture, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXTURESTORAGEMEM3DMULTISAMPLEEXTPROC)(GLuint texture, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLNAMEDBUFFERSTORAGEMEMEXTPROC)(GLuint buffer, GLsizeiptr size, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXSTORAGEMEM1DEXTPROC)(GLenum target, GLsizei levels, GLenum internalFormat, GLsizei width, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXTURESTORAGEMEM1DEXTPROC)(GLuint texture, GLsizei levels, GLenum internalFormat, GLsizei width, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLIMPORTMEMORYFDEXTPROC)(GLuint memory, GLuint64 size, GLenum handleType, GLint fd)

    ctypedef void (*PFNGLIMPORTMEMORYWIN32HANDLEEXTPROC)(GLuint memory, GLuint64 size, GLenum handleType, void* handle)

    ctypedef void (*PFNGLIMPORTMEMORYWIN32NAMEEXTPROC)(GLuint memory, GLuint64 size, GLenum handleType, void* name)

    ctypedef void (*PFNGLMULTIDRAWARRAYSEXTPROC)(GLenum mode, GLint* first, GLsizei* count, GLsizei primcount)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSEXTPROC)(GLenum mode, GLsizei* count, GLenum type, void** indices, GLsizei primcount)

    ctypedef void (*PFNGLSAMPLEMASKEXTPROC)(GLclampf value, GLboolean invert)

    ctypedef void (*PFNGLSAMPLEPATTERNEXTPROC)(GLenum pattern)

    ctypedef void (*PFNGLCOLORTABLEEXTPROC)(GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, void* table)

    ctypedef void (*PFNGLGETCOLORTABLEEXTPROC)(GLenum target, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLGETCOLORTABLEPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETCOLORTABLEPARAMETERFVEXTPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLPIXELTRANSFORMPARAMETERIEXTPROC)(GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLPIXELTRANSFORMPARAMETERFEXTPROC)(GLenum target, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLPIXELTRANSFORMPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLPIXELTRANSFORMPARAMETERFVEXTPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETPIXELTRANSFORMPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETPIXELTRANSFORMPARAMETERFVEXTPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLPOINTPARAMETERFEXTPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLPOINTPARAMETERFVEXTPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLPOLYGONOFFSETEXTPROC)(GLfloat factor, GLfloat bias)

    ctypedef void (*PFNGLPOLYGONOFFSETCLAMPEXTPROC)(GLfloat factor, GLfloat units, GLfloat clamp)

    ctypedef void (*PFNGLPROVOKINGVERTEXEXTPROC)(GLenum mode)

    ctypedef void (*PFNGLRASTERSAMPLESEXTPROC)(GLuint samples, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLSECONDARYCOLOR3BEXTPROC)(GLbyte red, GLbyte green, GLbyte blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3BVEXTPROC)(GLbyte* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3DEXTPROC)(GLdouble red, GLdouble green, GLdouble blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3DVEXTPROC)(GLdouble* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3FEXTPROC)(GLfloat red, GLfloat green, GLfloat blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3FVEXTPROC)(GLfloat* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3IEXTPROC)(GLint red, GLint green, GLint blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3IVEXTPROC)(GLint* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3SEXTPROC)(GLshort red, GLshort green, GLshort blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3SVEXTPROC)(GLshort* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3UBEXTPROC)(GLubyte red, GLubyte green, GLubyte blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3UBVEXTPROC)(GLubyte* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3UIEXTPROC)(GLuint red, GLuint green, GLuint blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3UIVEXTPROC)(GLuint* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3USEXTPROC)(GLushort red, GLushort green, GLushort blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3USVEXTPROC)(GLushort* v)

    ctypedef void (*PFNGLSECONDARYCOLORPOINTEREXTPROC)(GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLGENSEMAPHORESEXTPROC)(GLsizei n, GLuint* semaphores)

    ctypedef void (*PFNGLDELETESEMAPHORESEXTPROC)(GLsizei n, GLuint* semaphores)

    ctypedef GLboolean (*PFNGLISSEMAPHOREEXTPROC)(GLuint semaphore)

    ctypedef void (*PFNGLSEMAPHOREPARAMETERUI64VEXTPROC)(GLuint semaphore, GLenum pname, GLuint64* params)

    ctypedef void (*PFNGLGETSEMAPHOREPARAMETERUI64VEXTPROC)(GLuint semaphore, GLenum pname, GLuint64* params)

    ctypedef void (*PFNGLWAITSEMAPHOREEXTPROC)(GLuint semaphore, GLuint numBufferBarriers, GLuint* buffers, GLuint numTextureBarriers, GLuint* textures, GLenum* srcLayouts)

    ctypedef void (*PFNGLSIGNALSEMAPHOREEXTPROC)(GLuint semaphore, GLuint numBufferBarriers, GLuint* buffers, GLuint numTextureBarriers, GLuint* textures, GLenum* dstLayouts)

    ctypedef void (*PFNGLIMPORTSEMAPHOREFDEXTPROC)(GLuint semaphore, GLenum handleType, GLint fd)

    ctypedef void (*PFNGLIMPORTSEMAPHOREWIN32HANDLEEXTPROC)(GLuint semaphore, GLenum handleType, void* handle)

    ctypedef void (*PFNGLIMPORTSEMAPHOREWIN32NAMEEXTPROC)(GLuint semaphore, GLenum handleType, void* name)

    ctypedef void (*PFNGLUSESHADERPROGRAMEXTPROC)(GLenum type, GLuint program)

    ctypedef void (*PFNGLACTIVEPROGRAMEXTPROC)(GLuint program)

    ctypedef GLuint (*PFNGLCREATESHADERPROGRAMEXTPROC)(GLenum type, GLchar* string)

    ctypedef void (*PFNGLFRAMEBUFFERFETCHBARRIEREXTPROC)()

    ctypedef void (*PFNGLBINDIMAGETEXTUREEXTPROC)(GLuint index, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLint format)

    ctypedef void (*PFNGLMEMORYBARRIEREXTPROC)(GLbitfield barriers)

    ctypedef void (*PFNGLSTENCILCLEARTAGEXTPROC)(GLsizei stencilTagBits, GLuint stencilClearTag)

    ctypedef void (*PFNGLACTIVESTENCILFACEEXTPROC)(GLenum face)

    ctypedef void (*PFNGLTEXSUBIMAGE1DEXTPROC)(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXSUBIMAGE2DEXTPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXIMAGE3DEXTPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXSUBIMAGE3DEXTPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)

    ctypedef void (*PFNGLTEXBUFFEREXTPROC)(GLenum target, GLenum internalformat, GLuint buffer)

    ctypedef void (*PFNGLTEXPARAMETERIIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLTEXPARAMETERIUIVEXTPROC)(GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETTEXPARAMETERIIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTEXPARAMETERIUIVEXTPROC)(GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLCLEARCOLORIIEXTPROC)(GLint red, GLint green, GLint blue, GLint alpha)

    ctypedef void (*PFNGLCLEARCOLORIUIEXTPROC)(GLuint red, GLuint green, GLuint blue, GLuint alpha)

    ctypedef GLboolean (*PFNGLARETEXTURESRESIDENTEXTPROC)(GLsizei n, GLuint* textures, GLboolean* residences)

    ctypedef void (*PFNGLBINDTEXTUREEXTPROC)(GLenum target, GLuint texture)

    ctypedef void (*PFNGLDELETETEXTURESEXTPROC)(GLsizei n, GLuint* textures)

    ctypedef void (*PFNGLGENTEXTURESEXTPROC)(GLsizei n, GLuint* textures)

    ctypedef GLboolean (*PFNGLISTEXTUREEXTPROC)(GLuint texture)

    ctypedef void (*PFNGLPRIORITIZETEXTURESEXTPROC)(GLsizei n, GLuint* textures, GLclampf* priorities)

    ctypedef void (*PFNGLTEXTURENORMALEXTPROC)(GLenum mode)

    ctypedef void (*PFNGLGETQUERYOBJECTI64VEXTPROC)(GLuint id, GLenum pname, GLint64* params)

    ctypedef void (*PFNGLGETQUERYOBJECTUI64VEXTPROC)(GLuint id, GLenum pname, GLuint64* params)

    ctypedef void (*PFNGLBEGINTRANSFORMFEEDBACKEXTPROC)(GLenum primitiveMode)

    ctypedef void (*PFNGLENDTRANSFORMFEEDBACKEXTPROC)()

    ctypedef void (*PFNGLBINDBUFFERRANGEEXTPROC)(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLBINDBUFFEROFFSETEXTPROC)(GLenum target, GLuint index, GLuint buffer, GLintptr offset)

    ctypedef void (*PFNGLBINDBUFFERBASEEXTPROC)(GLenum target, GLuint index, GLuint buffer)

    ctypedef void (*PFNGLTRANSFORMFEEDBACKVARYINGSEXTPROC)(GLuint program, GLsizei count, GLchar** varyings, GLenum bufferMode)

    ctypedef void (*PFNGLGETTRANSFORMFEEDBACKVARYINGEXTPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name)

    ctypedef void (*PFNGLARRAYELEMENTEXTPROC)(GLint i)

    ctypedef void (*PFNGLCOLORPOINTEREXTPROC)(GLint size, GLenum type, GLsizei stride, GLsizei count, void* pointer)

    ctypedef void (*PFNGLDRAWARRAYSEXTPROC)(GLenum mode, GLint first, GLsizei count)

    ctypedef void (*PFNGLEDGEFLAGPOINTEREXTPROC)(GLsizei stride, GLsizei count, GLboolean* pointer)

    ctypedef void (*PFNGLGETPOINTERVEXTPROC)(GLenum pname, void** params)

    ctypedef void (*PFNGLINDEXPOINTEREXTPROC)(GLenum type, GLsizei stride, GLsizei count, void* pointer)

    ctypedef void (*PFNGLNORMALPOINTEREXTPROC)(GLenum type, GLsizei stride, GLsizei count, void* pointer)

    ctypedef void (*PFNGLTEXCOORDPOINTEREXTPROC)(GLint size, GLenum type, GLsizei stride, GLsizei count, void* pointer)

    ctypedef void (*PFNGLVERTEXPOINTEREXTPROC)(GLint size, GLenum type, GLsizei stride, GLsizei count, void* pointer)

    ctypedef void (*PFNGLVERTEXATTRIBL1DEXTPROC)(GLuint index, GLdouble x)

    ctypedef void (*PFNGLVERTEXATTRIBL2DEXTPROC)(GLuint index, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLVERTEXATTRIBL3DEXTPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLVERTEXATTRIBL4DEXTPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLVERTEXATTRIBL1DVEXTPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBL2DVEXTPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBL3DVEXTPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBL4DVEXTPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBLPOINTEREXTPROC)(GLuint index, GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLGETVERTEXATTRIBLDVEXTPROC)(GLuint index, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLBEGINVERTEXSHADEREXTPROC)()

    ctypedef void (*PFNGLENDVERTEXSHADEREXTPROC)()

    ctypedef void (*PFNGLBINDVERTEXSHADEREXTPROC)(GLuint id)

    ctypedef GLuint (*PFNGLGENVERTEXSHADERSEXTPROC)(GLuint range)

    ctypedef void (*PFNGLDELETEVERTEXSHADEREXTPROC)(GLuint id)

    ctypedef void (*PFNGLSHADEROP1EXTPROC)(GLenum op, GLuint res, GLuint arg1)

    ctypedef void (*PFNGLSHADEROP2EXTPROC)(GLenum op, GLuint res, GLuint arg1, GLuint arg2)

    ctypedef void (*PFNGLSHADEROP3EXTPROC)(GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3)

    ctypedef void (*PFNGLSWIZZLEEXTPROC)(GLuint res, GLuint in_, GLenum outX, GLenum outY, GLenum outZ, GLenum outW)

    ctypedef void (*PFNGLWRITEMASKEXTPROC)(GLuint res, GLuint in_, GLenum outX, GLenum outY, GLenum outZ, GLenum outW)

    ctypedef void (*PFNGLINSERTCOMPONENTEXTPROC)(GLuint res, GLuint src, GLuint num)

    ctypedef void (*PFNGLEXTRACTCOMPONENTEXTPROC)(GLuint res, GLuint src, GLuint num)

    ctypedef GLuint (*PFNGLGENSYMBOLSEXTPROC)(GLenum datatype, GLenum storagetype, GLenum range, GLuint components)

    ctypedef void (*PFNGLSETINVARIANTEXTPROC)(GLuint id, GLenum type, void* addr)

    ctypedef void (*PFNGLSETLOCALCONSTANTEXTPROC)(GLuint id, GLenum type, void* addr)

    ctypedef void (*PFNGLVARIANTBVEXTPROC)(GLuint id, GLbyte* addr)

    ctypedef void (*PFNGLVARIANTSVEXTPROC)(GLuint id, GLshort* addr)

    ctypedef void (*PFNGLVARIANTIVEXTPROC)(GLuint id, GLint* addr)

    ctypedef void (*PFNGLVARIANTFVEXTPROC)(GLuint id, GLfloat* addr)

    ctypedef void (*PFNGLVARIANTDVEXTPROC)(GLuint id, GLdouble* addr)

    ctypedef void (*PFNGLVARIANTUBVEXTPROC)(GLuint id, GLubyte* addr)

    ctypedef void (*PFNGLVARIANTUSVEXTPROC)(GLuint id, GLushort* addr)

    ctypedef void (*PFNGLVARIANTUIVEXTPROC)(GLuint id, GLuint* addr)

    ctypedef void (*PFNGLVARIANTPOINTEREXTPROC)(GLuint id, GLenum type, GLuint stride, void* addr)

    ctypedef void (*PFNGLENABLEVARIANTCLIENTSTATEEXTPROC)(GLuint id)

    ctypedef void (*PFNGLDISABLEVARIANTCLIENTSTATEEXTPROC)(GLuint id)

    ctypedef GLuint (*PFNGLBINDLIGHTPARAMETEREXTPROC)(GLenum light, GLenum value)

    ctypedef GLuint (*PFNGLBINDMATERIALPARAMETEREXTPROC)(GLenum face, GLenum value)

    ctypedef GLuint (*PFNGLBINDTEXGENPARAMETEREXTPROC)(GLenum unit, GLenum coord, GLenum value)

    ctypedef GLuint (*PFNGLBINDTEXTUREUNITPARAMETEREXTPROC)(GLenum unit, GLenum value)

    ctypedef GLuint (*PFNGLBINDPARAMETEREXTPROC)(GLenum value)

    ctypedef GLboolean (*PFNGLISVARIANTENABLEDEXTPROC)(GLuint id, GLenum cap)

    ctypedef void (*PFNGLGETVARIANTBOOLEANVEXTPROC)(GLuint id, GLenum value, GLboolean* data)

    ctypedef void (*PFNGLGETVARIANTINTEGERVEXTPROC)(GLuint id, GLenum value, GLint* data)

    ctypedef void (*PFNGLGETVARIANTFLOATVEXTPROC)(GLuint id, GLenum value, GLfloat* data)

    ctypedef void (*PFNGLGETVARIANTPOINTERVEXTPROC)(GLuint id, GLenum value, void** data)

    ctypedef void (*PFNGLGETINVARIANTBOOLEANVEXTPROC)(GLuint id, GLenum value, GLboolean* data)

    ctypedef void (*PFNGLGETINVARIANTINTEGERVEXTPROC)(GLuint id, GLenum value, GLint* data)

    ctypedef void (*PFNGLGETINVARIANTFLOATVEXTPROC)(GLuint id, GLenum value, GLfloat* data)

    ctypedef void (*PFNGLGETLOCALCONSTANTBOOLEANVEXTPROC)(GLuint id, GLenum value, GLboolean* data)

    ctypedef void (*PFNGLGETLOCALCONSTANTINTEGERVEXTPROC)(GLuint id, GLenum value, GLint* data)

    ctypedef void (*PFNGLGETLOCALCONSTANTFLOATVEXTPROC)(GLuint id, GLenum value, GLfloat* data)

    ctypedef void (*PFNGLVERTEXWEIGHTFEXTPROC)(GLfloat weight)

    ctypedef void (*PFNGLVERTEXWEIGHTFVEXTPROC)(GLfloat* weight)

    ctypedef void (*PFNGLVERTEXWEIGHTPOINTEREXTPROC)(GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef GLboolean (*PFNGLACQUIREKEYEDMUTEXWIN32EXTPROC)(GLuint memory, GLuint64 key, GLuint timeout)

    ctypedef GLboolean (*PFNGLRELEASEKEYEDMUTEXWIN32EXTPROC)(GLuint memory, GLuint64 key)

    ctypedef void (*PFNGLWINDOWRECTANGLESEXTPROC)(GLenum mode, GLsizei count, GLint* box)

    ctypedef GLsync (*PFNGLIMPORTSYNCEXTPROC)(GLenum external_sync_type, GLintptr external_sync, GLbitfield flags)

    ctypedef void (*PFNGLFRAMETERMINATORGREMEDYPROC)()

    ctypedef void (*PFNGLSTRINGMARKERGREMEDYPROC)(GLsizei len, void* string)

    ctypedef void (*PFNGLIMAGETRANSFORMPARAMETERIHPPROC)(GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLIMAGETRANSFORMPARAMETERFHPPROC)(GLenum target, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLIMAGETRANSFORMPARAMETERIVHPPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLIMAGETRANSFORMPARAMETERFVHPPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLMULTIMODEDRAWARRAYSIBMPROC)(GLenum* mode, GLint* first, GLsizei* count, GLsizei primcount, GLint modestride)

    ctypedef void (*PFNGLMULTIMODEDRAWELEMENTSIBMPROC)(GLenum* mode, GLsizei* count, GLenum type, void** indices, GLsizei primcount, GLint modestride)

    ctypedef void (*PFNGLFLUSHSTATICDATAIBMPROC)(GLenum target)

    ctypedef void (*PFNGLCOLORPOINTERLISTIBMPROC)(GLint size, GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLSECONDARYCOLORPOINTERLISTIBMPROC)(GLint size, GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLEDGEFLAGPOINTERLISTIBMPROC)(GLint stride, GLboolean** pointer, GLint ptrstride)

    ctypedef void (*PFNGLFOGCOORDPOINTERLISTIBMPROC)(GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLINDEXPOINTERLISTIBMPROC)(GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLNORMALPOINTERLISTIBMPROC)(GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLTEXCOORDPOINTERLISTIBMPROC)(GLint size, GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLVERTEXPOINTERLISTIBMPROC)(GLint size, GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLBLENDFUNCSEPARATEINGRPROC)(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)

    ctypedef void (*PFNGLAPPLYFRAMEBUFFERATTACHMENTCMAAINTELPROC)()

    ctypedef void (*PFNGLSYNCTEXTUREINTELPROC)(GLuint texture)

    ctypedef void (*PFNGLUNMAPTEXTURE2DINTELPROC)(GLuint texture, GLint level)

    ctypedef void* (*PFNGLMAPTEXTURE2DINTELPROC)(GLuint texture, GLint level, GLbitfield access, GLint* stride, GLenum* layout)

    ctypedef void (*PFNGLVERTEXPOINTERVINTELPROC)(GLint size, GLenum type, void** pointer)

    ctypedef void (*PFNGLNORMALPOINTERVINTELPROC)(GLenum type, void** pointer)

    ctypedef void (*PFNGLCOLORPOINTERVINTELPROC)(GLint size, GLenum type, void** pointer)

    ctypedef void (*PFNGLTEXCOORDPOINTERVINTELPROC)(GLint size, GLenum type, void** pointer)

    ctypedef void (*PFNGLBEGINPERFQUERYINTELPROC)(GLuint queryHandle)

    ctypedef void (*PFNGLCREATEPERFQUERYINTELPROC)(GLuint queryId, GLuint* queryHandle)

    ctypedef void (*PFNGLDELETEPERFQUERYINTELPROC)(GLuint queryHandle)

    ctypedef void (*PFNGLENDPERFQUERYINTELPROC)(GLuint queryHandle)

    ctypedef void (*PFNGLGETFIRSTPERFQUERYIDINTELPROC)(GLuint* queryId)

    ctypedef void (*PFNGLGETNEXTPERFQUERYIDINTELPROC)(GLuint queryId, GLuint* nextQueryId)

    ctypedef void (*PFNGLGETPERFCOUNTERINFOINTELPROC)(GLuint queryId, GLuint counterId, GLuint counterNameLength, GLchar* counterName, GLuint counterDescLength, GLchar* counterDesc, GLuint* counterOffset, GLuint* counterDataSize, GLuint* counterTypeEnum, GLuint* counterDataTypeEnum, GLuint64* rawCounterMaxValue)

    ctypedef void (*PFNGLGETPERFQUERYDATAINTELPROC)(GLuint queryHandle, GLuint flags, GLsizei dataSize, void* data, GLuint* bytesWritten)

    ctypedef void (*PFNGLGETPERFQUERYIDBYNAMEINTELPROC)(GLchar* queryName, GLuint* queryId)

    ctypedef void (*PFNGLGETPERFQUERYINFOINTELPROC)(GLuint queryId, GLuint queryNameLength, GLchar* queryName, GLuint* dataSize, GLuint* noCounters, GLuint* noInstances, GLuint* capsMask)

    ctypedef void (*PFNGLRESIZEBUFFERSMESAPROC)()

    ctypedef void (*PFNGLWINDOWPOS2DMESAPROC)(GLdouble x, GLdouble y)

    ctypedef void (*PFNGLWINDOWPOS2DVMESAPROC)(GLdouble* v)

    ctypedef void (*PFNGLWINDOWPOS2FMESAPROC)(GLfloat x, GLfloat y)

    ctypedef void (*PFNGLWINDOWPOS2FVMESAPROC)(GLfloat* v)

    ctypedef void (*PFNGLWINDOWPOS2IMESAPROC)(GLint x, GLint y)

    ctypedef void (*PFNGLWINDOWPOS2IVMESAPROC)(GLint* v)

    ctypedef void (*PFNGLWINDOWPOS2SMESAPROC)(GLshort x, GLshort y)

    ctypedef void (*PFNGLWINDOWPOS2SVMESAPROC)(GLshort* v)

    ctypedef void (*PFNGLWINDOWPOS3DMESAPROC)(GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLWINDOWPOS3DVMESAPROC)(GLdouble* v)

    ctypedef void (*PFNGLWINDOWPOS3FMESAPROC)(GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLWINDOWPOS3FVMESAPROC)(GLfloat* v)

    ctypedef void (*PFNGLWINDOWPOS3IMESAPROC)(GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLWINDOWPOS3IVMESAPROC)(GLint* v)

    ctypedef void (*PFNGLWINDOWPOS3SMESAPROC)(GLshort x, GLshort y, GLshort z)

    ctypedef void (*PFNGLWINDOWPOS3SVMESAPROC)(GLshort* v)

    ctypedef void (*PFNGLWINDOWPOS4DMESAPROC)(GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLWINDOWPOS4DVMESAPROC)(GLdouble* v)

    ctypedef void (*PFNGLWINDOWPOS4FMESAPROC)(GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLWINDOWPOS4FVMESAPROC)(GLfloat* v)

    ctypedef void (*PFNGLWINDOWPOS4IMESAPROC)(GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLWINDOWPOS4IVMESAPROC)(GLint* v)

    ctypedef void (*PFNGLWINDOWPOS4SMESAPROC)(GLshort x, GLshort y, GLshort z, GLshort w)

    ctypedef void (*PFNGLWINDOWPOS4SVMESAPROC)(GLshort* v)

    ctypedef void (*PFNGLBEGINCONDITIONALRENDERNVXPROC)(GLuint id)

    ctypedef void (*PFNGLENDCONDITIONALRENDERNVXPROC)()

    ctypedef void (*PFNGLLGPUNAMEDBUFFERSUBDATANVXPROC)(GLbitfield gpuMask, GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLLGPUCOPYIMAGESUBDATANVXPROC)(GLuint sourceGpu, GLbitfield destinationGpuMask, GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srxY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLLGPUINTERLOCKNVXPROC)()

    ctypedef void (*PFNGLALPHATOCOVERAGEDITHERCONTROLNVPROC)(GLenum mode)

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSNVPROC)(GLenum mode, void* indirect, GLsizei drawCount, GLsizei stride, GLint vertexBufferCount)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSNVPROC)(GLenum mode, GLenum type, void* indirect, GLsizei drawCount, GLsizei stride, GLint vertexBufferCount)

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSCOUNTNVPROC)(GLenum mode, void* indirect, GLsizei drawCount, GLsizei maxDrawCount, GLsizei stride, GLint vertexBufferCount)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSCOUNTNVPROC)(GLenum mode, GLenum type, void* indirect, GLsizei drawCount, GLsizei maxDrawCount, GLsizei stride, GLint vertexBufferCount)

    ctypedef GLuint64 (*PFNGLGETTEXTUREHANDLENVPROC)(GLuint texture)

    ctypedef GLuint64 (*PFNGLGETTEXTURESAMPLERHANDLENVPROC)(GLuint texture, GLuint sampler)

    ctypedef void (*PFNGLMAKETEXTUREHANDLERESIDENTNVPROC)(GLuint64 handle)

    ctypedef void (*PFNGLMAKETEXTUREHANDLENONRESIDENTNVPROC)(GLuint64 handle)

    ctypedef GLuint64 (*PFNGLGETIMAGEHANDLENVPROC)(GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format)

    ctypedef void (*PFNGLMAKEIMAGEHANDLERESIDENTNVPROC)(GLuint64 handle, GLenum access)

    ctypedef void (*PFNGLMAKEIMAGEHANDLENONRESIDENTNVPROC)(GLuint64 handle)

    ctypedef void (*PFNGLUNIFORMHANDLEUI64NVPROC)(GLint location, GLuint64 value)

    ctypedef void (*PFNGLUNIFORMHANDLEUI64VNVPROC)(GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMHANDLEUI64NVPROC)(GLuint program, GLint location, GLuint64 value)

    ctypedef void (*PFNGLPROGRAMUNIFORMHANDLEUI64VNVPROC)(GLuint program, GLint location, GLsizei count, GLuint64* values)

    ctypedef GLboolean (*PFNGLISTEXTUREHANDLERESIDENTNVPROC)(GLuint64 handle)

    ctypedef GLboolean (*PFNGLISIMAGEHANDLERESIDENTNVPROC)(GLuint64 handle)

    ctypedef void (*PFNGLBLENDPARAMETERINVPROC)(GLenum pname, GLint value)

    ctypedef void (*PFNGLBLENDBARRIERNVPROC)()

    ctypedef void (*PFNGLVIEWPORTPOSITIONWSCALENVPROC)(GLuint index, GLfloat xcoeff, GLfloat ycoeff)

    ctypedef void (*PFNGLCREATESTATESNVPROC)(GLsizei n, GLuint* states)

    ctypedef void (*PFNGLDELETESTATESNVPROC)(GLsizei n, GLuint* states)

    ctypedef GLboolean (*PFNGLISSTATENVPROC)(GLuint state)

    ctypedef void (*PFNGLSTATECAPTURENVPROC)(GLuint state, GLenum mode)

    ctypedef GLuint (*PFNGLGETCOMMANDHEADERNVPROC)(GLenum tokenID, GLuint size)

    ctypedef GLushort (*PFNGLGETSTAGEINDEXNVPROC)(GLenum shadertype)

    ctypedef void (*PFNGLDRAWCOMMANDSNVPROC)(GLenum primitiveMode, GLuint buffer, GLintptr* indirects, GLsizei* sizes, GLuint count)

    ctypedef void (*PFNGLDRAWCOMMANDSADDRESSNVPROC)(GLenum primitiveMode, GLuint64* indirects, GLsizei* sizes, GLuint count)

    ctypedef void (*PFNGLDRAWCOMMANDSSTATESNVPROC)(GLuint buffer, GLintptr* indirects, GLsizei* sizes, GLuint* states, GLuint* fbos, GLuint count)

    ctypedef void (*PFNGLDRAWCOMMANDSSTATESADDRESSNVPROC)(GLuint64* indirects, GLsizei* sizes, GLuint* states, GLuint* fbos, GLuint count)

    ctypedef void (*PFNGLCREATECOMMANDLISTSNVPROC)(GLsizei n, GLuint* lists)

    ctypedef void (*PFNGLDELETECOMMANDLISTSNVPROC)(GLsizei n, GLuint* lists)

    ctypedef GLboolean (*PFNGLISCOMMANDLISTNVPROC)(GLuint list)

    ctypedef void (*PFNGLLISTDRAWCOMMANDSSTATESCLIENTNVPROC)(GLuint list, GLuint segment, void** indirects, GLsizei* sizes, GLuint* states, GLuint* fbos, GLuint count)

    ctypedef void (*PFNGLCOMMANDLISTSEGMENTSNVPROC)(GLuint list, GLuint segments)

    ctypedef void (*PFNGLCOMPILECOMMANDLISTNVPROC)(GLuint list)

    ctypedef void (*PFNGLCALLCOMMANDLISTNVPROC)(GLuint list)

    ctypedef void (*PFNGLBEGINCONDITIONALRENDERNVPROC)(GLuint id, GLenum mode)

    ctypedef void (*PFNGLENDCONDITIONALRENDERNVPROC)()

    ctypedef void (*PFNGLSUBPIXELPRECISIONBIASNVPROC)(GLuint xbits, GLuint ybits)

    ctypedef void (*PFNGLCONSERVATIVERASTERPARAMETERFNVPROC)(GLenum pname, GLfloat value)

    ctypedef void (*PFNGLCONSERVATIVERASTERPARAMETERINVPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLCOPYIMAGESUBDATANVPROC)(GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLDEPTHRANGEDNVPROC)(GLdouble zNear, GLdouble zFar)

    ctypedef void (*PFNGLCLEARDEPTHDNVPROC)(GLdouble depth)

    ctypedef void (*PFNGLDEPTHBOUNDSDNVPROC)(GLdouble zmin, GLdouble zmax)

    ctypedef void (*PFNGLDRAWTEXTURENVPROC)(GLuint texture, GLuint sampler, GLfloat x0, GLfloat y0, GLfloat x1, GLfloat y1, GLfloat z, GLfloat s0, GLfloat t0, GLfloat s1, GLfloat t1)

    ctypedef void (*GLVULKANPROCNV)()

    ctypedef void (*PFNGLDRAWVKIMAGENVPROC)(GLuint64 vkImage, GLuint sampler, GLfloat x0, GLfloat y0, GLfloat x1, GLfloat y1, GLfloat z, GLfloat s0, GLfloat t0, GLfloat s1, GLfloat t1)

    ctypedef GLVULKANPROCNV (*PFNGLGETVKPROCADDRNVPROC)(GLchar* name)

    ctypedef void (*PFNGLWAITVKSEMAPHORENVPROC)(GLuint64 vkSemaphore)

    ctypedef void (*PFNGLSIGNALVKSEMAPHORENVPROC)(GLuint64 vkSemaphore)

    ctypedef void (*PFNGLSIGNALVKFENCENVPROC)(GLuint64 vkFence)

    ctypedef void (*PFNGLMAPCONTROLPOINTSNVPROC)(GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, void* points)

    ctypedef void (*PFNGLMAPPARAMETERIVNVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLMAPPARAMETERFVNVPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMAPCONTROLPOINTSNVPROC)(GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, void* points)

    ctypedef void (*PFNGLGETMAPPARAMETERIVNVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMAPPARAMETERFVNVPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMAPATTRIBPARAMETERIVNVPROC)(GLenum target, GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMAPATTRIBPARAMETERFVNVPROC)(GLenum target, GLuint index, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLEVALMAPSNVPROC)(GLenum target, GLenum mode)

    ctypedef void (*PFNGLGETMULTISAMPLEFVNVPROC)(GLenum pname, GLuint index, GLfloat* val)

    ctypedef void (*PFNGLSAMPLEMASKINDEXEDNVPROC)(GLuint index, GLbitfield mask)

    ctypedef void (*PFNGLTEXRENDERBUFFERNVPROC)(GLenum target, GLuint renderbuffer)

    ctypedef void (*PFNGLDELETEFENCESNVPROC)(GLsizei n, GLuint* fences)

    ctypedef void (*PFNGLGENFENCESNVPROC)(GLsizei n, GLuint* fences)

    ctypedef GLboolean (*PFNGLISFENCENVPROC)(GLuint fence)

    ctypedef GLboolean (*PFNGLTESTFENCENVPROC)(GLuint fence)

    ctypedef void (*PFNGLGETFENCEIVNVPROC)(GLuint fence, GLenum pname, GLint* params)

    ctypedef void (*PFNGLFINISHFENCENVPROC)(GLuint fence)

    ctypedef void (*PFNGLSETFENCENVPROC)(GLuint fence, GLenum condition)

    ctypedef void (*PFNGLFRAGMENTCOVERAGECOLORNVPROC)(GLuint color)

    ctypedef void (*PFNGLPROGRAMNAMEDPARAMETER4FNVPROC)(GLuint id, GLsizei len, GLubyte* name, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC)(GLuint id, GLsizei len, GLubyte* name, GLfloat* v)

    ctypedef void (*PFNGLPROGRAMNAMEDPARAMETER4DNVPROC)(GLuint id, GLsizei len, GLubyte* name, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC)(GLuint id, GLsizei len, GLubyte* name, GLdouble* v)

    ctypedef void (*PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC)(GLuint id, GLsizei len, GLubyte* name, GLfloat* params)

    ctypedef void (*PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC)(GLuint id, GLsizei len, GLubyte* name, GLdouble* params)

    ctypedef void (*PFNGLCOVERAGEMODULATIONTABLENVPROC)(GLsizei n, GLfloat* v)

    ctypedef void (*PFNGLGETCOVERAGEMODULATIONTABLENVPROC)(GLsizei bufsize, GLfloat* v)

    ctypedef void (*PFNGLCOVERAGEMODULATIONNVPROC)(GLenum components)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC)(GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLPROGRAMVERTEXLIMITNVPROC)(GLenum target, GLint limit)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREEXTPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face)

    ctypedef void (*PFNGLRENDERGPUMASKNVPROC)(GLbitfield mask)

    ctypedef void (*PFNGLMULTICASTBUFFERSUBDATANVPROC)(GLbitfield gpuMask, GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLMULTICASTCOPYBUFFERSUBDATANVPROC)(GLuint readGpu, GLbitfield writeGpuMask, GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)

    ctypedef void (*PFNGLMULTICASTCOPYIMAGESUBDATANVPROC)(GLuint srcGpu, GLbitfield dstGpuMask, GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth)

    ctypedef void (*PFNGLMULTICASTBLITFRAMEBUFFERNVPROC)(GLuint srcGpu, GLuint dstGpu, GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

    ctypedef void (*PFNGLMULTICASTFRAMEBUFFERSAMPLELOCATIONSFVNVPROC)(GLuint gpu, GLuint framebuffer, GLuint start, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLMULTICASTBARRIERNVPROC)()

    ctypedef void (*PFNGLMULTICASTWAITSYNCNVPROC)(GLuint signalGpu, GLbitfield waitGpuMask)

    ctypedef void (*PFNGLMULTICASTGETQUERYOBJECTIVNVPROC)(GLuint gpu, GLuint id, GLenum pname, GLint* params)

    ctypedef void (*PFNGLMULTICASTGETQUERYOBJECTUIVNVPROC)(GLuint gpu, GLuint id, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLMULTICASTGETQUERYOBJECTI64VNVPROC)(GLuint gpu, GLuint id, GLenum pname, GLint64* params)

    ctypedef void (*PFNGLMULTICASTGETQUERYOBJECTUI64VNVPROC)(GLuint gpu, GLuint id, GLenum pname, GLuint64* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERI4INVPROC)(GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERI4IVNVPROC)(GLenum target, GLuint index, GLint* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERSI4IVNVPROC)(GLenum target, GLuint index, GLsizei count, GLint* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERI4UINVPROC)(GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERI4UIVNVPROC)(GLenum target, GLuint index, GLuint* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERSI4UIVNVPROC)(GLenum target, GLuint index, GLsizei count, GLuint* params)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERI4INVPROC)(GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERI4IVNVPROC)(GLenum target, GLuint index, GLint* params)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERSI4IVNVPROC)(GLenum target, GLuint index, GLsizei count, GLint* params)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERI4UINVPROC)(GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERI4UIVNVPROC)(GLenum target, GLuint index, GLuint* params)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERSI4UIVNVPROC)(GLenum target, GLuint index, GLsizei count, GLuint* params)

    ctypedef void (*PFNGLGETPROGRAMLOCALPARAMETERIIVNVPROC)(GLenum target, GLuint index, GLint* params)

    ctypedef void (*PFNGLGETPROGRAMLOCALPARAMETERIUIVNVPROC)(GLenum target, GLuint index, GLuint* params)

    ctypedef void (*PFNGLGETPROGRAMENVPARAMETERIIVNVPROC)(GLenum target, GLuint index, GLint* params)

    ctypedef void (*PFNGLGETPROGRAMENVPARAMETERIUIVNVPROC)(GLenum target, GLuint index, GLuint* params)

    ctypedef void (*PFNGLPROGRAMSUBROUTINEPARAMETERSUIVNVPROC)(GLenum target, GLsizei count, GLuint* params)

    ctypedef void (*PFNGLGETPROGRAMSUBROUTINEPARAMETERUIVNVPROC)(GLenum target, GLuint index, GLuint* param)

    ctypedef unsigned short GLhalfNV

    ctypedef void (*PFNGLVERTEX2HNVPROC)(GLhalfNV x, GLhalfNV y)

    ctypedef void (*PFNGLVERTEX2HVNVPROC)(GLhalfNV* v)

    ctypedef void (*PFNGLVERTEX3HNVPROC)(GLhalfNV x, GLhalfNV y, GLhalfNV z)

    ctypedef void (*PFNGLVERTEX3HVNVPROC)(GLhalfNV* v)

    ctypedef void (*PFNGLVERTEX4HNVPROC)(GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w)

    ctypedef void (*PFNGLVERTEX4HVNVPROC)(GLhalfNV* v)

    ctypedef void (*PFNGLNORMAL3HNVPROC)(GLhalfNV nx, GLhalfNV ny, GLhalfNV nz)

    ctypedef void (*PFNGLNORMAL3HVNVPROC)(GLhalfNV* v)

    ctypedef void (*PFNGLCOLOR3HNVPROC)(GLhalfNV red, GLhalfNV green, GLhalfNV blue)

    ctypedef void (*PFNGLCOLOR3HVNVPROC)(GLhalfNV* v)

    ctypedef void (*PFNGLCOLOR4HNVPROC)(GLhalfNV red, GLhalfNV green, GLhalfNV blue, GLhalfNV alpha)

    ctypedef void (*PFNGLCOLOR4HVNVPROC)(GLhalfNV* v)

    ctypedef void (*PFNGLTEXCOORD1HNVPROC)(GLhalfNV s)

    ctypedef void (*PFNGLTEXCOORD1HVNVPROC)(GLhalfNV* v)

    ctypedef void (*PFNGLTEXCOORD2HNVPROC)(GLhalfNV s, GLhalfNV t)

    ctypedef void (*PFNGLTEXCOORD2HVNVPROC)(GLhalfNV* v)

    ctypedef void (*PFNGLTEXCOORD3HNVPROC)(GLhalfNV s, GLhalfNV t, GLhalfNV r)

    ctypedef void (*PFNGLTEXCOORD3HVNVPROC)(GLhalfNV* v)

    ctypedef void (*PFNGLTEXCOORD4HNVPROC)(GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q)

    ctypedef void (*PFNGLTEXCOORD4HVNVPROC)(GLhalfNV* v)

    ctypedef void (*PFNGLMULTITEXCOORD1HNVPROC)(GLenum target, GLhalfNV s)

    ctypedef void (*PFNGLMULTITEXCOORD1HVNVPROC)(GLenum target, GLhalfNV* v)

    ctypedef void (*PFNGLMULTITEXCOORD2HNVPROC)(GLenum target, GLhalfNV s, GLhalfNV t)

    ctypedef void (*PFNGLMULTITEXCOORD2HVNVPROC)(GLenum target, GLhalfNV* v)

    ctypedef void (*PFNGLMULTITEXCOORD3HNVPROC)(GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r)

    ctypedef void (*PFNGLMULTITEXCOORD3HVNVPROC)(GLenum target, GLhalfNV* v)

    ctypedef void (*PFNGLMULTITEXCOORD4HNVPROC)(GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q)

    ctypedef void (*PFNGLMULTITEXCOORD4HVNVPROC)(GLenum target, GLhalfNV* v)

    ctypedef void (*PFNGLFOGCOORDHNVPROC)(GLhalfNV fog)

    ctypedef void (*PFNGLFOGCOORDHVNVPROC)(GLhalfNV* fog)

    ctypedef void (*PFNGLSECONDARYCOLOR3HNVPROC)(GLhalfNV red, GLhalfNV green, GLhalfNV blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3HVNVPROC)(GLhalfNV* v)

    ctypedef void (*PFNGLVERTEXWEIGHTHNVPROC)(GLhalfNV weight)

    ctypedef void (*PFNGLVERTEXWEIGHTHVNVPROC)(GLhalfNV* weight)

    ctypedef void (*PFNGLVERTEXATTRIB1HNVPROC)(GLuint index, GLhalfNV x)

    ctypedef void (*PFNGLVERTEXATTRIB1HVNVPROC)(GLuint index, GLhalfNV* v)

    ctypedef void (*PFNGLVERTEXATTRIB2HNVPROC)(GLuint index, GLhalfNV x, GLhalfNV y)

    ctypedef void (*PFNGLVERTEXATTRIB2HVNVPROC)(GLuint index, GLhalfNV* v)

    ctypedef void (*PFNGLVERTEXATTRIB3HNVPROC)(GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z)

    ctypedef void (*PFNGLVERTEXATTRIB3HVNVPROC)(GLuint index, GLhalfNV* v)

    ctypedef void (*PFNGLVERTEXATTRIB4HNVPROC)(GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w)

    ctypedef void (*PFNGLVERTEXATTRIB4HVNVPROC)(GLuint index, GLhalfNV* v)

    ctypedef void (*PFNGLVERTEXATTRIBS1HVNVPROC)(GLuint index, GLsizei n, GLhalfNV* v)

    ctypedef void (*PFNGLVERTEXATTRIBS2HVNVPROC)(GLuint index, GLsizei n, GLhalfNV* v)

    ctypedef void (*PFNGLVERTEXATTRIBS3HVNVPROC)(GLuint index, GLsizei n, GLhalfNV* v)

    ctypedef void (*PFNGLVERTEXATTRIBS4HVNVPROC)(GLuint index, GLsizei n, GLhalfNV* v)

    ctypedef void (*PFNGLGETINTERNALFORMATSAMPLEIVNVPROC)(GLenum target, GLenum internalformat, GLsizei samples, GLenum pname, GLsizei bufSize, GLint* params)

    ctypedef void (*PFNGLGETMEMORYOBJECTDETACHEDRESOURCESUIVNVPROC)(GLuint memory, GLenum pname, GLint first, GLsizei count, GLuint* params)

    ctypedef void (*PFNGLRESETMEMORYOBJECTPARAMETERNVPROC)(GLuint memory, GLenum pname)

    ctypedef void (*PFNGLTEXATTACHMEMORYNVPROC)(GLenum target, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLBUFFERATTACHMEMORYNVPROC)(GLenum target, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXTUREATTACHMEMORYNVPROC)(GLuint texture, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLNAMEDBUFFERATTACHMEMORYNVPROC)(GLuint buffer, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLDRAWMESHTASKSNVPROC)(GLuint first, GLuint count)

    ctypedef void (*PFNGLDRAWMESHTASKSINDIRECTNVPROC)(GLintptr indirect)

    ctypedef void (*PFNGLMULTIDRAWMESHTASKSINDIRECTNVPROC)(GLintptr indirect, GLsizei drawcount, GLsizei stride)

    ctypedef void (*PFNGLMULTIDRAWMESHTASKSINDIRECTCOUNTNVPROC)(GLintptr indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride)

    ctypedef void (*PFNGLGENOCCLUSIONQUERIESNVPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLDELETEOCCLUSIONQUERIESNVPROC)(GLsizei n, GLuint* ids)

    ctypedef GLboolean (*PFNGLISOCCLUSIONQUERYNVPROC)(GLuint id)

    ctypedef void (*PFNGLBEGINOCCLUSIONQUERYNVPROC)(GLuint id)

    ctypedef void (*PFNGLENDOCCLUSIONQUERYNVPROC)()

    ctypedef void (*PFNGLGETOCCLUSIONQUERYIVNVPROC)(GLuint id, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETOCCLUSIONQUERYUIVNVPROC)(GLuint id, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC)(GLenum target, GLuint bindingIndex, GLuint wordIndex, GLsizei count, GLfloat* params)

    ctypedef void (*PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC)(GLenum target, GLuint bindingIndex, GLuint wordIndex, GLsizei count, GLint* params)

    ctypedef void (*PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC)(GLenum target, GLuint bindingIndex, GLuint wordIndex, GLsizei count, GLuint* params)

    ctypedef GLuint (*PFNGLGENPATHSNVPROC)(GLsizei range)

    ctypedef void (*PFNGLDELETEPATHSNVPROC)(GLuint path, GLsizei range)

    ctypedef GLboolean (*PFNGLISPATHNVPROC)(GLuint path)

    ctypedef void (*PFNGLPATHCOMMANDSNVPROC)(GLuint path, GLsizei numCommands, GLubyte* commands, GLsizei numCoords, GLenum coordType, void* coords)

    ctypedef void (*PFNGLPATHCOORDSNVPROC)(GLuint path, GLsizei numCoords, GLenum coordType, void* coords)

    ctypedef void (*PFNGLPATHSUBCOMMANDSNVPROC)(GLuint path, GLsizei commandStart, GLsizei commandsToDelete, GLsizei numCommands, GLubyte* commands, GLsizei numCoords, GLenum coordType, void* coords)

    ctypedef void (*PFNGLPATHSUBCOORDSNVPROC)(GLuint path, GLsizei coordStart, GLsizei numCoords, GLenum coordType, void* coords)

    ctypedef void (*PFNGLPATHSTRINGNVPROC)(GLuint path, GLenum format, GLsizei length, void* pathString)

    ctypedef void (*PFNGLPATHGLYPHSNVPROC)(GLuint firstPathName, GLenum fontTarget, void* fontName, GLbitfield fontStyle, GLsizei numGlyphs, GLenum type, void* charcodes, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale)

    ctypedef void (*PFNGLPATHGLYPHRANGENVPROC)(GLuint firstPathName, GLenum fontTarget, void* fontName, GLbitfield fontStyle, GLuint firstGlyph, GLsizei numGlyphs, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale)

    ctypedef void (*PFNGLWEIGHTPATHSNVPROC)(GLuint resultPath, GLsizei numPaths, GLuint* paths, GLfloat* weights)

    ctypedef void (*PFNGLCOPYPATHNVPROC)(GLuint resultPath, GLuint srcPath)

    ctypedef void (*PFNGLINTERPOLATEPATHSNVPROC)(GLuint resultPath, GLuint pathA, GLuint pathB, GLfloat weight)

    ctypedef void (*PFNGLTRANSFORMPATHNVPROC)(GLuint resultPath, GLuint srcPath, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLPATHPARAMETERIVNVPROC)(GLuint path, GLenum pname, GLint* value)

    ctypedef void (*PFNGLPATHPARAMETERINVPROC)(GLuint path, GLenum pname, GLint value)

    ctypedef void (*PFNGLPATHPARAMETERFVNVPROC)(GLuint path, GLenum pname, GLfloat* value)

    ctypedef void (*PFNGLPATHPARAMETERFNVPROC)(GLuint path, GLenum pname, GLfloat value)

    ctypedef void (*PFNGLPATHDASHARRAYNVPROC)(GLuint path, GLsizei dashCount, GLfloat* dashArray)

    ctypedef void (*PFNGLPATHSTENCILFUNCNVPROC)(GLenum func, GLint ref, GLuint mask)

    ctypedef void (*PFNGLPATHSTENCILDEPTHOFFSETNVPROC)(GLfloat factor, GLfloat units)

    ctypedef void (*PFNGLSTENCILFILLPATHNVPROC)(GLuint path, GLenum fillMode, GLuint mask)

    ctypedef void (*PFNGLSTENCILSTROKEPATHNVPROC)(GLuint path, GLint reference, GLuint mask)

    ctypedef void (*PFNGLSTENCILFILLPATHINSTANCEDNVPROC)(GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLenum fillMode, GLuint mask, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLSTENCILSTROKEPATHINSTANCEDNVPROC)(GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLint reference, GLuint mask, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLPATHCOVERDEPTHFUNCNVPROC)(GLenum func)

    ctypedef void (*PFNGLCOVERFILLPATHNVPROC)(GLuint path, GLenum coverMode)

    ctypedef void (*PFNGLCOVERSTROKEPATHNVPROC)(GLuint path, GLenum coverMode)

    ctypedef void (*PFNGLCOVERFILLPATHINSTANCEDNVPROC)(GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLenum coverMode, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLCOVERSTROKEPATHINSTANCEDNVPROC)(GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLenum coverMode, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLGETPATHPARAMETERIVNVPROC)(GLuint path, GLenum pname, GLint* value)

    ctypedef void (*PFNGLGETPATHPARAMETERFVNVPROC)(GLuint path, GLenum pname, GLfloat* value)

    ctypedef void (*PFNGLGETPATHCOMMANDSNVPROC)(GLuint path, GLubyte* commands)

    ctypedef void (*PFNGLGETPATHCOORDSNVPROC)(GLuint path, GLfloat* coords)

    ctypedef void (*PFNGLGETPATHDASHARRAYNVPROC)(GLuint path, GLfloat* dashArray)

    ctypedef void (*PFNGLGETPATHMETRICSNVPROC)(GLbitfield metricQueryMask, GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLsizei stride, GLfloat* metrics)

    ctypedef void (*PFNGLGETPATHMETRICRANGENVPROC)(GLbitfield metricQueryMask, GLuint firstPathName, GLsizei numPaths, GLsizei stride, GLfloat* metrics)

    ctypedef void (*PFNGLGETPATHSPACINGNVPROC)(GLenum pathListMode, GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLfloat advanceScale, GLfloat kerningScale, GLenum transformType, GLfloat* returnedSpacing)

    ctypedef GLboolean (*PFNGLISPOINTINFILLPATHNVPROC)(GLuint path, GLuint mask, GLfloat x, GLfloat y)

    ctypedef GLboolean (*PFNGLISPOINTINSTROKEPATHNVPROC)(GLuint path, GLfloat x, GLfloat y)

    ctypedef GLfloat (*PFNGLGETPATHLENGTHNVPROC)(GLuint path, GLsizei startSegment, GLsizei numSegments)

    ctypedef GLboolean (*PFNGLPOINTALONGPATHNVPROC)(GLuint path, GLsizei startSegment, GLsizei numSegments, GLfloat distance, GLfloat* x, GLfloat* y, GLfloat* tangentX, GLfloat* tangentY)

    ctypedef void (*PFNGLMATRIXLOAD3X2FNVPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXLOAD3X3FNVPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXLOADTRANSPOSE3X3FNVPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXMULT3X2FNVPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXMULT3X3FNVPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXMULTTRANSPOSE3X3FNVPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLSTENCILTHENCOVERFILLPATHNVPROC)(GLuint path, GLenum fillMode, GLuint mask, GLenum coverMode)

    ctypedef void (*PFNGLSTENCILTHENCOVERSTROKEPATHNVPROC)(GLuint path, GLint reference, GLuint mask, GLenum coverMode)

    ctypedef void (*PFNGLSTENCILTHENCOVERFILLPATHINSTANCEDNVPROC)(GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLenum fillMode, GLuint mask, GLenum coverMode, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLSTENCILTHENCOVERSTROKEPATHINSTANCEDNVPROC)(GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLint reference, GLuint mask, GLenum coverMode, GLenum transformType, GLfloat* transformValues)

    ctypedef GLenum (*PFNGLPATHGLYPHINDEXRANGENVPROC)(GLenum fontTarget, void* fontName, GLbitfield fontStyle, GLuint pathParameterTemplate, GLfloat emScale, GLuint baseAndCount[2])

    ctypedef GLenum (*PFNGLPATHGLYPHINDEXARRAYNVPROC)(GLuint firstPathName, GLenum fontTarget, void* fontName, GLbitfield fontStyle, GLuint firstGlyphIndex, GLsizei numGlyphs, GLuint pathParameterTemplate, GLfloat emScale)

    ctypedef GLenum (*PFNGLPATHMEMORYGLYPHINDEXARRAYNVPROC)(GLuint firstPathName, GLenum fontTarget, GLsizeiptr fontSize, void* fontData, GLsizei faceIndex, GLuint firstGlyphIndex, GLsizei numGlyphs, GLuint pathParameterTemplate, GLfloat emScale)

    ctypedef void (*PFNGLPROGRAMPATHFRAGMENTINPUTGENNVPROC)(GLuint program, GLint location, GLenum genMode, GLint components, GLfloat* coeffs)

    ctypedef void (*PFNGLGETPROGRAMRESOURCEFVNVPROC)(GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, GLenum* props, GLsizei bufSize, GLsizei* length, GLfloat* params)

    ctypedef void (*PFNGLPATHCOLORGENNVPROC)(GLenum color, GLenum genMode, GLenum colorFormat, GLfloat* coeffs)

    ctypedef void (*PFNGLPATHTEXGENNVPROC)(GLenum texCoordSet, GLenum genMode, GLint components, GLfloat* coeffs)

    ctypedef void (*PFNGLPATHFOGGENNVPROC)(GLenum genMode)

    ctypedef void (*PFNGLGETPATHCOLORGENIVNVPROC)(GLenum color, GLenum pname, GLint* value)

    ctypedef void (*PFNGLGETPATHCOLORGENFVNVPROC)(GLenum color, GLenum pname, GLfloat* value)

    ctypedef void (*PFNGLGETPATHTEXGENIVNVPROC)(GLenum texCoordSet, GLenum pname, GLint* value)

    ctypedef void (*PFNGLGETPATHTEXGENFVNVPROC)(GLenum texCoordSet, GLenum pname, GLfloat* value)

    ctypedef void (*PFNGLPIXELDATARANGENVPROC)(GLenum target, GLsizei length, void* pointer)

    ctypedef void (*PFNGLFLUSHPIXELDATARANGENVPROC)(GLenum target)

    ctypedef void (*PFNGLPOINTPARAMETERINVPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLPOINTPARAMETERIVNVPROC)(GLenum pname, GLint* params)

    ctypedef void (*PFNGLPRESENTFRAMEKEYEDNVPROC)(GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLuint key0, GLenum target1, GLuint fill1, GLuint key1)

    ctypedef void (*PFNGLPRESENTFRAMEDUALFILLNVPROC)(GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLenum target1, GLuint fill1, GLenum target2, GLuint fill2, GLenum target3, GLuint fill3)

    ctypedef void (*PFNGLGETVIDEOIVNVPROC)(GLuint video_slot, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVIDEOUIVNVPROC)(GLuint video_slot, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETVIDEOI64VNVPROC)(GLuint video_slot, GLenum pname, GLint64EXT* params)

    ctypedef void (*PFNGLGETVIDEOUI64VNVPROC)(GLuint video_slot, GLenum pname, GLuint64EXT* params)

    ctypedef void (*PFNGLPRIMITIVERESTARTNVPROC)()

    ctypedef void (*PFNGLPRIMITIVERESTARTINDEXNVPROC)(GLuint index)

    ctypedef GLint (*PFNGLQUERYRESOURCENVPROC)(GLenum queryType, GLint tagId, GLuint bufSize, GLint* buffer)

    ctypedef void (*PFNGLGENQUERYRESOURCETAGNVPROC)(GLsizei n, GLint* tagIds)

    ctypedef void (*PFNGLDELETEQUERYRESOURCETAGNVPROC)(GLsizei n, GLint* tagIds)

    ctypedef void (*PFNGLQUERYRESOURCETAGNVPROC)(GLint tagId, GLchar* tagString)

    ctypedef void (*PFNGLCOMBINERPARAMETERFVNVPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLCOMBINERPARAMETERFNVPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLCOMBINERPARAMETERIVNVPROC)(GLenum pname, GLint* params)

    ctypedef void (*PFNGLCOMBINERPARAMETERINVPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLCOMBINERINPUTNVPROC)(GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage)

    ctypedef void (*PFNGLCOMBINEROUTPUTNVPROC)(GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum)

    ctypedef void (*PFNGLFINALCOMBINERINPUTNVPROC)(GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage)

    ctypedef void (*PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC)(GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC)(GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC)(GLenum stage, GLenum portion, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC)(GLenum stage, GLenum portion, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC)(GLenum variable, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC)(GLenum variable, GLenum pname, GLint* params)

    ctypedef void (*PFNGLCOMBINERSTAGEPARAMETERFVNVPROC)(GLenum stage, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC)(GLenum stage, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLFRAMEBUFFERSAMPLELOCATIONSFVNVPROC)(GLenum target, GLuint start, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERSAMPLELOCATIONSFVNVPROC)(GLuint framebuffer, GLuint start, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLRESOLVEDEPTHVALUESNVPROC)()

    ctypedef void (*PFNGLSCISSOREXCLUSIVENVPROC)(GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLSCISSOREXCLUSIVEARRAYVNVPROC)(GLuint first, GLsizei count, GLint* v)

    ctypedef void (*PFNGLMAKEBUFFERRESIDENTNVPROC)(GLenum target, GLenum access)

    ctypedef void (*PFNGLMAKEBUFFERNONRESIDENTNVPROC)(GLenum target)

    ctypedef GLboolean (*PFNGLISBUFFERRESIDENTNVPROC)(GLenum target)

    ctypedef void (*PFNGLMAKENAMEDBUFFERRESIDENTNVPROC)(GLuint buffer, GLenum access)

    ctypedef void (*PFNGLMAKENAMEDBUFFERNONRESIDENTNVPROC)(GLuint buffer)

    ctypedef GLboolean (*PFNGLISNAMEDBUFFERRESIDENTNVPROC)(GLuint buffer)

    ctypedef void (*PFNGLGETBUFFERPARAMETERUI64VNVPROC)(GLenum target, GLenum pname, GLuint64EXT* params)

    ctypedef void (*PFNGLGETNAMEDBUFFERPARAMETERUI64VNVPROC)(GLuint buffer, GLenum pname, GLuint64EXT* params)

    ctypedef void (*PFNGLGETINTEGERUI64VNVPROC)(GLenum value, GLuint64EXT* result)

    ctypedef void (*PFNGLUNIFORMUI64NVPROC)(GLint location, GLuint64EXT value)

    ctypedef void (*PFNGLUNIFORMUI64VNVPROC)(GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMUI64NVPROC)(GLuint program, GLint location, GLuint64EXT value)

    ctypedef void (*PFNGLPROGRAMUNIFORMUI64VNVPROC)(GLuint program, GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLBINDSHADINGRATEIMAGENVPROC)(GLuint texture)

    ctypedef void (*PFNGLGETSHADINGRATEIMAGEPALETTENVPROC)(GLuint viewport, GLuint entry, GLenum* rate)

    ctypedef void (*PFNGLGETSHADINGRATESAMPLELOCATIONIVNVPROC)(GLenum rate, GLuint samples, GLuint index, GLint* location)

    ctypedef void (*PFNGLSHADINGRATEIMAGEBARRIERNVPROC)(GLboolean synchronize)

    ctypedef void (*PFNGLSHADINGRATEIMAGEPALETTENVPROC)(GLuint viewport, GLuint first, GLsizei count, GLenum* rates)

    ctypedef void (*PFNGLSHADINGRATESAMPLEORDERNVPROC)(GLenum order)

    ctypedef void (*PFNGLSHADINGRATESAMPLEORDERCUSTOMNVPROC)(GLenum rate, GLuint samples, GLint* locations)

    ctypedef void (*PFNGLTEXTUREBARRIERNVPROC)()

    ctypedef void (*PFNGLTEXIMAGE2DMULTISAMPLECOVERAGENVPROC)(GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations)

    ctypedef void (*PFNGLTEXIMAGE3DMULTISAMPLECOVERAGENVPROC)(GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations)

    ctypedef void (*PFNGLTEXTUREIMAGE2DMULTISAMPLENVPROC)(GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations)

    ctypedef void (*PFNGLTEXTUREIMAGE3DMULTISAMPLENVPROC)(GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations)

    ctypedef void (*PFNGLTEXTUREIMAGE2DMULTISAMPLECOVERAGENVPROC)(GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations)

    ctypedef void (*PFNGLTEXTUREIMAGE3DMULTISAMPLECOVERAGENVPROC)(GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations)

    ctypedef void (*PFNGLBEGINTRANSFORMFEEDBACKNVPROC)(GLenum primitiveMode)

    ctypedef void (*PFNGLENDTRANSFORMFEEDBACKNVPROC)()

    ctypedef void (*PFNGLTRANSFORMFEEDBACKATTRIBSNVPROC)(GLsizei count, GLint* attribs, GLenum bufferMode)

    ctypedef void (*PFNGLBINDBUFFERRANGENVPROC)(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLBINDBUFFEROFFSETNVPROC)(GLenum target, GLuint index, GLuint buffer, GLintptr offset)

    ctypedef void (*PFNGLBINDBUFFERBASENVPROC)(GLenum target, GLuint index, GLuint buffer)

    ctypedef void (*PFNGLTRANSFORMFEEDBACKVARYINGSNVPROC)(GLuint program, GLsizei count, GLint* locations, GLenum bufferMode)

    ctypedef void (*PFNGLACTIVEVARYINGNVPROC)(GLuint program, GLchar* name)

    ctypedef GLint (*PFNGLGETVARYINGLOCATIONNVPROC)(GLuint program, GLchar* name)

    ctypedef void (*PFNGLGETACTIVEVARYINGNVPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name)

    ctypedef void (*PFNGLGETTRANSFORMFEEDBACKVARYINGNVPROC)(GLuint program, GLuint index, GLint* location)

    ctypedef void (*PFNGLTRANSFORMFEEDBACKSTREAMATTRIBSNVPROC)(GLsizei count, GLint* attribs, GLsizei nbuffers, GLint* bufstreams, GLenum bufferMode)

    ctypedef void (*PFNGLBINDTRANSFORMFEEDBACKNVPROC)(GLenum target, GLuint id)

    ctypedef void (*PFNGLDELETETRANSFORMFEEDBACKSNVPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLGENTRANSFORMFEEDBACKSNVPROC)(GLsizei n, GLuint* ids)

    ctypedef GLboolean (*PFNGLISTRANSFORMFEEDBACKNVPROC)(GLuint id)

    ctypedef void (*PFNGLPAUSETRANSFORMFEEDBACKNVPROC)()

    ctypedef void (*PFNGLRESUMETRANSFORMFEEDBACKNVPROC)()

    ctypedef void (*PFNGLDRAWTRANSFORMFEEDBACKNVPROC)(GLenum mode, GLuint id)

    ctypedef GLintptr GLvdpauSurfaceNV

    ctypedef void (*PFNGLVDPAUINITNVPROC)(void* vdpDevice, void* getProcAddress)

    ctypedef void (*PFNGLVDPAUFININVPROC)()

    ctypedef GLvdpauSurfaceNV (*PFNGLVDPAUREGISTERVIDEOSURFACENVPROC)(void* vdpSurface, GLenum target, GLsizei numTextureNames, GLuint* textureNames)

    ctypedef GLvdpauSurfaceNV (*PFNGLVDPAUREGISTEROUTPUTSURFACENVPROC)(void* vdpSurface, GLenum target, GLsizei numTextureNames, GLuint* textureNames)

    ctypedef GLboolean (*PFNGLVDPAUISSURFACENVPROC)(GLvdpauSurfaceNV surface)

    ctypedef void (*PFNGLVDPAUUNREGISTERSURFACENVPROC)(GLvdpauSurfaceNV surface)

    ctypedef void (*PFNGLVDPAUGETSURFACEIVNVPROC)(GLvdpauSurfaceNV surface, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values)

    ctypedef void (*PFNGLVDPAUSURFACEACCESSNVPROC)(GLvdpauSurfaceNV surface, GLenum access)

    ctypedef void (*PFNGLVDPAUMAPSURFACESNVPROC)(GLsizei numSurfaces, GLvdpauSurfaceNV* surfaces)

    ctypedef void (*PFNGLVDPAUUNMAPSURFACESNVPROC)(GLsizei numSurface, GLvdpauSurfaceNV* surfaces)

    ctypedef GLvdpauSurfaceNV (*PFNGLVDPAUREGISTERVIDEOSURFACEWITHPICTURESTRUCTURENVPROC)(void* vdpSurface, GLenum target, GLsizei numTextureNames, GLuint* textureNames, GLboolean isFrameStructure)

    ctypedef void (*PFNGLFLUSHVERTEXARRAYRANGENVPROC)()

    ctypedef void (*PFNGLVERTEXARRAYRANGENVPROC)(GLsizei length, void* pointer)

    ctypedef void (*PFNGLVERTEXATTRIBL1I64NVPROC)(GLuint index, GLint64EXT x)

    ctypedef void (*PFNGLVERTEXATTRIBL2I64NVPROC)(GLuint index, GLint64EXT x, GLint64EXT y)

    ctypedef void (*PFNGLVERTEXATTRIBL3I64NVPROC)(GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z)

    ctypedef void (*PFNGLVERTEXATTRIBL4I64NVPROC)(GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)

    ctypedef void (*PFNGLVERTEXATTRIBL1I64VNVPROC)(GLuint index, GLint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL2I64VNVPROC)(GLuint index, GLint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL3I64VNVPROC)(GLuint index, GLint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL4I64VNVPROC)(GLuint index, GLint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL1UI64NVPROC)(GLuint index, GLuint64EXT x)

    ctypedef void (*PFNGLVERTEXATTRIBL2UI64NVPROC)(GLuint index, GLuint64EXT x, GLuint64EXT y)

    ctypedef void (*PFNGLVERTEXATTRIBL3UI64NVPROC)(GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)

    ctypedef void (*PFNGLVERTEXATTRIBL4UI64NVPROC)(GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)

    ctypedef void (*PFNGLVERTEXATTRIBL1UI64VNVPROC)(GLuint index, GLuint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL2UI64VNVPROC)(GLuint index, GLuint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL3UI64VNVPROC)(GLuint index, GLuint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL4UI64VNVPROC)(GLuint index, GLuint64EXT* v)

    ctypedef void (*PFNGLGETVERTEXATTRIBLI64VNVPROC)(GLuint index, GLenum pname, GLint64EXT* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBLUI64VNVPROC)(GLuint index, GLenum pname, GLuint64EXT* params)

    ctypedef void (*PFNGLVERTEXATTRIBLFORMATNVPROC)(GLuint index, GLint size, GLenum type, GLsizei stride)

    ctypedef void (*PFNGLBUFFERADDRESSRANGENVPROC)(GLenum pname, GLuint index, GLuint64EXT address, GLsizeiptr length)

    ctypedef void (*PFNGLVERTEXFORMATNVPROC)(GLint size, GLenum type, GLsizei stride)

    ctypedef void (*PFNGLNORMALFORMATNVPROC)(GLenum type, GLsizei stride)

    ctypedef void (*PFNGLCOLORFORMATNVPROC)(GLint size, GLenum type, GLsizei stride)

    ctypedef void (*PFNGLINDEXFORMATNVPROC)(GLenum type, GLsizei stride)

    ctypedef void (*PFNGLTEXCOORDFORMATNVPROC)(GLint size, GLenum type, GLsizei stride)

    ctypedef void (*PFNGLEDGEFLAGFORMATNVPROC)(GLsizei stride)

    ctypedef void (*PFNGLSECONDARYCOLORFORMATNVPROC)(GLint size, GLenum type, GLsizei stride)

    ctypedef void (*PFNGLFOGCOORDFORMATNVPROC)(GLenum type, GLsizei stride)

    ctypedef void (*PFNGLVERTEXATTRIBFORMATNVPROC)(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride)

    ctypedef void (*PFNGLVERTEXATTRIBIFORMATNVPROC)(GLuint index, GLint size, GLenum type, GLsizei stride)

    ctypedef void (*PFNGLGETINTEGERUI64I_VNVPROC)(GLenum value, GLuint index, GLuint64EXT* result)

    ctypedef GLboolean (*PFNGLAREPROGRAMSRESIDENTNVPROC)(GLsizei n, GLuint* programs, GLboolean* residences)

    ctypedef void (*PFNGLBINDPROGRAMNVPROC)(GLenum target, GLuint id)

    ctypedef void (*PFNGLDELETEPROGRAMSNVPROC)(GLsizei n, GLuint* programs)

    ctypedef void (*PFNGLEXECUTEPROGRAMNVPROC)(GLenum target, GLuint id, GLfloat* params)

    ctypedef void (*PFNGLGENPROGRAMSNVPROC)(GLsizei n, GLuint* programs)

    ctypedef void (*PFNGLGETPROGRAMPARAMETERDVNVPROC)(GLenum target, GLuint index, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLGETPROGRAMPARAMETERFVNVPROC)(GLenum target, GLuint index, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETPROGRAMIVNVPROC)(GLuint id, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETPROGRAMSTRINGNVPROC)(GLuint id, GLenum pname, GLubyte* program)

    ctypedef void (*PFNGLGETTRACKMATRIXIVNVPROC)(GLenum target, GLuint address, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBDVNVPROC)(GLuint index, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBFVNVPROC)(GLuint index, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBIVNVPROC)(GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBPOINTERVNVPROC)(GLuint index, GLenum pname, void** pointer)

    ctypedef GLboolean (*PFNGLISPROGRAMNVPROC)(GLuint id)

    ctypedef void (*PFNGLLOADPROGRAMNVPROC)(GLenum target, GLuint id, GLsizei len, GLubyte* program)

    ctypedef void (*PFNGLPROGRAMPARAMETER4DNVPROC)(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLPROGRAMPARAMETER4DVNVPROC)(GLenum target, GLuint index, GLdouble* v)

    ctypedef void (*PFNGLPROGRAMPARAMETER4FNVPROC)(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLPROGRAMPARAMETER4FVNVPROC)(GLenum target, GLuint index, GLfloat* v)

    ctypedef void (*PFNGLPROGRAMPARAMETERS4DVNVPROC)(GLenum target, GLuint index, GLsizei count, GLdouble* v)

    ctypedef void (*PFNGLPROGRAMPARAMETERS4FVNVPROC)(GLenum target, GLuint index, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLREQUESTRESIDENTPROGRAMSNVPROC)(GLsizei n, GLuint* programs)

    ctypedef void (*PFNGLTRACKMATRIXNVPROC)(GLenum target, GLuint address, GLenum matrix, GLenum transform)

    ctypedef void (*PFNGLVERTEXATTRIBPOINTERNVPROC)(GLuint index, GLint fsize, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLVERTEXATTRIB1DNVPROC)(GLuint index, GLdouble x)

    ctypedef void (*PFNGLVERTEXATTRIB1DVNVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIB1FNVPROC)(GLuint index, GLfloat x)

    ctypedef void (*PFNGLVERTEXATTRIB1FVNVPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIB1SNVPROC)(GLuint index, GLshort x)

    ctypedef void (*PFNGLVERTEXATTRIB1SVNVPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB2DNVPROC)(GLuint index, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLVERTEXATTRIB2DVNVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIB2FNVPROC)(GLuint index, GLfloat x, GLfloat y)

    ctypedef void (*PFNGLVERTEXATTRIB2FVNVPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIB2SNVPROC)(GLuint index, GLshort x, GLshort y)

    ctypedef void (*PFNGLVERTEXATTRIB2SVNVPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB3DNVPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLVERTEXATTRIB3DVNVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIB3FNVPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLVERTEXATTRIB3FVNVPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIB3SNVPROC)(GLuint index, GLshort x, GLshort y, GLshort z)

    ctypedef void (*PFNGLVERTEXATTRIB3SVNVPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB4DNVPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLVERTEXATTRIB4DVNVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIB4FNVPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLVERTEXATTRIB4FVNVPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIB4SNVPROC)(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)

    ctypedef void (*PFNGLVERTEXATTRIB4SVNVPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIB4UBNVPROC)(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)

    ctypedef void (*PFNGLVERTEXATTRIB4UBVNVPROC)(GLuint index, GLubyte* v)

    ctypedef void (*PFNGLVERTEXATTRIBS1DVNVPROC)(GLuint index, GLsizei count, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBS1FVNVPROC)(GLuint index, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIBS1SVNVPROC)(GLuint index, GLsizei count, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIBS2DVNVPROC)(GLuint index, GLsizei count, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBS2FVNVPROC)(GLuint index, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIBS2SVNVPROC)(GLuint index, GLsizei count, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIBS3DVNVPROC)(GLuint index, GLsizei count, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBS3FVNVPROC)(GLuint index, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIBS3SVNVPROC)(GLuint index, GLsizei count, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIBS4DVNVPROC)(GLuint index, GLsizei count, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBS4FVNVPROC)(GLuint index, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIBS4SVNVPROC)(GLuint index, GLsizei count, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIBS4UBVNVPROC)(GLuint index, GLsizei count, GLubyte* v)

    ctypedef void (*PFNGLVERTEXATTRIBI1IEXTPROC)(GLuint index, GLint x)

    ctypedef void (*PFNGLVERTEXATTRIBI2IEXTPROC)(GLuint index, GLint x, GLint y)

    ctypedef void (*PFNGLVERTEXATTRIBI3IEXTPROC)(GLuint index, GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLVERTEXATTRIBI4IEXTPROC)(GLuint index, GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLVERTEXATTRIBI1UIEXTPROC)(GLuint index, GLuint x)

    ctypedef void (*PFNGLVERTEXATTRIBI2UIEXTPROC)(GLuint index, GLuint x, GLuint y)

    ctypedef void (*PFNGLVERTEXATTRIBI3UIEXTPROC)(GLuint index, GLuint x, GLuint y, GLuint z)

    ctypedef void (*PFNGLVERTEXATTRIBI4UIEXTPROC)(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

    ctypedef void (*PFNGLVERTEXATTRIBI1IVEXTPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI2IVEXTPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI3IVEXTPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4IVEXTPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI1UIVEXTPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI2UIVEXTPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI3UIVEXTPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4UIVEXTPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4BVEXTPROC)(GLuint index, GLbyte* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4SVEXTPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4UBVEXTPROC)(GLuint index, GLubyte* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4USVEXTPROC)(GLuint index, GLushort* v)

    ctypedef void (*PFNGLVERTEXATTRIBIPOINTEREXTPROC)(GLuint index, GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLGETVERTEXATTRIBIIVEXTPROC)(GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBIUIVEXTPROC)(GLuint index, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLBEGINVIDEOCAPTURENVPROC)(GLuint video_capture_slot)

    ctypedef void (*PFNGLBINDVIDEOCAPTURESTREAMBUFFERNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLintptrARB offset)

    ctypedef void (*PFNGLBINDVIDEOCAPTURESTREAMTEXTURENVPROC)(GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLenum target, GLuint texture)

    ctypedef void (*PFNGLENDVIDEOCAPTURENVPROC)(GLuint video_capture_slot)

    ctypedef void (*PFNGLGETVIDEOCAPTUREIVNVPROC)(GLuint video_capture_slot, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVIDEOCAPTURESTREAMIVNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVIDEOCAPTURESTREAMFVNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETVIDEOCAPTURESTREAMDVNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble* params)

    ctypedef GLenum (*PFNGLVIDEOCAPTURENVPROC)(GLuint video_capture_slot, GLuint* sequence_num, GLuint64EXT* capture_time)

    ctypedef void (*PFNGLVIDEOCAPTURESTREAMPARAMETERIVNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum pname, GLint* params)

    ctypedef void (*PFNGLVIDEOCAPTURESTREAMPARAMETERFVNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLVIDEOCAPTURESTREAMPARAMETERDVNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLVIEWPORTSWIZZLENVPROC)(GLuint index, GLenum swizzlex, GLenum swizzley, GLenum swizzlez, GLenum swizzlew)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREMULTIVIEWOVRPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint baseViewIndex, GLsizei numViews)

    ctypedef void (*PFNGLHINTPGIPROC)(GLenum target, GLint mode)

    ctypedef void (*PFNGLDETAILTEXFUNCSGISPROC)(GLenum target, GLsizei n, GLfloat* points)

    ctypedef void (*PFNGLGETDETAILTEXFUNCSGISPROC)(GLenum target, GLfloat* points)

    ctypedef void (*PFNGLFOGFUNCSGISPROC)(GLsizei n, GLfloat* points)

    ctypedef void (*PFNGLGETFOGFUNCSGISPROC)(GLfloat* points)

    ctypedef void (*PFNGLSAMPLEMASKSGISPROC)(GLclampf value, GLboolean invert)

    ctypedef void (*PFNGLSAMPLEPATTERNSGISPROC)(GLenum pattern)

    ctypedef void (*PFNGLPIXELTEXGENPARAMETERISGISPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLPIXELTEXGENPARAMETERIVSGISPROC)(GLenum pname, GLint* params)

    ctypedef void (*PFNGLPIXELTEXGENPARAMETERFSGISPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLPIXELTEXGENPARAMETERFVSGISPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETPIXELTEXGENPARAMETERIVSGISPROC)(GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETPIXELTEXGENPARAMETERFVSGISPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLPOINTPARAMETERFSGISPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLPOINTPARAMETERFVSGISPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLSHARPENTEXFUNCSGISPROC)(GLenum target, GLsizei n, GLfloat* points)

    ctypedef void (*PFNGLGETSHARPENTEXFUNCSGISPROC)(GLenum target, GLfloat* points)

    ctypedef void (*PFNGLTEXIMAGE4DSGISPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXSUBIMAGE4DSGISPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTURECOLORMASKSGISPROC)(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)

    ctypedef void (*PFNGLGETTEXFILTERFUNCSGISPROC)(GLenum target, GLenum filter, GLfloat* weights)

    ctypedef void (*PFNGLTEXFILTERFUNCSGISPROC)(GLenum target, GLenum filter, GLsizei n, GLfloat* weights)

    ctypedef void (*PFNGLASYNCMARKERSGIXPROC)(GLuint marker)

    ctypedef GLint (*PFNGLFINISHASYNCSGIXPROC)(GLuint* markerp)

    ctypedef GLint (*PFNGLPOLLASYNCSGIXPROC)(GLuint* markerp)

    ctypedef GLuint (*PFNGLGENASYNCMARKERSSGIXPROC)(GLsizei range)

    ctypedef void (*PFNGLDELETEASYNCMARKERSSGIXPROC)(GLuint marker, GLsizei range)

    ctypedef GLboolean (*PFNGLISASYNCMARKERSGIXPROC)(GLuint marker)

    ctypedef void (*PFNGLFLUSHRASTERSGIXPROC)()

    ctypedef void (*PFNGLFRAGMENTCOLORMATERIALSGIXPROC)(GLenum face, GLenum mode)

    ctypedef void (*PFNGLFRAGMENTLIGHTFSGIXPROC)(GLenum light, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLFRAGMENTLIGHTFVSGIXPROC)(GLenum light, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLFRAGMENTLIGHTISGIXPROC)(GLenum light, GLenum pname, GLint param)

    ctypedef void (*PFNGLFRAGMENTLIGHTIVSGIXPROC)(GLenum light, GLenum pname, GLint* params)

    ctypedef void (*PFNGLFRAGMENTLIGHTMODELFSGIXPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLFRAGMENTLIGHTMODELFVSGIXPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLFRAGMENTLIGHTMODELISGIXPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLFRAGMENTLIGHTMODELIVSGIXPROC)(GLenum pname, GLint* params)

    ctypedef void (*PFNGLFRAGMENTMATERIALFSGIXPROC)(GLenum face, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLFRAGMENTMATERIALFVSGIXPROC)(GLenum face, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLFRAGMENTMATERIALISGIXPROC)(GLenum face, GLenum pname, GLint param)

    ctypedef void (*PFNGLFRAGMENTMATERIALIVSGIXPROC)(GLenum face, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETFRAGMENTLIGHTFVSGIXPROC)(GLenum light, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETFRAGMENTLIGHTIVSGIXPROC)(GLenum light, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETFRAGMENTMATERIALFVSGIXPROC)(GLenum face, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETFRAGMENTMATERIALIVSGIXPROC)(GLenum face, GLenum pname, GLint* params)

    ctypedef void (*PFNGLLIGHTENVISGIXPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLFRAMEZOOMSGIXPROC)(GLint factor)

    ctypedef void (*PFNGLIGLOOINTERFACESGIXPROC)(GLenum pname, void* params)

    ctypedef GLint (*PFNGLGETINSTRUMENTSSGIXPROC)()

    ctypedef void (*PFNGLINSTRUMENTSBUFFERSGIXPROC)(GLsizei size, GLint* buffer)

    ctypedef GLint (*PFNGLPOLLINSTRUMENTSSGIXPROC)(GLint* marker_p)

    ctypedef void (*PFNGLREADINSTRUMENTSSGIXPROC)(GLint marker)

    ctypedef void (*PFNGLSTARTINSTRUMENTSSGIXPROC)()

    ctypedef void (*PFNGLSTOPINSTRUMENTSSGIXPROC)(GLint marker)

    ctypedef void (*PFNGLGETLISTPARAMETERFVSGIXPROC)(GLuint list, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETLISTPARAMETERIVSGIXPROC)(GLuint list, GLenum pname, GLint* params)

    ctypedef void (*PFNGLLISTPARAMETERFSGIXPROC)(GLuint list, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLLISTPARAMETERFVSGIXPROC)(GLuint list, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLLISTPARAMETERISGIXPROC)(GLuint list, GLenum pname, GLint param)

    ctypedef void (*PFNGLLISTPARAMETERIVSGIXPROC)(GLuint list, GLenum pname, GLint* params)

    ctypedef void (*PFNGLPIXELTEXGENSGIXPROC)(GLenum mode)

    ctypedef void (*PFNGLDEFORMATIONMAP3DSGIXPROC)(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, GLdouble* points)

    ctypedef void (*PFNGLDEFORMATIONMAP3FSGIXPROC)(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, GLfloat* points)

    ctypedef void (*PFNGLDEFORMSGIXPROC)(GLbitfield mask)

    ctypedef void (*PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC)(GLbitfield mask)

    ctypedef void (*PFNGLREFERENCEPLANESGIXPROC)(GLdouble* equation)

    ctypedef void (*PFNGLSPRITEPARAMETERFSGIXPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLSPRITEPARAMETERFVSGIXPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLSPRITEPARAMETERISGIXPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLSPRITEPARAMETERIVSGIXPROC)(GLenum pname, GLint* params)

    ctypedef void (*PFNGLTAGSAMPLEBUFFERSGIXPROC)()

    ctypedef void (*PFNGLCOLORTABLESGIPROC)(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, void* table)

    ctypedef void (*PFNGLCOLORTABLEPARAMETERFVSGIPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLCOLORTABLEPARAMETERIVSGIPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLCOPYCOLORTABLESGIPROC)(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLGETCOLORTABLESGIPROC)(GLenum target, GLenum format, GLenum type, void* table)

    ctypedef void (*PFNGLGETCOLORTABLEPARAMETERFVSGIPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETCOLORTABLEPARAMETERIVSGIPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLFINISHTEXTURESUNXPROC)()

    ctypedef void (*PFNGLGLOBALALPHAFACTORBSUNPROC)(GLbyte factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORSSUNPROC)(GLshort factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORISUNPROC)(GLint factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORFSUNPROC)(GLfloat factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORDSUNPROC)(GLdouble factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORUBSUNPROC)(GLubyte factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORUSSUNPROC)(GLushort factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORUISUNPROC)(GLuint factor)

    ctypedef void (*PFNGLDRAWMESHARRAYSSUNPROC)(GLenum mode, GLint first, GLsizei count, GLsizei width)

    ctypedef void (*PFNGLREPLACEMENTCODEUISUNPROC)(GLuint code)

    ctypedef void (*PFNGLREPLACEMENTCODEUSSUNPROC)(GLushort code)

    ctypedef void (*PFNGLREPLACEMENTCODEUBSUNPROC)(GLubyte code)

    ctypedef void (*PFNGLREPLACEMENTCODEUIVSUNPROC)(GLuint* code)

    ctypedef void (*PFNGLREPLACEMENTCODEUSVSUNPROC)(GLushort* code)

    ctypedef void (*PFNGLREPLACEMENTCODEUBVSUNPROC)(GLubyte* code)

    ctypedef void (*PFNGLREPLACEMENTCODEPOINTERSUNPROC)(GLenum type, GLsizei stride, void** pointer)

    ctypedef void (*PFNGLCOLOR4UBVERTEX2FSUNPROC)(GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y)

    ctypedef void (*PFNGLCOLOR4UBVERTEX2FVSUNPROC)(GLubyte* c, GLfloat* v)

    ctypedef void (*PFNGLCOLOR4UBVERTEX3FSUNPROC)(GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLCOLOR4UBVERTEX3FVSUNPROC)(GLubyte* c, GLfloat* v)

    ctypedef void (*PFNGLCOLOR3FVERTEX3FSUNPROC)(GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLCOLOR3FVERTEX3FVSUNPROC)(GLfloat* c, GLfloat* v)

    ctypedef void (*PFNGLNORMAL3FVERTEX3FSUNPROC)(GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLNORMAL3FVERTEX3FVSUNPROC)(GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLCOLOR4FNORMAL3FVERTEX3FSUNPROC)(GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC)(GLfloat* c, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD2FVERTEX3FSUNPROC)(GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLTEXCOORD2FVERTEX3FVSUNPROC)(GLfloat* tc, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD4FVERTEX4FSUNPROC)(GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLTEXCOORD4FVERTEX4FVSUNPROC)(GLfloat* tc, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC)(GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC)(GLfloat* tc, GLubyte* c, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC)(GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC)(GLfloat* tc, GLfloat* c, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC)(GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC)(GLfloat* tc, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC)(GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC)(GLfloat* tc, GLfloat* c, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FSUNPROC)(GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC)(GLfloat* tc, GLfloat* c, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUIVERTEX3FSUNPROC)(GLuint rc, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUIVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC)(GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC)(GLuint* rc, GLubyte* c, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC)(GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* c, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC)(GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FSUNPROC)(GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* c, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC)(GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* tc, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC)(GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* tc, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC)(GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* tc, GLfloat* c, GLfloat* n, GLfloat* v)

    void glBlendEquationSeparateATI(GLenum modeRGB, GLenum modeA)

    ctypedef void (*PFNGLBLENDEQUATIONSEPARATEATIPROC)(GLenum modeRGB, GLenum modeA)

    ctypedef void (*PFNGLEGLIMAGETARGETTEXTURE2DOESPROC)(GLenum target, GLeglImageOES image)

    ctypedef void (*PFNGLEGLIMAGETARGETRENDERBUFFERSTORAGEOESPROC)(GLenum target, GLeglImageOES image)

    ctypedef void (*GLFWglproc)()

    ctypedef void (*GLFWvkproc)()

    ctypedef void (*GLFWerrorfun)(int, char*)

    ctypedef void (*GLFWwindowposfun)(GLFWwindow*, int, int)

    ctypedef void (*GLFWwindowsizefun)(GLFWwindow*, int, int)

    ctypedef void (*GLFWwindowclosefun)(GLFWwindow*)

    ctypedef void (*GLFWwindowrefreshfun)(GLFWwindow*)

    ctypedef void (*GLFWwindowfocusfun)(GLFWwindow*, int)

    ctypedef void (*GLFWwindowiconifyfun)(GLFWwindow*, int)

    ctypedef void (*GLFWwindowmaximizefun)(GLFWwindow*, int)

    ctypedef void (*GLFWframebuffersizefun)(GLFWwindow*, int, int)

    ctypedef void (*GLFWwindowcontentscalefun)(GLFWwindow*, float, float)

    ctypedef void (*GLFWmousebuttonfun)(GLFWwindow*, int, int, int)

    ctypedef void (*GLFWcursorposfun)(GLFWwindow*, double, double)

    ctypedef void (*GLFWcursorenterfun)(GLFWwindow*, int)

    ctypedef void (*GLFWscrollfun)(GLFWwindow*, double, double)

    ctypedef void (*GLFWkeyfun)(GLFWwindow*, int, int, int, int)

    ctypedef void (*GLFWcharfun)(GLFWwindow*, unsigned int)

    ctypedef void (*GLFWcharmodsfun)(GLFWwindow*, unsigned int, int)

    ctypedef void (*GLFWdropfun)(GLFWwindow*, int, char**)

    ctypedef void (*GLFWmonitorfun)(GLFWmonitor*, int)

    ctypedef void (*GLFWjoystickfun)(int, int)

    cdef struct GLFWvidmode:
        int width
        int height
        int redBits
        int greenBits
        int blueBits
        int refreshRate

    cdef struct GLFWgammaramp:
        unsigned short* red
        unsigned short* green
        unsigned short* blue
        unsigned int size

    cdef struct GLFWimage:
        int width
        int height
        unsigned char* pixels

    cdef struct GLFWgamepadstate:
        unsigned char buttons[15]
        float axes[6]

    int glfwInit()

    void glfwTerminate()

    void glfwInitHint(int hint, int value)

    void glfwGetVersion(int* major, int* minor, int* rev)

    char* glfwGetVersionString()

    int glfwGetError(char** description)

    GLFWerrorfun glfwSetErrorCallback(GLFWerrorfun cbfun)

    GLFWmonitor** glfwGetMonitors(int* count)

    GLFWmonitor* glfwGetPrimaryMonitor()

    void glfwGetMonitorPos(GLFWmonitor* monitor, int* xpos, int* ypos)

    void glfwGetMonitorWorkarea(GLFWmonitor* monitor, int* xpos, int* ypos, int* width, int* height)

    void glfwGetMonitorPhysicalSize(GLFWmonitor* monitor, int* widthMM, int* heightMM)

    void glfwGetMonitorContentScale(GLFWmonitor* monitor, float* xscale, float* yscale)

    char* glfwGetMonitorName(GLFWmonitor* monitor)

    void glfwSetMonitorUserPointer(GLFWmonitor* monitor, void* pointer)

    void* glfwGetMonitorUserPointer(GLFWmonitor* monitor)

    GLFWmonitorfun glfwSetMonitorCallback(GLFWmonitorfun cbfun)

    GLFWvidmode* glfwGetVideoModes(GLFWmonitor* monitor, int* count)

    GLFWvidmode* glfwGetVideoMode(GLFWmonitor* monitor)

    void glfwSetGamma(GLFWmonitor* monitor, float gamma)

    GLFWgammaramp* glfwGetGammaRamp(GLFWmonitor* monitor)

    void glfwSetGammaRamp(GLFWmonitor* monitor, GLFWgammaramp* ramp)

    void glfwDefaultWindowHints()

    void glfwWindowHint(int hint, int value)

    void glfwWindowHintString(int hint, char* value)

    GLFWwindow* glfwCreateWindow(int width, int height, char* title, GLFWmonitor* monitor, GLFWwindow* share)

    void glfwDestroyWindow(GLFWwindow* window)

    int glfwWindowShouldClose(GLFWwindow* window)

    void glfwSetWindowShouldClose(GLFWwindow* window, int value)

    void glfwSetWindowTitle(GLFWwindow* window, char* title)

    void glfwSetWindowIcon(GLFWwindow* window, int count, GLFWimage* images)

    void glfwGetWindowPos(GLFWwindow* window, int* xpos, int* ypos)

    void glfwSetWindowPos(GLFWwindow* window, int xpos, int ypos)

    void glfwGetWindowSize(GLFWwindow* window, int* width, int* height)

    void glfwSetWindowSizeLimits(GLFWwindow* window, int minwidth, int minheight, int maxwidth, int maxheight)

    void glfwSetWindowAspectRatio(GLFWwindow* window, int numer, int denom)

    void glfwSetWindowSize(GLFWwindow* window, int width, int height)

    void glfwGetFramebufferSize(GLFWwindow* window, int* width, int* height)

    void glfwGetWindowFrameSize(GLFWwindow* window, int* left, int* top, int* right, int* bottom)

    void glfwGetWindowContentScale(GLFWwindow* window, float* xscale, float* yscale)

    float glfwGetWindowOpacity(GLFWwindow* window)

    void glfwSetWindowOpacity(GLFWwindow* window, float opacity)

    void glfwIconifyWindow(GLFWwindow* window)

    void glfwRestoreWindow(GLFWwindow* window)

    void glfwMaximizeWindow(GLFWwindow* window)

    void glfwShowWindow(GLFWwindow* window)

    void glfwHideWindow(GLFWwindow* window)

    void glfwFocusWindow(GLFWwindow* window)

    void glfwRequestWindowAttention(GLFWwindow* window)

    GLFWmonitor* glfwGetWindowMonitor(GLFWwindow* window)

    void glfwSetWindowMonitor(GLFWwindow* window, GLFWmonitor* monitor, int xpos, int ypos, int width, int height, int refreshRate)

    int glfwGetWindowAttrib(GLFWwindow* window, int attrib)

    void glfwSetWindowAttrib(GLFWwindow* window, int attrib, int value)

    void glfwSetWindowUserPointer(GLFWwindow* window, void* pointer)

    void* glfwGetWindowUserPointer(GLFWwindow* window)

    GLFWwindowposfun glfwSetWindowPosCallback(GLFWwindow* window, GLFWwindowposfun cbfun)

    GLFWwindowsizefun glfwSetWindowSizeCallback(GLFWwindow* window, GLFWwindowsizefun cbfun)

    GLFWwindowclosefun glfwSetWindowCloseCallback(GLFWwindow* window, GLFWwindowclosefun cbfun)

    GLFWwindowrefreshfun glfwSetWindowRefreshCallback(GLFWwindow* window, GLFWwindowrefreshfun cbfun)

    GLFWwindowfocusfun glfwSetWindowFocusCallback(GLFWwindow* window, GLFWwindowfocusfun cbfun)

    GLFWwindowiconifyfun glfwSetWindowIconifyCallback(GLFWwindow* window, GLFWwindowiconifyfun cbfun)

    GLFWwindowmaximizefun glfwSetWindowMaximizeCallback(GLFWwindow* window, GLFWwindowmaximizefun cbfun)

    GLFWframebuffersizefun glfwSetFramebufferSizeCallback(GLFWwindow* window, GLFWframebuffersizefun cbfun)

    GLFWwindowcontentscalefun glfwSetWindowContentScaleCallback(GLFWwindow* window, GLFWwindowcontentscalefun cbfun)

    void glfwPollEvents()

    void glfwWaitEvents()

    void glfwWaitEventsTimeout(double timeout)

    void glfwPostEmptyEvent()

    int glfwGetInputMode(GLFWwindow* window, int mode)

    void glfwSetInputMode(GLFWwindow* window, int mode, int value)

    int glfwRawMouseMotionSupported()

    char* glfwGetKeyName(int key, int scancode)

    int glfwGetKeyScancode(int key)

    int glfwGetKey(GLFWwindow* window, int key)

    int glfwGetMouseButton(GLFWwindow* window, int button)

    void glfwGetCursorPos(GLFWwindow* window, double* xpos, double* ypos)

    void glfwSetCursorPos(GLFWwindow* window, double xpos, double ypos)

    GLFWcursor* glfwCreateCursor(GLFWimage* image, int xhot, int yhot)

    GLFWcursor* glfwCreateStandardCursor(int shape)

    void glfwDestroyCursor(GLFWcursor* cursor)

    void glfwSetCursor(GLFWwindow* window, GLFWcursor* cursor)

    GLFWkeyfun glfwSetKeyCallback(GLFWwindow* window, GLFWkeyfun cbfun)

    GLFWcharfun glfwSetCharCallback(GLFWwindow* window, GLFWcharfun cbfun)

    GLFWcharmodsfun glfwSetCharModsCallback(GLFWwindow* window, GLFWcharmodsfun cbfun)

    GLFWmousebuttonfun glfwSetMouseButtonCallback(GLFWwindow* window, GLFWmousebuttonfun cbfun)

    GLFWcursorposfun glfwSetCursorPosCallback(GLFWwindow* window, GLFWcursorposfun cbfun)

    GLFWcursorenterfun glfwSetCursorEnterCallback(GLFWwindow* window, GLFWcursorenterfun cbfun)

    GLFWscrollfun glfwSetScrollCallback(GLFWwindow* window, GLFWscrollfun cbfun)

    GLFWdropfun glfwSetDropCallback(GLFWwindow* window, GLFWdropfun cbfun)

    int glfwJoystickPresent(int jid)

    float* glfwGetJoystickAxes(int jid, int* count)

    unsigned char* glfwGetJoystickButtons(int jid, int* count)

    unsigned char* glfwGetJoystickHats(int jid, int* count)

    char* glfwGetJoystickName(int jid)

    char* glfwGetJoystickGUID(int jid)

    void glfwSetJoystickUserPointer(int jid, void* pointer)

    void* glfwGetJoystickUserPointer(int jid)

    int glfwJoystickIsGamepad(int jid)

    GLFWjoystickfun glfwSetJoystickCallback(GLFWjoystickfun cbfun)

    int glfwUpdateGamepadMappings(char* string)

    char* glfwGetGamepadName(int jid)

    int glfwGetGamepadState(int jid, GLFWgamepadstate* state)

    void glfwSetClipboardString(GLFWwindow* window, char* string)

    char* glfwGetClipboardString(GLFWwindow* window)

    double glfwGetTime()

    void glfwSetTime(double time)

    uint64_t glfwGetTimerValue()

    uint64_t glfwGetTimerFrequency()

    void glfwMakeContextCurrent(GLFWwindow* window)

    GLFWwindow* glfwGetCurrentContext()

    void glfwSwapBuffers(GLFWwindow* window)

    void glfwSwapInterval(int interval)

    int glfwExtensionSupported(char* extension)

    GLFWglproc glfwGetProcAddress(char* procname)

    int glfwVulkanSupported()

    char** glfwGetRequiredInstanceExtensions(uint32_t* count)
