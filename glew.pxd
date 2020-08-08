from libc.stdint cimport int64_t, uint64_t

cdef extern from "<GL/glew.h>":

    int GL_TEXTURE0
    int GL_FRAMEBUFFER
    int GL_COLOR_ATTACHMENT0
    int GL_FRAMEBUFFER_COMPLETE

    struct __GLsync:
        pass

    struct GLUnurbs:
        pass

    struct GLUquadric:
        pass

    struct GLUtesselator:
        pass

    struct _cl_context:
        pass

    struct _cl_event:
        pass

    ctypedef unsigned int GLenum

    ctypedef unsigned int GLbitfield

    ctypedef unsigned int GLuint

    ctypedef int GLint

    ctypedef int GLsizei

    ctypedef unsigned char GLboolean

    ctypedef signed char GLbyte

    ctypedef short GLshort

    ctypedef unsigned char GLubyte

    ctypedef unsigned short GLushort

    ctypedef unsigned long GLulong

    ctypedef float GLfloat

    ctypedef float GLclampf

    ctypedef double GLdouble

    ctypedef double GLclampd

    ctypedef void GLvoid

    ctypedef int64_t GLint64EXT

    ctypedef uint64_t GLuint64EXT

    ctypedef GLint64EXT GLint64

    ctypedef GLuint64EXT GLuint64

    ctypedef __GLsync* GLsync

    ctypedef char GLchar

    void glAccum(GLenum op, GLfloat value)

    void glAlphaFunc(GLenum func, GLclampf ref)

    GLboolean glAreTexturesResident(GLsizei n, GLuint* textures, GLboolean* residences)

    void glArrayElement(GLint i)

    void glBegin(GLenum mode)

    void glBindTexture(GLenum target, GLuint texture)

    void glBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, GLubyte* bitmap)

    void glBlendFunc(GLenum sfactor, GLenum dfactor)

    void glCallList(GLuint list)

    void glCallLists(GLsizei n, GLenum type, void* lists)

    void glClear(GLbitfield mask)

    void glClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)

    void glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)

    void glClearDepth(GLclampd depth)

    void glClearIndex(GLfloat c)

    void glClearStencil(GLint s)

    void glClipPlane(GLenum plane, GLdouble* equation)

    void glColor3b(GLbyte red, GLbyte green, GLbyte blue)

    void glColor3bv(GLbyte* v)

    void glColor3d(GLdouble red, GLdouble green, GLdouble blue)

    void glColor3dv(GLdouble* v)

    void glColor3f(GLfloat red, GLfloat green, GLfloat blue)

    void glColor3fv(GLfloat* v)

    void glColor3i(GLint red, GLint green, GLint blue)

    void glColor3iv(GLint* v)

    void glColor3s(GLshort red, GLshort green, GLshort blue)

    void glColor3sv(GLshort* v)

    void glColor3ub(GLubyte red, GLubyte green, GLubyte blue)

    void glColor3ubv(GLubyte* v)

    void glColor3ui(GLuint red, GLuint green, GLuint blue)

    void glColor3uiv(GLuint* v)

    void glColor3us(GLushort red, GLushort green, GLushort blue)

    void glColor3usv(GLushort* v)

    void glColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha)

    void glColor4bv(GLbyte* v)

    void glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha)

    void glColor4dv(GLdouble* v)

    void glColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)

    void glColor4fv(GLfloat* v)

    void glColor4i(GLint red, GLint green, GLint blue, GLint alpha)

    void glColor4iv(GLint* v)

    void glColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha)

    void glColor4sv(GLshort* v)

    void glColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha)

    void glColor4ubv(GLubyte* v)

    void glColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha)

    void glColor4uiv(GLuint* v)

    void glColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha)

    void glColor4usv(GLushort* v)

    void glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)

    void glColorMaterial(GLenum face, GLenum mode)

    void glColorPointer(GLint size, GLenum type, GLsizei stride, void* pointer)

    void glCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type)

    void glCopyTexImage1D(GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLint border)

    void glCopyTexImage2D(GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

    void glCopyTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

    void glCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    void glCullFace(GLenum mode)

    void glDeleteLists(GLuint list, GLsizei range)

    void glDeleteTextures(GLsizei n, GLuint* textures)

    void glDepthFunc(GLenum func)

    void glDepthMask(GLboolean flag)

    void glDepthRange(GLclampd zNear, GLclampd zFar)

    void glDisable(GLenum cap)

    void glDisableClientState(GLenum array)

    void glDrawArrays(GLenum mode, GLint first, GLsizei count)

    void glDrawBuffer(GLenum mode)

    void glDrawElements(GLenum mode, GLsizei count, GLenum type, void* indices)

    void glDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels)

    void glEdgeFlag(GLboolean flag)

    void glEdgeFlagPointer(GLsizei stride, void* pointer)

    void glEdgeFlagv(GLboolean* flag)

    void glEnable(GLenum cap)

    void glEnableClientState(GLenum array)

    void glEnd()

    void glEndList()

    void glEvalCoord1d(GLdouble u)

    void glEvalCoord1dv(GLdouble* u)

    void glEvalCoord1f(GLfloat u)

    void glEvalCoord1fv(GLfloat* u)

    void glEvalCoord2d(GLdouble u, GLdouble v)

    void glEvalCoord2dv(GLdouble* u)

    void glEvalCoord2f(GLfloat u, GLfloat v)

    void glEvalCoord2fv(GLfloat* u)

    void glEvalMesh1(GLenum mode, GLint i1, GLint i2)

    void glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2)

    void glEvalPoint1(GLint i)

    void glEvalPoint2(GLint i, GLint j)

    void glFeedbackBuffer(GLsizei size, GLenum type, GLfloat* buffer)

    void glFinish()

    void glFlush()

    void glFogf(GLenum pname, GLfloat param)

    void glFogfv(GLenum pname, GLfloat* params)

    void glFogi(GLenum pname, GLint param)

    void glFogiv(GLenum pname, GLint* params)

    void glFrontFace(GLenum mode)

    void glFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)

    GLuint glGenLists(GLsizei range)

    void glGenTextures(GLsizei n, GLuint* textures)

    void glGetBooleanv(GLenum pname, GLboolean* params)

    void glGetClipPlane(GLenum plane, GLdouble* equation)

    void glGetDoublev(GLenum pname, GLdouble* params)

    GLenum glGetError()

    void glGetFloatv(GLenum pname, GLfloat* params)

    void glGetIntegerv(GLenum pname, GLint* params)

    void glGetLightfv(GLenum light, GLenum pname, GLfloat* params)

    void glGetLightiv(GLenum light, GLenum pname, GLint* params)

    void glGetMapdv(GLenum target, GLenum query, GLdouble* v)

    void glGetMapfv(GLenum target, GLenum query, GLfloat* v)

    void glGetMapiv(GLenum target, GLenum query, GLint* v)

    void glGetMaterialfv(GLenum face, GLenum pname, GLfloat* params)

    void glGetMaterialiv(GLenum face, GLenum pname, GLint* params)

    void glGetPixelMapfv(GLenum map, GLfloat* values)

    void glGetPixelMapuiv(GLenum map, GLuint* values)

    void glGetPixelMapusv(GLenum map, GLushort* values)

    void glGetPointerv(GLenum pname, void** params)

    void glGetPolygonStipple(GLubyte* mask)

    GLubyte* glGetString(GLenum name)

    void glGetTexEnvfv(GLenum target, GLenum pname, GLfloat* params)

    void glGetTexEnviv(GLenum target, GLenum pname, GLint* params)

    void glGetTexGendv(GLenum coord, GLenum pname, GLdouble* params)

    void glGetTexGenfv(GLenum coord, GLenum pname, GLfloat* params)

    void glGetTexGeniv(GLenum coord, GLenum pname, GLint* params)

    void glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, void* pixels)

    void glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat* params)

    void glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint* params)

    void glGetTexParameterfv(GLenum target, GLenum pname, GLfloat* params)

    void glGetTexParameteriv(GLenum target, GLenum pname, GLint* params)

    void glHint(GLenum target, GLenum mode)

    void glIndexMask(GLuint mask)

    void glIndexPointer(GLenum type, GLsizei stride, void* pointer)

    void glIndexd(GLdouble c)

    void glIndexdv(GLdouble* c)

    void glIndexf(GLfloat c)

    void glIndexfv(GLfloat* c)

    void glIndexi(GLint c)

    void glIndexiv(GLint* c)

    void glIndexs(GLshort c)

    void glIndexsv(GLshort* c)

    void glIndexub(GLubyte c)

    void glIndexubv(GLubyte* c)

    void glInitNames()

    void glInterleavedArrays(GLenum format, GLsizei stride, void* pointer)

    GLboolean glIsEnabled(GLenum cap)

    GLboolean glIsList(GLuint list)

    GLboolean glIsTexture(GLuint texture)

    void glLightModelf(GLenum pname, GLfloat param)

    void glLightModelfv(GLenum pname, GLfloat* params)

    void glLightModeli(GLenum pname, GLint param)

    void glLightModeliv(GLenum pname, GLint* params)

    void glLightf(GLenum light, GLenum pname, GLfloat param)

    void glLightfv(GLenum light, GLenum pname, GLfloat* params)

    void glLighti(GLenum light, GLenum pname, GLint param)

    void glLightiv(GLenum light, GLenum pname, GLint* params)

    void glLineStipple(GLint factor, GLushort pattern)

    void glLineWidth(GLfloat width)

    void glListBase(GLuint base)

    void glLoadIdentity()

    void glLoadMatrixd(GLdouble* m)

    void glLoadMatrixf(GLfloat* m)

    void glLoadName(GLuint name)

    void glLogicOp(GLenum opcode)

    void glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, GLdouble* points)

    void glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, GLfloat* points)

    void glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble* points)

    void glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat* points)

    void glMapGrid1d(GLint un, GLdouble u1, GLdouble u2)

    void glMapGrid1f(GLint un, GLfloat u1, GLfloat u2)

    void glMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2)

    void glMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2)

    void glMaterialf(GLenum face, GLenum pname, GLfloat param)

    void glMaterialfv(GLenum face, GLenum pname, GLfloat* params)

    void glMateriali(GLenum face, GLenum pname, GLint param)

    void glMaterialiv(GLenum face, GLenum pname, GLint* params)

    void glMatrixMode(GLenum mode)

    void glMultMatrixd(GLdouble* m)

    void glMultMatrixf(GLfloat* m)

    void glNewList(GLuint list, GLenum mode)

    void glNormal3b(GLbyte nx, GLbyte ny, GLbyte nz)

    void glNormal3bv(GLbyte* v)

    void glNormal3d(GLdouble nx, GLdouble ny, GLdouble nz)

    void glNormal3dv(GLdouble* v)

    void glNormal3f(GLfloat nx, GLfloat ny, GLfloat nz)

    void glNormal3fv(GLfloat* v)

    void glNormal3i(GLint nx, GLint ny, GLint nz)

    void glNormal3iv(GLint* v)

    void glNormal3s(GLshort nx, GLshort ny, GLshort nz)

    void glNormal3sv(GLshort* v)

    void glNormalPointer(GLenum type, GLsizei stride, void* pointer)

    void glOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)

    void glPassThrough(GLfloat token)

    void glPixelMapfv(GLenum map, GLsizei mapsize, GLfloat* values)

    void glPixelMapuiv(GLenum map, GLsizei mapsize, GLuint* values)

    void glPixelMapusv(GLenum map, GLsizei mapsize, GLushort* values)

    void glPixelStoref(GLenum pname, GLfloat param)

    void glPixelStorei(GLenum pname, GLint param)

    void glPixelTransferf(GLenum pname, GLfloat param)

    void glPixelTransferi(GLenum pname, GLint param)

    void glPixelZoom(GLfloat xfactor, GLfloat yfactor)

    void glPointSize(GLfloat size)

    void glPolygonMode(GLenum face, GLenum mode)

    void glPolygonOffset(GLfloat factor, GLfloat units)

    void glPolygonStipple(GLubyte* mask)

    void glPopAttrib()

    void glPopClientAttrib()

    void glPopMatrix()

    void glPopName()

    void glPrioritizeTextures(GLsizei n, GLuint* textures, GLclampf* priorities)

    void glPushAttrib(GLbitfield mask)

    void glPushClientAttrib(GLbitfield mask)

    void glPushMatrix()

    void glPushName(GLuint name)

    void glRasterPos2d(GLdouble x, GLdouble y)

    void glRasterPos2dv(GLdouble* v)

    void glRasterPos2f(GLfloat x, GLfloat y)

    void glRasterPos2fv(GLfloat* v)

    void glRasterPos2i(GLint x, GLint y)

    void glRasterPos2iv(GLint* v)

    void glRasterPos2s(GLshort x, GLshort y)

    void glRasterPos2sv(GLshort* v)

    void glRasterPos3d(GLdouble x, GLdouble y, GLdouble z)

    void glRasterPos3dv(GLdouble* v)

    void glRasterPos3f(GLfloat x, GLfloat y, GLfloat z)

    void glRasterPos3fv(GLfloat* v)

    void glRasterPos3i(GLint x, GLint y, GLint z)

    void glRasterPos3iv(GLint* v)

    void glRasterPos3s(GLshort x, GLshort y, GLshort z)

    void glRasterPos3sv(GLshort* v)

    void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    void glRasterPos4dv(GLdouble* v)

    void glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    void glRasterPos4fv(GLfloat* v)

    void glRasterPos4i(GLint x, GLint y, GLint z, GLint w)

    void glRasterPos4iv(GLint* v)

    void glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w)

    void glRasterPos4sv(GLshort* v)

    void glReadBuffer(GLenum mode)

    void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels)

    void glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2)

    void glRectdv(GLdouble* v1, GLdouble* v2)

    void glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2)

    void glRectfv(GLfloat* v1, GLfloat* v2)

    void glRecti(GLint x1, GLint y1, GLint x2, GLint y2)

    void glRectiv(GLint* v1, GLint* v2)

    void glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2)

    void glRectsv(GLshort* v1, GLshort* v2)

    GLint glRenderMode(GLenum mode)

    void glRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z)

    void glRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z)

    void glScaled(GLdouble x, GLdouble y, GLdouble z)

    void glScalef(GLfloat x, GLfloat y, GLfloat z)

    void glScissor(GLint x, GLint y, GLsizei width, GLsizei height)

    void glSelectBuffer(GLsizei size, GLuint* buffer)

    void glShadeModel(GLenum mode)

    void glStencilFunc(GLenum func, GLint ref, GLuint mask)

    void glStencilMask(GLuint mask)

    void glStencilOp(GLenum fail, GLenum zfail, GLenum zpass)

    void glTexCoord1d(GLdouble s)

    void glTexCoord1dv(GLdouble* v)

    void glTexCoord1f(GLfloat s)

    void glTexCoord1fv(GLfloat* v)

    void glTexCoord1i(GLint s)

    void glTexCoord1iv(GLint* v)

    void glTexCoord1s(GLshort s)

    void glTexCoord1sv(GLshort* v)

    void glTexCoord2d(GLdouble s, GLdouble t)

    void glTexCoord2dv(GLdouble* v)

    void glTexCoord2f(GLfloat s, GLfloat t)

    void glTexCoord2fv(GLfloat* v)

    void glTexCoord2i(GLint s, GLint t)

    void glTexCoord2iv(GLint* v)

    void glTexCoord2s(GLshort s, GLshort t)

    void glTexCoord2sv(GLshort* v)

    void glTexCoord3d(GLdouble s, GLdouble t, GLdouble r)

    void glTexCoord3dv(GLdouble* v)

    void glTexCoord3f(GLfloat s, GLfloat t, GLfloat r)

    void glTexCoord3fv(GLfloat* v)

    void glTexCoord3i(GLint s, GLint t, GLint r)

    void glTexCoord3iv(GLint* v)

    void glTexCoord3s(GLshort s, GLshort t, GLshort r)

    void glTexCoord3sv(GLshort* v)

    void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q)

    void glTexCoord4dv(GLdouble* v)

    void glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q)

    void glTexCoord4fv(GLfloat* v)

    void glTexCoord4i(GLint s, GLint t, GLint r, GLint q)

    void glTexCoord4iv(GLint* v)

    void glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q)

    void glTexCoord4sv(GLshort* v)

    void glTexCoordPointer(GLint size, GLenum type, GLsizei stride, void* pointer)

    void glTexEnvf(GLenum target, GLenum pname, GLfloat param)

    void glTexEnvfv(GLenum target, GLenum pname, GLfloat* params)

    void glTexEnvi(GLenum target, GLenum pname, GLint param)

    void glTexEnviv(GLenum target, GLenum pname, GLint* params)

    void glTexGend(GLenum coord, GLenum pname, GLdouble param)

    void glTexGendv(GLenum coord, GLenum pname, GLdouble* params)

    void glTexGenf(GLenum coord, GLenum pname, GLfloat param)

    void glTexGenfv(GLenum coord, GLenum pname, GLfloat* params)

    void glTexGeni(GLenum coord, GLenum pname, GLint param)

    void glTexGeniv(GLenum coord, GLenum pname, GLint* params)

    void glTexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, void* pixels)

    void glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, void* pixels)

    void glTexParameterf(GLenum target, GLenum pname, GLfloat param)

    void glTexParameterfv(GLenum target, GLenum pname, GLfloat* params)

    void glTexParameteri(GLenum target, GLenum pname, GLint param)

    void glTexParameteriv(GLenum target, GLenum pname, GLint* params)

    void glTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, void* pixels)

    void glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels)

    void glTranslated(GLdouble x, GLdouble y, GLdouble z)

    void glTranslatef(GLfloat x, GLfloat y, GLfloat z)

    void glVertex2d(GLdouble x, GLdouble y)

    void glVertex2dv(GLdouble* v)

    void glVertex2f(GLfloat x, GLfloat y)

    void glVertex2fv(GLfloat* v)

    void glVertex2i(GLint x, GLint y)

    void glVertex2iv(GLint* v)

    void glVertex2s(GLshort x, GLshort y)

    void glVertex2sv(GLshort* v)

    void glVertex3d(GLdouble x, GLdouble y, GLdouble z)

    void glVertex3dv(GLdouble* v)

    void glVertex3f(GLfloat x, GLfloat y, GLfloat z)

    void glVertex3fv(GLfloat* v)

    void glVertex3i(GLint x, GLint y, GLint z)

    void glVertex3iv(GLint* v)

    void glVertex3s(GLshort x, GLshort y, GLshort z)

    void glVertex3sv(GLshort* v)

    void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    void glVertex4dv(GLdouble* v)

    void glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    void glVertex4fv(GLfloat* v)

    void glVertex4i(GLint x, GLint y, GLint z, GLint w)

    void glVertex4iv(GLint* v)

    void glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w)

    void glVertex4sv(GLshort* v)

    void glVertexPointer(GLint size, GLenum type, GLsizei stride, void* pointer)

    void glViewport(GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef GLUnurbs GLUnurbsObj

    ctypedef GLUquadric GLUquadricObj

    ctypedef GLUtesselator GLUtesselatorObj

    ctypedef GLUtesselator GLUtriangulatorObj

    ctypedef void (*_GLUfuncptr)()

    void gluBeginCurve(GLUnurbs* nurb)

    void gluBeginPolygon(GLUtesselator* tess)

    void gluBeginSurface(GLUnurbs* nurb)

    void gluBeginTrim(GLUnurbs* nurb)

    GLint gluBuild1DMipmapLevels(GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, GLint level, GLint base, GLint max, void* data)

    GLint gluBuild1DMipmaps(GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, void* data)

    GLint gluBuild2DMipmapLevels(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLint level, GLint base, GLint max, void* data)

    GLint gluBuild2DMipmaps(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, void* data)

    GLint gluBuild3DMipmapLevels(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLint level, GLint base, GLint max, void* data)

    GLint gluBuild3DMipmaps(GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* data)

    GLboolean gluCheckExtension(GLubyte* extName, GLubyte* extString)

    void gluCylinder(GLUquadric* quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks)

    void gluDeleteNurbsRenderer(GLUnurbs* nurb)

    void gluDeleteQuadric(GLUquadric* quad)

    void gluDeleteTess(GLUtesselator* tess)

    void gluDisk(GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops)

    void gluEndCurve(GLUnurbs* nurb)

    void gluEndPolygon(GLUtesselator* tess)

    void gluEndSurface(GLUnurbs* nurb)

    void gluEndTrim(GLUnurbs* nurb)

    GLubyte* gluErrorString(GLenum error)

    void gluGetNurbsProperty(GLUnurbs* nurb, GLenum property, GLfloat* data)

    GLubyte* gluGetString(GLenum name)

    void gluGetTessProperty(GLUtesselator* tess, GLenum which, GLdouble* data)

    void gluLoadSamplingMatrices(GLUnurbs* nurb, GLfloat* model, GLfloat* perspective, GLint* view)

    void gluLookAt(GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ)

    GLUnurbs* gluNewNurbsRenderer()

    GLUquadric* gluNewQuadric()

    GLUtesselator* gluNewTess()

    void gluNextContour(GLUtesselator* tess, GLenum type)

    void gluNurbsCallback(GLUnurbs* nurb, GLenum which, _GLUfuncptr CallBackFunc)

    void gluNurbsCallbackData(GLUnurbs* nurb, GLvoid* userData)

    void gluNurbsCallbackDataEXT(GLUnurbs* nurb, GLvoid* userData)

    void gluNurbsCurve(GLUnurbs* nurb, GLint knotCount, GLfloat* knots, GLint stride, GLfloat* control, GLint order, GLenum type)

    void gluNurbsProperty(GLUnurbs* nurb, GLenum property, GLfloat value)

    void gluNurbsSurface(GLUnurbs* nurb, GLint sKnotCount, GLfloat* sKnots, GLint tKnotCount, GLfloat* tKnots, GLint sStride, GLint tStride, GLfloat* control, GLint sOrder, GLint tOrder, GLenum type)

    void gluOrtho2D(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top)

    void gluPartialDisk(GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep)

    void gluPerspective(GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar)

    void gluPickMatrix(GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, GLint* viewport)

    GLint gluProject(GLdouble objX, GLdouble objY, GLdouble objZ, GLdouble* model, GLdouble* proj, GLint* view, GLdouble* winX, GLdouble* winY, GLdouble* winZ)

    void gluPwlCurve(GLUnurbs* nurb, GLint count, GLfloat* data, GLint stride, GLenum type)

    void gluQuadricCallback(GLUquadric* quad, GLenum which, _GLUfuncptr CallBackFunc)

    void gluQuadricDrawStyle(GLUquadric* quad, GLenum draw)

    void gluQuadricNormals(GLUquadric* quad, GLenum normal)

    void gluQuadricOrientation(GLUquadric* quad, GLenum orientation)

    void gluQuadricTexture(GLUquadric* quad, GLboolean texture)

    GLint gluScaleImage(GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, void* dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid* dataOut)

    void gluSphere(GLUquadric* quad, GLdouble radius, GLint slices, GLint stacks)

    void gluTessBeginContour(GLUtesselator* tess)

    void gluTessBeginPolygon(GLUtesselator* tess, GLvoid* data)

    void gluTessCallback(GLUtesselator* tess, GLenum which, _GLUfuncptr CallBackFunc)

    void gluTessEndContour(GLUtesselator* tess)

    void gluTessEndPolygon(GLUtesselator* tess)

    void gluTessNormal(GLUtesselator* tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ)

    void gluTessProperty(GLUtesselator* tess, GLenum which, GLdouble data)

    void gluTessVertex(GLUtesselator* tess, GLdouble* location, GLvoid* data)

    GLint gluUnProject(GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble* model, GLdouble* proj, GLint* view, GLdouble* objX, GLdouble* objY, GLdouble* objZ)

    GLint gluUnProject4(GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble clipW, GLdouble* model, GLdouble* proj, GLint* view, GLdouble nearVal, GLdouble farVal, GLdouble* objX, GLdouble* objY, GLdouble* objZ, GLdouble* objW)

    ctypedef void (*PFNGLCOPYTEXSUBIMAGE3DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLDRAWRANGEELEMENTSPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, void* indices)

    ctypedef void (*PFNGLTEXIMAGE3DPROC)(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXSUBIMAGE3DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLACTIVETEXTUREPROC)(GLenum texture)

    ctypedef void (*PFNGLCLIENTACTIVETEXTUREPROC)(GLenum texture)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE1DPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE2DPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE3DPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC)(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLGETCOMPRESSEDTEXIMAGEPROC)(GLenum target, GLint lod, void* img)

    ctypedef void (*PFNGLLOADTRANSPOSEMATRIXDPROC)(GLdouble m[16])

    ctypedef void (*PFNGLLOADTRANSPOSEMATRIXFPROC)(GLfloat m[16])

    ctypedef void (*PFNGLMULTTRANSPOSEMATRIXDPROC)(GLdouble m[16])

    ctypedef void (*PFNGLMULTTRANSPOSEMATRIXFPROC)(GLfloat m[16])

    ctypedef void (*PFNGLMULTITEXCOORD1DPROC)(GLenum target, GLdouble s)

    ctypedef void (*PFNGLMULTITEXCOORD1DVPROC)(GLenum target, GLdouble* v)

    ctypedef void (*PFNGLMULTITEXCOORD1FPROC)(GLenum target, GLfloat s)

    ctypedef void (*PFNGLMULTITEXCOORD1FVPROC)(GLenum target, GLfloat* v)

    ctypedef void (*PFNGLMULTITEXCOORD1IPROC)(GLenum target, GLint s)

    ctypedef void (*PFNGLMULTITEXCOORD1IVPROC)(GLenum target, GLint* v)

    ctypedef void (*PFNGLMULTITEXCOORD1SPROC)(GLenum target, GLshort s)

    ctypedef void (*PFNGLMULTITEXCOORD1SVPROC)(GLenum target, GLshort* v)

    ctypedef void (*PFNGLMULTITEXCOORD2DPROC)(GLenum target, GLdouble s, GLdouble t)

    ctypedef void (*PFNGLMULTITEXCOORD2DVPROC)(GLenum target, GLdouble* v)

    ctypedef void (*PFNGLMULTITEXCOORD2FPROC)(GLenum target, GLfloat s, GLfloat t)

    ctypedef void (*PFNGLMULTITEXCOORD2FVPROC)(GLenum target, GLfloat* v)

    ctypedef void (*PFNGLMULTITEXCOORD2IPROC)(GLenum target, GLint s, GLint t)

    ctypedef void (*PFNGLMULTITEXCOORD2IVPROC)(GLenum target, GLint* v)

    ctypedef void (*PFNGLMULTITEXCOORD2SPROC)(GLenum target, GLshort s, GLshort t)

    ctypedef void (*PFNGLMULTITEXCOORD2SVPROC)(GLenum target, GLshort* v)

    ctypedef void (*PFNGLMULTITEXCOORD3DPROC)(GLenum target, GLdouble s, GLdouble t, GLdouble r)

    ctypedef void (*PFNGLMULTITEXCOORD3DVPROC)(GLenum target, GLdouble* v)

    ctypedef void (*PFNGLMULTITEXCOORD3FPROC)(GLenum target, GLfloat s, GLfloat t, GLfloat r)

    ctypedef void (*PFNGLMULTITEXCOORD3FVPROC)(GLenum target, GLfloat* v)

    ctypedef void (*PFNGLMULTITEXCOORD3IPROC)(GLenum target, GLint s, GLint t, GLint r)

    ctypedef void (*PFNGLMULTITEXCOORD3IVPROC)(GLenum target, GLint* v)

    ctypedef void (*PFNGLMULTITEXCOORD3SPROC)(GLenum target, GLshort s, GLshort t, GLshort r)

    ctypedef void (*PFNGLMULTITEXCOORD3SVPROC)(GLenum target, GLshort* v)

    ctypedef void (*PFNGLMULTITEXCOORD4DPROC)(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)

    ctypedef void (*PFNGLMULTITEXCOORD4DVPROC)(GLenum target, GLdouble* v)

    ctypedef void (*PFNGLMULTITEXCOORD4FPROC)(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)

    ctypedef void (*PFNGLMULTITEXCOORD4FVPROC)(GLenum target, GLfloat* v)

    ctypedef void (*PFNGLMULTITEXCOORD4IPROC)(GLenum target, GLint s, GLint t, GLint r, GLint q)

    ctypedef void (*PFNGLMULTITEXCOORD4IVPROC)(GLenum target, GLint* v)

    ctypedef void (*PFNGLMULTITEXCOORD4SPROC)(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)

    ctypedef void (*PFNGLMULTITEXCOORD4SVPROC)(GLenum target, GLshort* v)

    ctypedef void (*PFNGLSAMPLECOVERAGEPROC)(GLclampf value, GLboolean invert)

    ctypedef void (*PFNGLBLENDCOLORPROC)(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)

    ctypedef void (*PFNGLBLENDEQUATIONPROC)(GLenum mode)

    ctypedef void (*PFNGLBLENDFUNCSEPARATEPROC)(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)

    ctypedef void (*PFNGLFOGCOORDPOINTERPROC)(GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLFOGCOORDDPROC)(GLdouble coord)

    ctypedef void (*PFNGLFOGCOORDDVPROC)(GLdouble* coord)

    ctypedef void (*PFNGLFOGCOORDFPROC)(GLfloat coord)

    ctypedef void (*PFNGLFOGCOORDFVPROC)(GLfloat* coord)

    ctypedef void (*PFNGLMULTIDRAWARRAYSPROC)(GLenum mode, GLint* first, GLsizei* count, GLsizei drawcount)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSPROC)(GLenum mode, GLsizei* count, GLenum type, void** indices, GLsizei drawcount)

    ctypedef void (*PFNGLPOINTPARAMETERFPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLPOINTPARAMETERFVPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLPOINTPARAMETERIPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLPOINTPARAMETERIVPROC)(GLenum pname, GLint* params)

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

    ctypedef void (*PFNGLWINDOWPOS2DVPROC)(GLdouble* p)

    ctypedef void (*PFNGLWINDOWPOS2FPROC)(GLfloat x, GLfloat y)

    ctypedef void (*PFNGLWINDOWPOS2FVPROC)(GLfloat* p)

    ctypedef void (*PFNGLWINDOWPOS2IPROC)(GLint x, GLint y)

    ctypedef void (*PFNGLWINDOWPOS2IVPROC)(GLint* p)

    ctypedef void (*PFNGLWINDOWPOS2SPROC)(GLshort x, GLshort y)

    ctypedef void (*PFNGLWINDOWPOS2SVPROC)(GLshort* p)

    ctypedef void (*PFNGLWINDOWPOS3DPROC)(GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLWINDOWPOS3DVPROC)(GLdouble* p)

    ctypedef void (*PFNGLWINDOWPOS3FPROC)(GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLWINDOWPOS3FVPROC)(GLfloat* p)

    ctypedef void (*PFNGLWINDOWPOS3IPROC)(GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLWINDOWPOS3IVPROC)(GLint* p)

    ctypedef void (*PFNGLWINDOWPOS3SPROC)(GLshort x, GLshort y, GLshort z)

    ctypedef void (*PFNGLWINDOWPOS3SVPROC)(GLshort* p)

    ctypedef ptrdiff_t GLintptr

    ctypedef ptrdiff_t GLsizeiptr

    ctypedef void (*PFNGLBEGINQUERYPROC)(GLenum target, GLuint id)

    ctypedef void (*PFNGLBINDBUFFERPROC)(GLenum target, GLuint buffer)

    ctypedef void (*PFNGLBUFFERDATAPROC)(GLenum target, GLsizeiptr size, void* data, GLenum usage)

    ctypedef void (*PFNGLBUFFERSUBDATAPROC)(GLenum target, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLDELETEBUFFERSPROC)(GLsizei n, GLuint* buffers)

    ctypedef void (*PFNGLDELETEQUERIESPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLENDQUERYPROC)(GLenum target)

    ctypedef void (*PFNGLGENBUFFERSPROC)(GLsizei n, GLuint* buffers)

    ctypedef void (*PFNGLGENQUERIESPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLGETBUFFERPARAMETERIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETBUFFERPOINTERVPROC)(GLenum target, GLenum pname, void** params)

    ctypedef void (*PFNGLGETBUFFERSUBDATAPROC)(GLenum target, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLGETQUERYOBJECTIVPROC)(GLuint id, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETQUERYOBJECTUIVPROC)(GLuint id, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETQUERYIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISBUFFERPROC)(GLuint buffer)

    ctypedef GLboolean (*PFNGLISQUERYPROC)(GLuint id)

    ctypedef void* (*PFNGLMAPBUFFERPROC)(GLenum target, GLenum access)

    ctypedef GLboolean (*PFNGLUNMAPBUFFERPROC)(GLenum target)

    ctypedef void (*PFNGLATTACHSHADERPROC)(GLuint program, GLuint shader)

    ctypedef void (*PFNGLBINDATTRIBLOCATIONPROC)(GLuint program, GLuint index, GLchar* name)

    ctypedef void (*PFNGLBLENDEQUATIONSEPARATEPROC)(GLenum modeRGB, GLenum modeAlpha)

    ctypedef void (*PFNGLCOMPILESHADERPROC)(GLuint shader)

    ctypedef GLuint (*PFNGLCREATEPROGRAMPROC)()

    ctypedef GLuint (*PFNGLCREATESHADERPROC)(GLenum type)

    ctypedef void (*PFNGLDELETEPROGRAMPROC)(GLuint program)

    ctypedef void (*PFNGLDELETESHADERPROC)(GLuint shader)

    ctypedef void (*PFNGLDETACHSHADERPROC)(GLuint program, GLuint shader)

    ctypedef void (*PFNGLDISABLEVERTEXATTRIBARRAYPROC)(GLuint index)

    ctypedef void (*PFNGLDRAWBUFFERSPROC)(GLsizei n, GLenum* bufs)

    ctypedef void (*PFNGLENABLEVERTEXATTRIBARRAYPROC)(GLuint index)

    ctypedef void (*PFNGLGETACTIVEATTRIBPROC)(GLuint program, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLchar* name)

    ctypedef void (*PFNGLGETACTIVEUNIFORMPROC)(GLuint program, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLchar* name)

    ctypedef void (*PFNGLGETATTACHEDSHADERSPROC)(GLuint program, GLsizei maxCount, GLsizei* count, GLuint* shaders)

    ctypedef GLint (*PFNGLGETATTRIBLOCATIONPROC)(GLuint program, GLchar* name)

    ctypedef void (*PFNGLGETPROGRAMINFOLOGPROC)(GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog)

    ctypedef void (*PFNGLGETPROGRAMIVPROC)(GLuint program, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETSHADERINFOLOGPROC)(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog)

    ctypedef void (*PFNGLGETSHADERSOURCEPROC)(GLuint obj, GLsizei maxLength, GLsizei* length, GLchar* source)

    ctypedef void (*PFNGLGETSHADERIVPROC)(GLuint shader, GLenum pname, GLint* param)

    ctypedef GLint (*PFNGLGETUNIFORMLOCATIONPROC)(GLuint program, GLchar* name) nogil

    ctypedef void (*PFNGLGETUNIFORMFVPROC)(GLuint program, GLint location, GLfloat* params)

    ctypedef void (*PFNGLGETUNIFORMIVPROC)(GLuint program, GLint location, GLint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBPOINTERVPROC)(GLuint index, GLenum pname, void** pointer)

    ctypedef void (*PFNGLGETVERTEXATTRIBDVPROC)(GLuint index, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBFVPROC)(GLuint index, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBIVPROC)(GLuint index, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISPROGRAMPROC)(GLuint program)

    ctypedef GLboolean (*PFNGLISSHADERPROC)(GLuint shader)

    ctypedef void (*PFNGLLINKPROGRAMPROC)(GLuint program)

    ctypedef void (*PFNGLSHADERSOURCEPROC)(GLuint shader, GLsizei count, GLchar** string, GLint* length)

    ctypedef void (*PFNGLSTENCILFUNCSEPARATEPROC)(GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask)

    ctypedef void (*PFNGLSTENCILMASKSEPARATEPROC)(GLenum face, GLuint mask)

    ctypedef void (*PFNGLSTENCILOPSEPARATEPROC)(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass)

    ctypedef void (*PFNGLUNIFORM1FPROC)(GLint location, GLfloat v0)

    ctypedef void (*PFNGLUNIFORM1FVPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM1IPROC)(GLint location, GLint v0)

    ctypedef void (*PFNGLUNIFORM1IVPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORM2FPROC)(GLint location, GLfloat v0, GLfloat v1)

    ctypedef void (*PFNGLUNIFORM2FVPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM2IPROC)(GLint location, GLint v0, GLint v1)

    ctypedef void (*PFNGLUNIFORM2IVPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORM3FPROC)(GLint location, GLfloat v0, GLfloat v1, GLfloat v2)

    ctypedef void (*PFNGLUNIFORM3FVPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM3IPROC)(GLint location, GLint v0, GLint v1, GLint v2)

    ctypedef void (*PFNGLUNIFORM3IVPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORM4FPROC)(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)

    ctypedef void (*PFNGLUNIFORM4FVPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM4IPROC)(GLint location, GLint v0, GLint v1, GLint v2, GLint v3)

    ctypedef void (*PFNGLUNIFORM4IVPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORMMATRIX2FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUSEPROGRAMPROC)(GLuint program) nogil

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

    ctypedef void (*PFNGLUNIFORMMATRIX2X4FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3X2FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3X4FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4X2FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4X3FVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLBEGINCONDITIONALRENDERPROC)(GLuint id, GLenum mode)

    ctypedef void (*PFNGLBEGINTRANSFORMFEEDBACKPROC)(GLenum primitiveMode)

    ctypedef void (*PFNGLBINDFRAGDATALOCATIONPROC)(GLuint program, GLuint colorNumber, GLchar* name)

    ctypedef void (*PFNGLCLAMPCOLORPROC)(GLenum target, GLenum clamp)

    ctypedef void (*PFNGLCLEARBUFFERFIPROC)(GLenum buffer, GLint drawBuffer, GLfloat depth, GLint stencil)

    ctypedef void (*PFNGLCLEARBUFFERFVPROC)(GLenum buffer, GLint drawBuffer, GLfloat* value)

    ctypedef void (*PFNGLCLEARBUFFERIVPROC)(GLenum buffer, GLint drawBuffer, GLint* value)

    ctypedef void (*PFNGLCLEARBUFFERUIVPROC)(GLenum buffer, GLint drawBuffer, GLuint* value)

    ctypedef void (*PFNGLCOLORMASKIPROC)(GLuint buf, GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)

    ctypedef void (*PFNGLDISABLEIPROC)(GLenum cap, GLuint index)

    ctypedef void (*PFNGLENABLEIPROC)(GLenum cap, GLuint index)

    ctypedef void (*PFNGLENDCONDITIONALRENDERPROC)()

    ctypedef void (*PFNGLENDTRANSFORMFEEDBACKPROC)()

    ctypedef void (*PFNGLGETBOOLEANI_VPROC)(GLenum pname, GLuint index, GLboolean* data)

    ctypedef GLint (*PFNGLGETFRAGDATALOCATIONPROC)(GLuint program, GLchar* name)

    ctypedef GLubyte* (*PFNGLGETSTRINGIPROC)(GLenum name, GLuint index)

    ctypedef void (*PFNGLGETTEXPARAMETERIIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTEXPARAMETERIUIVPROC)(GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETTRANSFORMFEEDBACKVARYINGPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name)

    ctypedef void (*PFNGLGETUNIFORMUIVPROC)(GLuint program, GLint location, GLuint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBIIVPROC)(GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBIUIVPROC)(GLuint index, GLenum pname, GLuint* params)

    ctypedef GLboolean (*PFNGLISENABLEDIPROC)(GLenum cap, GLuint index)

    ctypedef void (*PFNGLTEXPARAMETERIIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLTEXPARAMETERIUIVPROC)(GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLTRANSFORMFEEDBACKVARYINGSPROC)(GLuint program, GLsizei count, GLchar** varyings, GLenum bufferMode)

    ctypedef void (*PFNGLUNIFORM1UIPROC)(GLint location, GLuint v0)

    ctypedef void (*PFNGLUNIFORM1UIVPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLUNIFORM2UIPROC)(GLint location, GLuint v0, GLuint v1)

    ctypedef void (*PFNGLUNIFORM2UIVPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLUNIFORM3UIPROC)(GLint location, GLuint v0, GLuint v1, GLuint v2)

    ctypedef void (*PFNGLUNIFORM3UIVPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLUNIFORM4UIPROC)(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)

    ctypedef void (*PFNGLUNIFORM4UIVPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLVERTEXATTRIBI1IPROC)(GLuint index, GLint v0)

    ctypedef void (*PFNGLVERTEXATTRIBI1IVPROC)(GLuint index, GLint* v0)

    ctypedef void (*PFNGLVERTEXATTRIBI1UIPROC)(GLuint index, GLuint v0)

    ctypedef void (*PFNGLVERTEXATTRIBI1UIVPROC)(GLuint index, GLuint* v0)

    ctypedef void (*PFNGLVERTEXATTRIBI2IPROC)(GLuint index, GLint v0, GLint v1)

    ctypedef void (*PFNGLVERTEXATTRIBI2IVPROC)(GLuint index, GLint* v0)

    ctypedef void (*PFNGLVERTEXATTRIBI2UIPROC)(GLuint index, GLuint v0, GLuint v1)

    ctypedef void (*PFNGLVERTEXATTRIBI2UIVPROC)(GLuint index, GLuint* v0)

    ctypedef void (*PFNGLVERTEXATTRIBI3IPROC)(GLuint index, GLint v0, GLint v1, GLint v2)

    ctypedef void (*PFNGLVERTEXATTRIBI3IVPROC)(GLuint index, GLint* v0)

    ctypedef void (*PFNGLVERTEXATTRIBI3UIPROC)(GLuint index, GLuint v0, GLuint v1, GLuint v2)

    ctypedef void (*PFNGLVERTEXATTRIBI3UIVPROC)(GLuint index, GLuint* v0)

    ctypedef void (*PFNGLVERTEXATTRIBI4BVPROC)(GLuint index, GLbyte* v0)

    ctypedef void (*PFNGLVERTEXATTRIBI4IPROC)(GLuint index, GLint v0, GLint v1, GLint v2, GLint v3)

    ctypedef void (*PFNGLVERTEXATTRIBI4IVPROC)(GLuint index, GLint* v0)

    ctypedef void (*PFNGLVERTEXATTRIBI4SVPROC)(GLuint index, GLshort* v0)

    ctypedef void (*PFNGLVERTEXATTRIBI4UBVPROC)(GLuint index, GLubyte* v0)

    ctypedef void (*PFNGLVERTEXATTRIBI4UIPROC)(GLuint index, GLuint v0, GLuint v1, GLuint v2, GLuint v3)

    ctypedef void (*PFNGLVERTEXATTRIBI4UIVPROC)(GLuint index, GLuint* v0)

    ctypedef void (*PFNGLVERTEXATTRIBI4USVPROC)(GLuint index, GLushort* v0)

    ctypedef void (*PFNGLVERTEXATTRIBIPOINTERPROC)(GLuint index, GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLDRAWARRAYSINSTANCEDPROC)(GLenum mode, GLint first, GLsizei count, GLsizei primcount)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei primcount)

    ctypedef void (*PFNGLPRIMITIVERESTARTINDEXPROC)(GLuint buffer)

    ctypedef void (*PFNGLTEXBUFFERPROC)(GLenum target, GLenum internalFormat, GLuint buffer)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level)

    ctypedef void (*PFNGLGETBUFFERPARAMETERI64VPROC)(GLenum target, GLenum value, GLint64* data)

    ctypedef void (*PFNGLGETINTEGER64I_VPROC)(GLenum pname, GLuint index, GLint64* data)

    ctypedef void (*PFNGLVERTEXATTRIBDIVISORPROC)(GLuint index, GLuint divisor)

    ctypedef void (*PFNGLBLENDEQUATIONSEPARATEIPROC)(GLuint buf, GLenum modeRGB, GLenum modeAlpha)

    ctypedef void (*PFNGLBLENDEQUATIONIPROC)(GLuint buf, GLenum mode)

    ctypedef void (*PFNGLBLENDFUNCSEPARATEIPROC)(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)

    ctypedef void (*PFNGLBLENDFUNCIPROC)(GLuint buf, GLenum src, GLenum dst)

    ctypedef void (*PFNGLMINSAMPLESHADINGPROC)(GLclampf value)

    ctypedef GLenum (*PFNGLGETGRAPHICSRESETSTATUSPROC)()

    ctypedef void (*PFNGLGETNCOMPRESSEDTEXIMAGEPROC)(GLenum target, GLint lod, GLsizei bufSize, GLvoid* pixels)

    ctypedef void (*PFNGLGETNTEXIMAGEPROC)(GLenum tex, GLint level, GLenum format, GLenum type, GLsizei bufSize, GLvoid* pixels)

    ctypedef void (*PFNGLGETNUNIFORMDVPROC)(GLuint program, GLint location, GLsizei bufSize, GLdouble* params)

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTCOUNTPROC)(GLenum mode, GLvoid* indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTPROC)(GLenum mode, GLenum type, GLvoid* indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride)

    ctypedef void (*PFNGLSPECIALIZESHADERPROC)(GLuint shader, GLchar* pEntryPoint, GLuint numSpecializationConstants, GLuint* pConstantIndex, GLuint* pConstantValue)

    ctypedef void (*PFNGLTBUFFERMASK3DFXPROC)(GLuint mask)

    ctypedef void (*GLDEBUGPROCAMD)(GLuint id, GLenum category, GLenum severity, GLsizei length, GLchar* message, void* userParam)

    ctypedef void (*PFNGLDEBUGMESSAGECALLBACKAMDPROC)(GLDEBUGPROCAMD callback, void* userParam)

    ctypedef void (*PFNGLDEBUGMESSAGEENABLEAMDPROC)(GLenum category, GLenum severity, GLsizei count, GLuint* ids, GLboolean enabled)

    ctypedef void (*PFNGLDEBUGMESSAGEINSERTAMDPROC)(GLenum category, GLenum severity, GLuint id, GLsizei length, GLchar* buf)

    ctypedef GLuint (*PFNGLGETDEBUGMESSAGELOGAMDPROC)(GLuint count, GLsizei bufsize, GLenum* categories, GLuint* severities, GLuint* ids, GLsizei* lengths, GLchar* message)

    ctypedef void (*PFNGLBLENDEQUATIONINDEXEDAMDPROC)(GLuint buf, GLenum mode)

    ctypedef void (*PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC)(GLuint buf, GLenum modeRGB, GLenum modeAlpha)

    ctypedef void (*PFNGLBLENDFUNCINDEXEDAMDPROC)(GLuint buf, GLenum src, GLenum dst)

    ctypedef void (*PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC)(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)

    ctypedef void (*PFNGLFRAMEBUFFERSAMPLEPOSITIONSFVAMDPROC)(GLenum target, GLuint numsamples, GLuint pixelindex, GLfloat* values)

    ctypedef void (*PFNGLGETFRAMEBUFFERPARAMETERFVAMDPROC)(GLenum target, GLenum pname, GLuint numsamples, GLuint pixelindex, GLsizei size, GLfloat* values)

    ctypedef void (*PFNGLGETNAMEDFRAMEBUFFERPARAMETERFVAMDPROC)(GLuint framebuffer, GLenum pname, GLuint numsamples, GLuint pixelindex, GLsizei size, GLfloat* values)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERSAMPLEPOSITIONSFVAMDPROC)(GLuint framebuffer, GLuint numsamples, GLuint pixelindex, GLfloat* values)

    ctypedef void (*PFNGLVERTEXATTRIBPARAMETERIAMDPROC)(GLuint index, GLenum pname, GLint param)

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTAMDPROC)(GLenum mode, void* indirect, GLsizei primcount, GLsizei stride)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTAMDPROC)(GLenum mode, GLenum type, void* indirect, GLsizei primcount, GLsizei stride)

    ctypedef void (*PFNGLDELETENAMESAMDPROC)(GLenum identifier, GLuint num, GLuint* names)

    ctypedef void (*PFNGLGENNAMESAMDPROC)(GLenum identifier, GLuint num, GLuint* names)

    ctypedef GLboolean (*PFNGLISNAMEAMDPROC)(GLenum identifier, GLuint name)

    ctypedef void (*PFNGLQUERYOBJECTPARAMETERUIAMDPROC)(GLenum target, GLuint id, GLenum pname, GLuint param)

    ctypedef void (*PFNGLBEGINPERFMONITORAMDPROC)(GLuint monitor)

    ctypedef void (*PFNGLDELETEPERFMONITORSAMDPROC)(GLsizei n, GLuint* monitors)

    ctypedef void (*PFNGLENDPERFMONITORAMDPROC)(GLuint monitor)

    ctypedef void (*PFNGLGENPERFMONITORSAMDPROC)(GLsizei n, GLuint* monitors)

    ctypedef void (*PFNGLGETPERFMONITORCOUNTERDATAAMDPROC)(GLuint monitor, GLenum pname, GLsizei dataSize, GLuint* data, GLint* bytesWritten)

    ctypedef void (*PFNGLGETPERFMONITORCOUNTERINFOAMDPROC)(GLuint group, GLuint counter, GLenum pname, void* data)

    ctypedef void (*PFNGLGETPERFMONITORCOUNTERSTRINGAMDPROC)(GLuint group, GLuint counter, GLsizei bufSize, GLsizei* length, GLchar* counterString)

    ctypedef void (*PFNGLGETPERFMONITORCOUNTERSAMDPROC)(GLuint group, GLint* numCounters, GLint* maxActiveCounters, GLsizei countersSize, GLuint* counters)

    ctypedef void (*PFNGLGETPERFMONITORGROUPSTRINGAMDPROC)(GLuint group, GLsizei bufSize, GLsizei* length, GLchar* groupString)

    ctypedef void (*PFNGLGETPERFMONITORGROUPSAMDPROC)(GLint* numGroups, GLsizei groupsSize, GLuint* groups)

    ctypedef void (*PFNGLSELECTPERFMONITORCOUNTERSAMDPROC)(GLuint monitor, GLboolean enable, GLuint group, GLint numCounters, GLuint* counterList)

    ctypedef void (*PFNGLSETMULTISAMPLEFVAMDPROC)(GLenum pname, GLuint index, GLfloat* val)

    ctypedef void (*PFNGLTEXSTORAGESPARSEAMDPROC)(GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags)

    ctypedef void (*PFNGLTEXTURESTORAGESPARSEAMDPROC)(GLuint texture, GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags)

    ctypedef void (*PFNGLSTENCILOPVALUEAMDPROC)(GLenum face, GLuint value)

    ctypedef void (*PFNGLTESSELLATIONFACTORAMDPROC)(GLfloat factor)

    ctypedef void (*PFNGLTESSELLATIONMODEAMDPROC)(GLenum mode)

    ctypedef void (*PFNGLBLITFRAMEBUFFERANGLEPROC)(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEMULTISAMPLEANGLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLDRAWARRAYSINSTANCEDANGLEPROC)(GLenum mode, GLint first, GLsizei count, GLsizei primcount)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDANGLEPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei primcount)

    ctypedef void (*PFNGLVERTEXATTRIBDIVISORANGLEPROC)(GLuint index, GLuint divisor)

    ctypedef void (*PFNGLBEGINQUERYANGLEPROC)(GLenum target, GLuint id)

    ctypedef void (*PFNGLDELETEQUERIESANGLEPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLENDQUERYANGLEPROC)(GLenum target)

    ctypedef void (*PFNGLGENQUERIESANGLEPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLGETQUERYOBJECTI64VANGLEPROC)(GLuint id, GLenum pname, GLint64* params)

    ctypedef void (*PFNGLGETQUERYOBJECTIVANGLEPROC)(GLuint id, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETQUERYOBJECTUI64VANGLEPROC)(GLuint id, GLenum pname, GLuint64* params)

    ctypedef void (*PFNGLGETQUERYOBJECTUIVANGLEPROC)(GLuint id, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETQUERYIVANGLEPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISQUERYANGLEPROC)(GLuint id)

    ctypedef void (*PFNGLQUERYCOUNTERANGLEPROC)(GLuint id, GLenum target)

    ctypedef void (*PFNGLGETTRANSLATEDSHADERSOURCEANGLEPROC)(GLuint shader, GLsizei bufsize, GLsizei* length, GLchar* source)

    ctypedef void (*PFNGLCOPYTEXTURELEVELSAPPLEPROC)(GLuint destinationTexture, GLuint sourceTexture, GLint sourceBaseLevel, GLsizei sourceLevelCount)

    ctypedef void (*PFNGLDRAWELEMENTARRAYAPPLEPROC)(GLenum mode, GLint first, GLsizei count)

    ctypedef void (*PFNGLDRAWRANGEELEMENTARRAYAPPLEPROC)(GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count)

    ctypedef void (*PFNGLELEMENTPOINTERAPPLEPROC)(GLenum type, void* pointer)

    ctypedef void (*PFNGLMULTIDRAWELEMENTARRAYAPPLEPROC)(GLenum mode, GLint* first, GLsizei* count, GLsizei primcount)

    ctypedef void (*PFNGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC)(GLenum mode, GLuint start, GLuint end, GLint* first, GLsizei* count, GLsizei primcount)

    ctypedef void (*PFNGLDELETEFENCESAPPLEPROC)(GLsizei n, GLuint* fences)

    ctypedef void (*PFNGLFINISHFENCEAPPLEPROC)(GLuint fence)

    ctypedef void (*PFNGLFINISHOBJECTAPPLEPROC)(GLenum object, GLint name)

    ctypedef void (*PFNGLGENFENCESAPPLEPROC)(GLsizei n, GLuint* fences)

    ctypedef GLboolean (*PFNGLISFENCEAPPLEPROC)(GLuint fence)

    ctypedef void (*PFNGLSETFENCEAPPLEPROC)(GLuint fence)

    ctypedef GLboolean (*PFNGLTESTFENCEAPPLEPROC)(GLuint fence)

    ctypedef GLboolean (*PFNGLTESTOBJECTAPPLEPROC)(GLenum object, GLuint name)

    ctypedef void (*PFNGLBUFFERPARAMETERIAPPLEPROC)(GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC)(GLenum target, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEMULTISAMPLEAPPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLRESOLVEMULTISAMPLEFRAMEBUFFERAPPLEPROC)()

    ctypedef void (*PFNGLGETOBJECTPARAMETERIVAPPLEPROC)(GLenum objectType, GLuint name, GLenum pname, GLint* params)

    ctypedef GLenum (*PFNGLOBJECTPURGEABLEAPPLEPROC)(GLenum objectType, GLuint name, GLenum option)

    ctypedef GLenum (*PFNGLOBJECTUNPURGEABLEAPPLEPROC)(GLenum objectType, GLuint name, GLenum option)

    ctypedef GLenum (*PFNGLCLIENTWAITSYNCAPPLEPROC)(GLsync GLsync, GLbitfield flags, GLuint64 timeout)

    ctypedef void (*PFNGLDELETESYNCAPPLEPROC)(GLsync GLsync)

    ctypedef GLsync (*PFNGLFENCESYNCAPPLEPROC)(GLenum condition, GLbitfield flags)

    ctypedef void (*PFNGLGETINTEGER64VAPPLEPROC)(GLenum pname, GLint64* params)

    ctypedef void (*PFNGLGETSYNCIVAPPLEPROC)(GLsync GLsync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values)

    ctypedef GLboolean (*PFNGLISSYNCAPPLEPROC)(GLsync GLsync)

    ctypedef void (*PFNGLWAITSYNCAPPLEPROC)(GLsync GLsync, GLbitfield flags, GLuint64 timeout)

    ctypedef void (*PFNGLGETTEXPARAMETERPOINTERVAPPLEPROC)(GLenum target, GLenum pname, void** params)

    ctypedef void (*PFNGLTEXTURERANGEAPPLEPROC)(GLenum target, GLsizei length, void* pointer)

    ctypedef void (*PFNGLBINDVERTEXARRAYAPPLEPROC)(GLuint array)

    ctypedef void (*PFNGLDELETEVERTEXARRAYSAPPLEPROC)(GLsizei n, GLuint* arrays)

    ctypedef void (*PFNGLGENVERTEXARRAYSAPPLEPROC)(GLsizei n, GLuint* arrays)

    ctypedef GLboolean (*PFNGLISVERTEXARRAYAPPLEPROC)(GLuint array)

    ctypedef void (*PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC)(GLsizei length, void* pointer)

    ctypedef void (*PFNGLVERTEXARRAYPARAMETERIAPPLEPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLVERTEXARRAYRANGEAPPLEPROC)(GLsizei length, void* pointer)

    ctypedef void (*PFNGLDISABLEVERTEXATTRIBAPPLEPROC)(GLuint index, GLenum pname)

    ctypedef void (*PFNGLENABLEVERTEXATTRIBAPPLEPROC)(GLuint index, GLenum pname)

    ctypedef GLboolean (*PFNGLISVERTEXATTRIBENABLEDAPPLEPROC)(GLuint index, GLenum pname)

    ctypedef void (*PFNGLMAPVERTEXATTRIB1DAPPLEPROC)(GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, GLdouble* points)

    ctypedef void (*PFNGLMAPVERTEXATTRIB1FAPPLEPROC)(GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, GLfloat* points)

    ctypedef void (*PFNGLMAPVERTEXATTRIB2DAPPLEPROC)(GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble* points)

    ctypedef void (*PFNGLMAPVERTEXATTRIB2FAPPLEPROC)(GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat* points)

    ctypedef int GLfixed

    ctypedef void (*PFNGLCLEARDEPTHFPROC)(GLclampf d)

    ctypedef void (*PFNGLDEPTHRANGEFPROC)(GLclampf n, GLclampf f)

    ctypedef void (*PFNGLGETSHADERPRECISIONFORMATPROC)(GLenum shadertype, GLenum precisiontype, GLint* range, GLint* precision)

    ctypedef void (*PFNGLRELEASESHADERCOMPILERPROC)()

    ctypedef void (*PFNGLSHADERBINARYPROC)(GLsizei count, GLuint* shaders, GLenum binaryformat, void* binary, GLsizei length)

    ctypedef void (*PFNGLMEMORYBARRIERBYREGIONPROC)(GLbitfield barriers)

    ctypedef void (*PFNGLPRIMITIVEBOUNDINGBOXARBPROC)(GLfloat minX, GLfloat minY, GLfloat minZ, GLfloat minW, GLfloat maxX, GLfloat maxY, GLfloat maxZ, GLfloat maxW)

    ctypedef void (*PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC)(GLenum mode, GLint first, GLsizei count, GLsizei primcount, GLuint baseinstance)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei primcount, GLuint baseinstance)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei primcount, GLint basevertex, GLuint baseinstance)

    ctypedef GLuint64 (*PFNGLGETIMAGEHANDLEARBPROC)(GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format)

    ctypedef GLuint64 (*PFNGLGETTEXTUREHANDLEARBPROC)(GLuint texture)

    ctypedef GLuint64 (*PFNGLGETTEXTURESAMPLERHANDLEARBPROC)(GLuint texture, GLuint sampler)

    ctypedef void (*PFNGLGETVERTEXATTRIBLUI64VARBPROC)(GLuint index, GLenum pname, GLuint64EXT* params)

    ctypedef GLboolean (*PFNGLISIMAGEHANDLERESIDENTARBPROC)(GLuint64 handle)

    ctypedef GLboolean (*PFNGLISTEXTUREHANDLERESIDENTARBPROC)(GLuint64 handle)

    ctypedef void (*PFNGLMAKEIMAGEHANDLENONRESIDENTARBPROC)(GLuint64 handle)

    ctypedef void (*PFNGLMAKEIMAGEHANDLERESIDENTARBPROC)(GLuint64 handle, GLenum access)

    ctypedef void (*PFNGLMAKETEXTUREHANDLENONRESIDENTARBPROC)(GLuint64 handle)

    ctypedef void (*PFNGLMAKETEXTUREHANDLERESIDENTARBPROC)(GLuint64 handle)

    ctypedef void (*PFNGLPROGRAMUNIFORMHANDLEUI64ARBPROC)(GLuint program, GLint location, GLuint64 value)

    ctypedef void (*PFNGLPROGRAMUNIFORMHANDLEUI64VARBPROC)(GLuint program, GLint location, GLsizei count, GLuint64* values)

    ctypedef void (*PFNGLUNIFORMHANDLEUI64ARBPROC)(GLint location, GLuint64 value)

    ctypedef void (*PFNGLUNIFORMHANDLEUI64VARBPROC)(GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLVERTEXATTRIBL1UI64ARBPROC)(GLuint index, GLuint64EXT x)

    ctypedef void (*PFNGLVERTEXATTRIBL1UI64VARBPROC)(GLuint index, GLuint64EXT* v)

    ctypedef void (*PFNGLBINDFRAGDATALOCATIONINDEXEDPROC)(GLuint program, GLuint colorNumber, GLuint index, GLchar* name)

    ctypedef GLint (*PFNGLGETFRAGDATAINDEXPROC)(GLuint program, GLchar* name)

    ctypedef void (*PFNGLBUFFERSTORAGEPROC)(GLenum target, GLsizeiptr size, void* data, GLbitfield flags)

    ctypedef _cl_context* cl_context

    ctypedef _cl_event* cl_event

    ctypedef GLsync (*PFNGLCREATESYNCFROMCLEVENTARBPROC)(cl_context context, cl_event event, GLbitfield flags)

    ctypedef void (*PFNGLCLEARBUFFERDATAPROC)(GLenum target, GLenum internalformat, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLEARBUFFERSUBDATAPROC)(GLenum target, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLEARNAMEDBUFFERDATAEXTPROC)(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLEARNAMEDBUFFERSUBDATAEXTPROC)(GLuint buffer, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLEARTEXIMAGEPROC)(GLuint texture, GLint level, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLEARTEXSUBIMAGEPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLIPCONTROLPROC)(GLenum origin, GLenum depth)

    ctypedef void (*PFNGLCLAMPCOLORARBPROC)(GLenum target, GLenum clamp)

    ctypedef void (*PFNGLDISPATCHCOMPUTEPROC)(GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z)

    ctypedef void (*PFNGLDISPATCHCOMPUTEINDIRECTPROC)(GLintptr indirect)

    ctypedef void (*PFNGLDISPATCHCOMPUTEGROUPSIZEARBPROC)(GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z, GLuint group_size_x, GLuint group_size_y, GLuint group_size_z)

    ctypedef void (*PFNGLCOPYBUFFERSUBDATAPROC)(GLenum readtarget, GLenum writetarget, GLintptr readoffset, GLintptr writeoffset, GLsizeiptr size)

    ctypedef void (*PFNGLCOPYIMAGESUBDATAPROC)(GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth)

    ctypedef void (*GLDEBUGPROCARB)(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, GLchar* message, void* userParam)

    ctypedef void (*PFNGLDEBUGMESSAGECALLBACKARBPROC)(GLDEBUGPROCARB callback, void* userParam)

    ctypedef void (*PFNGLDEBUGMESSAGECONTROLARBPROC)(GLenum source, GLenum type, GLenum severity, GLsizei count, GLuint* ids, GLboolean enabled)

    ctypedef void (*PFNGLDEBUGMESSAGEINSERTARBPROC)(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, GLchar* buf)

    ctypedef GLuint (*PFNGLGETDEBUGMESSAGELOGARBPROC)(GLuint count, GLsizei bufSize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog)

    ctypedef void (*PFNGLBINDTEXTUREUNITPROC)(GLuint unit, GLuint texture)

    ctypedef void (*PFNGLBLITNAMEDFRAMEBUFFERPROC)(GLuint readFramebuffer, GLuint drawFramebuffer, GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

    ctypedef GLenum (*PFNGLCHECKNAMEDFRAMEBUFFERSTATUSPROC)(GLuint framebuffer, GLenum target)

    ctypedef void (*PFNGLCLEARNAMEDBUFFERDATAPROC)(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLEARNAMEDBUFFERSUBDATAPROC)(GLuint buffer, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLEARNAMEDFRAMEBUFFERFIPROC)(GLuint framebuffer, GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil)

    ctypedef void (*PFNGLCLEARNAMEDFRAMEBUFFERFVPROC)(GLuint framebuffer, GLenum buffer, GLint drawbuffer, GLfloat* value)

    ctypedef void (*PFNGLCLEARNAMEDFRAMEBUFFERIVPROC)(GLuint framebuffer, GLenum buffer, GLint drawbuffer, GLint* value)

    ctypedef void (*PFNGLCLEARNAMEDFRAMEBUFFERUIVPROC)(GLuint framebuffer, GLenum buffer, GLint drawbuffer, GLuint* value)

    ctypedef void (*PFNGLCOMPRESSEDTEXTURESUBIMAGE1DPROC)(GLuint texture, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXTURESUBIMAGE2DPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXTURESUBIMAGE3DPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOPYNAMEDBUFFERSUBDATAPROC)(GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)

    ctypedef void (*PFNGLCOPYTEXTURESUBIMAGE1DPROC)(GLuint texture, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYTEXTURESUBIMAGE2DPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLCOPYTEXTURESUBIMAGE3DPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLCREATEBUFFERSPROC)(GLsizei n, GLuint* buffers)

    ctypedef void (*PFNGLCREATEFRAMEBUFFERSPROC)(GLsizei n, GLuint* framebuffers)

    ctypedef void (*PFNGLCREATEPROGRAMPIPELINESPROC)(GLsizei n, GLuint* pipelines)

    ctypedef void (*PFNGLCREATEQUERIESPROC)(GLenum target, GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLCREATERENDERBUFFERSPROC)(GLsizei n, GLuint* renderbuffers)

    ctypedef void (*PFNGLCREATESAMPLERSPROC)(GLsizei n, GLuint* samplers)

    ctypedef void (*PFNGLCREATETEXTURESPROC)(GLenum target, GLsizei n, GLuint* textures)

    ctypedef void (*PFNGLCREATETRANSFORMFEEDBACKSPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLCREATEVERTEXARRAYSPROC)(GLsizei n, GLuint* arrays)

    ctypedef void (*PFNGLDISABLEVERTEXARRAYATTRIBPROC)(GLuint vaobj, GLuint index)

    ctypedef void (*PFNGLENABLEVERTEXARRAYATTRIBPROC)(GLuint vaobj, GLuint index)

    ctypedef void (*PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEPROC)(GLuint buffer, GLintptr offset, GLsizeiptr length)

    ctypedef void (*PFNGLGENERATETEXTUREMIPMAPPROC)(GLuint texture)

    ctypedef void (*PFNGLGETCOMPRESSEDTEXTUREIMAGEPROC)(GLuint texture, GLint level, GLsizei bufSize, void* pixels)

    ctypedef void (*PFNGLGETNAMEDBUFFERPARAMETERI64VPROC)(GLuint buffer, GLenum pname, GLint64* params)

    ctypedef void (*PFNGLGETNAMEDBUFFERPARAMETERIVPROC)(GLuint buffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETNAMEDBUFFERPOINTERVPROC)(GLuint buffer, GLenum pname, void** params)

    ctypedef void (*PFNGLGETNAMEDBUFFERSUBDATAPROC)(GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVPROC)(GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVPROC)(GLuint framebuffer, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETNAMEDRENDERBUFFERPARAMETERIVPROC)(GLuint renderbuffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETQUERYBUFFEROBJECTI64VPROC)(GLuint id, GLuint buffer, GLenum pname, GLintptr offset)

    ctypedef void (*PFNGLGETQUERYBUFFEROBJECTIVPROC)(GLuint id, GLuint buffer, GLenum pname, GLintptr offset)

    ctypedef void (*PFNGLGETQUERYBUFFEROBJECTUI64VPROC)(GLuint id, GLuint buffer, GLenum pname, GLintptr offset)

    ctypedef void (*PFNGLGETQUERYBUFFEROBJECTUIVPROC)(GLuint id, GLuint buffer, GLenum pname, GLintptr offset)

    ctypedef void (*PFNGLGETTEXTUREIMAGEPROC)(GLuint texture, GLint level, GLenum format, GLenum type, GLsizei bufSize, void* pixels)

    ctypedef void (*PFNGLGETTEXTURELEVELPARAMETERFVPROC)(GLuint texture, GLint level, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETTEXTURELEVELPARAMETERIVPROC)(GLuint texture, GLint level, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERIIVPROC)(GLuint texture, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERIUIVPROC)(GLuint texture, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERFVPROC)(GLuint texture, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERIVPROC)(GLuint texture, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTRANSFORMFEEDBACKI64_VPROC)(GLuint xfb, GLenum pname, GLuint index, GLint64* param)

    ctypedef void (*PFNGLGETTRANSFORMFEEDBACKI_VPROC)(GLuint xfb, GLenum pname, GLuint index, GLint* param)

    ctypedef void (*PFNGLGETTRANSFORMFEEDBACKIVPROC)(GLuint xfb, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETVERTEXARRAYINDEXED64IVPROC)(GLuint vaobj, GLuint index, GLenum pname, GLint64* param)

    ctypedef void (*PFNGLGETVERTEXARRAYINDEXEDIVPROC)(GLuint vaobj, GLuint index, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETVERTEXARRAYIVPROC)(GLuint vaobj, GLenum pname, GLint* param)

    ctypedef void (*PFNGLINVALIDATENAMEDFRAMEBUFFERDATAPROC)(GLuint framebuffer, GLsizei numAttachments, GLenum* attachments)

    ctypedef void (*PFNGLINVALIDATENAMEDFRAMEBUFFERSUBDATAPROC)(GLuint framebuffer, GLsizei numAttachments, GLenum* attachments, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void* (*PFNGLMAPNAMEDBUFFERPROC)(GLuint buffer, GLenum access)

    ctypedef void* (*PFNGLMAPNAMEDBUFFERRANGEPROC)(GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access)

    ctypedef void (*PFNGLNAMEDBUFFERDATAPROC)(GLuint buffer, GLsizeiptr size, void* data, GLenum usage)

    ctypedef void (*PFNGLNAMEDBUFFERSTORAGEPROC)(GLuint buffer, GLsizeiptr size, void* data, GLbitfield flags)

    ctypedef void (*PFNGLNAMEDBUFFERSUBDATAPROC)(GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERDRAWBUFFERPROC)(GLuint framebuffer, GLenum mode)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERDRAWBUFFERSPROC)(GLuint framebuffer, GLsizei n, GLenum* bufs)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERPARAMETERIPROC)(GLuint framebuffer, GLenum pname, GLint param)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERREADBUFFERPROC)(GLuint framebuffer, GLenum mode)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERRENDERBUFFERPROC)(GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTUREPROC)(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTURELAYERPROC)(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer)

    ctypedef void (*PFNGLNAMEDRENDERBUFFERSTORAGEPROC)(GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEPROC)(GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLTEXTUREBUFFERPROC)(GLuint texture, GLenum internalformat, GLuint buffer)

    ctypedef void (*PFNGLTEXTUREBUFFERRANGEPROC)(GLuint texture, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLTEXTUREPARAMETERIIVPROC)(GLuint texture, GLenum pname, GLint* params)

    ctypedef void (*PFNGLTEXTUREPARAMETERIUIVPROC)(GLuint texture, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLTEXTUREPARAMETERFPROC)(GLuint texture, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLTEXTUREPARAMETERFVPROC)(GLuint texture, GLenum pname, GLfloat* param)

    ctypedef void (*PFNGLTEXTUREPARAMETERIPROC)(GLuint texture, GLenum pname, GLint param)

    ctypedef void (*PFNGLTEXTUREPARAMETERIVPROC)(GLuint texture, GLenum pname, GLint* param)

    ctypedef void (*PFNGLTEXTURESTORAGE1DPROC)(GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width)

    ctypedef void (*PFNGLTEXTURESTORAGE2DPROC)(GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLTEXTURESTORAGE2DMULTISAMPLEPROC)(GLuint texture, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXTURESTORAGE3DPROC)(GLuint texture, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLTEXTURESTORAGE3DMULTISAMPLEPROC)(GLuint texture, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXTURESUBIMAGE1DPROC)(GLuint texture, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTURESUBIMAGE2DPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTURESUBIMAGE3DPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTRANSFORMFEEDBACKBUFFERBASEPROC)(GLuint xfb, GLuint index, GLuint buffer)

    ctypedef void (*PFNGLTRANSFORMFEEDBACKBUFFERRANGEPROC)(GLuint xfb, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef GLboolean (*PFNGLUNMAPNAMEDBUFFERPROC)(GLuint buffer)

    ctypedef void (*PFNGLVERTEXARRAYATTRIBBINDINGPROC)(GLuint vaobj, GLuint attribindex, GLuint bindingindex)

    ctypedef void (*PFNGLVERTEXARRAYATTRIBFORMATPROC)(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXARRAYATTRIBIFORMATPROC)(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXARRAYATTRIBLFORMATPROC)(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXARRAYBINDINGDIVISORPROC)(GLuint vaobj, GLuint bindingindex, GLuint divisor)

    ctypedef void (*PFNGLVERTEXARRAYELEMENTBUFFERPROC)(GLuint vaobj, GLuint buffer)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXBUFFERPROC)(GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXBUFFERSPROC)(GLuint vaobj, GLuint first, GLsizei count, GLuint* buffers, GLintptr* offsets, GLsizei* strides)

    ctypedef void (*PFNGLDRAWBUFFERSARBPROC)(GLsizei n, GLenum* bufs)

    ctypedef void (*PFNGLBLENDEQUATIONSEPARATEIARBPROC)(GLuint buf, GLenum modeRGB, GLenum modeAlpha)

    ctypedef void (*PFNGLBLENDEQUATIONIARBPROC)(GLuint buf, GLenum mode)

    ctypedef void (*PFNGLBLENDFUNCSEPARATEIARBPROC)(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)

    ctypedef void (*PFNGLBLENDFUNCIARBPROC)(GLuint buf, GLenum src, GLenum dst)

    ctypedef void (*PFNGLDRAWELEMENTSBASEVERTEXPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLint basevertex)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei primcount, GLint basevertex)

    ctypedef void (*PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, void* indices, GLint basevertex)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC)(GLenum mode, GLsizei* count, GLenum type, void** indices, GLsizei primcount, GLint* basevertex)

    ctypedef void (*PFNGLDRAWARRAYSINDIRECTPROC)(GLenum mode, void* indirect)

    ctypedef void (*PFNGLDRAWELEMENTSINDIRECTPROC)(GLenum mode, GLenum type, void* indirect)

    ctypedef void (*PFNGLFRAMEBUFFERPARAMETERIPROC)(GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLGETFRAMEBUFFERPARAMETERIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVEXTPROC)(GLuint framebuffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERPARAMETERIEXTPROC)(GLuint framebuffer, GLenum pname, GLint param)

    ctypedef void (*PFNGLBINDFRAMEBUFFERPROC)(GLenum target, GLuint framebuffer) nogil

    ctypedef void (*PFNGLBINDRENDERBUFFERPROC)(GLenum target, GLuint renderbuffer)

    ctypedef void (*PFNGLBLITFRAMEBUFFERPROC)(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

    ctypedef GLenum (*PFNGLCHECKFRAMEBUFFERSTATUSPROC)(GLenum target)

    ctypedef void (*PFNGLDELETEFRAMEBUFFERSPROC)(GLsizei n, GLuint* framebuffers)

    ctypedef void (*PFNGLDELETERENDERBUFFERSPROC)(GLsizei n, GLuint* renderbuffers)

    ctypedef void (*PFNGLFRAMEBUFFERRENDERBUFFERPROC)(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE1DPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE2DPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE3DPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint layer)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURELAYERPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)

    ctypedef void (*PFNGLGENFRAMEBUFFERSPROC)(GLsizei n, GLuint* framebuffers)

    ctypedef void (*PFNGLGENRENDERBUFFERSPROC)(GLsizei n, GLuint* renderbuffers)

    ctypedef void (*PFNGLGENERATEMIPMAPPROC)(GLenum target)

    ctypedef void (*PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC)(GLenum target, GLenum attachment, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETRENDERBUFFERPARAMETERIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISFRAMEBUFFERPROC)(GLuint framebuffer)

    ctypedef GLboolean (*PFNGLISRENDERBUFFERPROC)(GLuint renderbuffer)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEPROC)(GLenum target, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREARBPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREFACEARBPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURELAYERARBPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)

    ctypedef void (*PFNGLPROGRAMPARAMETERIARBPROC)(GLuint program, GLenum pname, GLint value)

    ctypedef void (*PFNGLGETPROGRAMBINARYPROC)(GLuint program, GLsizei bufSize, GLsizei* length, GLenum* binaryFormat, void* binary)

    ctypedef void (*PFNGLPROGRAMBINARYPROC)(GLuint program, GLenum binaryFormat, void* binary, GLsizei length)

    ctypedef void (*PFNGLPROGRAMPARAMETERIPROC)(GLuint program, GLenum pname, GLint value)

    ctypedef void (*PFNGLGETCOMPRESSEDTEXTURESUBIMAGEPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei bufSize, void* pixels)

    ctypedef void (*PFNGLGETTEXTURESUBIMAGEPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLsizei bufSize, void* pixels)

    ctypedef void (*PFNGLSPECIALIZESHADERARBPROC)(GLuint shader, GLchar* pEntryPoint, GLuint numSpecializationConstants, GLuint* pConstantIndex, GLuint* pConstantValue)

    ctypedef void (*PFNGLGETUNIFORMDVPROC)(GLuint program, GLint location, GLdouble* params)

    ctypedef void (*PFNGLUNIFORM1DPROC)(GLint location, GLdouble x)

    ctypedef void (*PFNGLUNIFORM1DVPROC)(GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLUNIFORM2DPROC)(GLint location, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLUNIFORM2DVPROC)(GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLUNIFORM3DPROC)(GLint location, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLUNIFORM3DVPROC)(GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLUNIFORM4DPROC)(GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLUNIFORM4DVPROC)(GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX2DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX2X3DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX2X4DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3X2DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3X4DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4X2DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4X3DVPROC)(GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLGETUNIFORMI64VARBPROC)(GLuint program, GLint location, GLint64* params)

    ctypedef void (*PFNGLGETUNIFORMUI64VARBPROC)(GLuint program, GLint location, GLuint64* params)

    ctypedef void (*PFNGLGETNUNIFORMI64VARBPROC)(GLuint program, GLint location, GLsizei bufSize, GLint64* params)

    ctypedef void (*PFNGLGETNUNIFORMUI64VARBPROC)(GLuint program, GLint location, GLsizei bufSize, GLuint64* params)

    ctypedef void (*PFNGLPROGRAMUNIFORM1I64ARBPROC)(GLuint program, GLint location, GLint64 x)

    ctypedef void (*PFNGLPROGRAMUNIFORM1I64VARBPROC)(GLuint program, GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UI64ARBPROC)(GLuint program, GLint location, GLuint64 x)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UI64VARBPROC)(GLuint program, GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2I64ARBPROC)(GLuint program, GLint location, GLint64 x, GLint64 y)

    ctypedef void (*PFNGLPROGRAMUNIFORM2I64VARBPROC)(GLuint program, GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UI64ARBPROC)(GLuint program, GLint location, GLuint64 x, GLuint64 y)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UI64VARBPROC)(GLuint program, GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3I64ARBPROC)(GLuint program, GLint location, GLint64 x, GLint64 y, GLint64 z)

    ctypedef void (*PFNGLPROGRAMUNIFORM3I64VARBPROC)(GLuint program, GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UI64ARBPROC)(GLuint program, GLint location, GLuint64 x, GLuint64 y, GLuint64 z)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UI64VARBPROC)(GLuint program, GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4I64ARBPROC)(GLuint program, GLint location, GLint64 x, GLint64 y, GLint64 z, GLint64 w)

    ctypedef void (*PFNGLPROGRAMUNIFORM4I64VARBPROC)(GLuint program, GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UI64ARBPROC)(GLuint program, GLint location, GLuint64 x, GLuint64 y, GLuint64 z, GLuint64 w)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UI64VARBPROC)(GLuint program, GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLUNIFORM1I64ARBPROC)(GLint location, GLint64 x)

    ctypedef void (*PFNGLUNIFORM1I64VARBPROC)(GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLUNIFORM1UI64ARBPROC)(GLint location, GLuint64 x)

    ctypedef void (*PFNGLUNIFORM1UI64VARBPROC)(GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLUNIFORM2I64ARBPROC)(GLint location, GLint64 x, GLint64 y)

    ctypedef void (*PFNGLUNIFORM2I64VARBPROC)(GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLUNIFORM2UI64ARBPROC)(GLint location, GLuint64 x, GLuint64 y)

    ctypedef void (*PFNGLUNIFORM2UI64VARBPROC)(GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLUNIFORM3I64ARBPROC)(GLint location, GLint64 x, GLint64 y, GLint64 z)

    ctypedef void (*PFNGLUNIFORM3I64VARBPROC)(GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLUNIFORM3UI64ARBPROC)(GLint location, GLuint64 x, GLuint64 y, GLuint64 z)

    ctypedef void (*PFNGLUNIFORM3UI64VARBPROC)(GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLUNIFORM4I64ARBPROC)(GLint location, GLint64 x, GLint64 y, GLint64 z, GLint64 w)

    ctypedef void (*PFNGLUNIFORM4I64VARBPROC)(GLint location, GLsizei count, GLint64* value)

    ctypedef void (*PFNGLUNIFORM4UI64ARBPROC)(GLint location, GLuint64 x, GLuint64 y, GLuint64 z, GLuint64 w)

    ctypedef void (*PFNGLUNIFORM4UI64VARBPROC)(GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLCOLORSUBTABLEPROC)(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCOLORTABLEPROC)(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, void* table)

    ctypedef void (*PFNGLCOLORTABLEPARAMETERFVPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLCOLORTABLEPARAMETERIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLCONVOLUTIONFILTER1DPROC)(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, void* image)

    ctypedef void (*PFNGLCONVOLUTIONFILTER2DPROC)(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, void* image)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERFPROC)(GLenum target, GLenum pname, GLfloat params)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERFVPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERIPROC)(GLenum target, GLenum pname, GLint params)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLCOPYCOLORSUBTABLEPROC)(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYCOLORTABLEPROC)(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYCONVOLUTIONFILTER1DPROC)(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYCONVOLUTIONFILTER2DPROC)(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLGETCOLORTABLEPROC)(GLenum target, GLenum format, GLenum type, void* table)

    ctypedef void (*PFNGLGETCOLORTABLEPARAMETERFVPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETCOLORTABLEPARAMETERIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETCONVOLUTIONFILTERPROC)(GLenum target, GLenum format, GLenum type, void* image)

    ctypedef void (*PFNGLGETCONVOLUTIONPARAMETERFVPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETCONVOLUTIONPARAMETERIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETHISTOGRAMPROC)(GLenum target, GLboolean reset, GLenum format, GLenum type, void* values)

    ctypedef void (*PFNGLGETHISTOGRAMPARAMETERFVPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETHISTOGRAMPARAMETERIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMINMAXPROC)(GLenum target, GLboolean reset, GLenum format, GLenum types, void* values)

    ctypedef void (*PFNGLGETMINMAXPARAMETERFVPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMINMAXPARAMETERIVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETSEPARABLEFILTERPROC)(GLenum target, GLenum format, GLenum type, void* row, void* column, void* span)

    ctypedef void (*PFNGLHISTOGRAMPROC)(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink)

    ctypedef void (*PFNGLMINMAXPROC)(GLenum target, GLenum internalformat, GLboolean sink)

    ctypedef void (*PFNGLRESETHISTOGRAMPROC)(GLenum target)

    ctypedef void (*PFNGLRESETMINMAXPROC)(GLenum target)

    ctypedef void (*PFNGLSEPARABLEFILTER2DPROC)(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, void* row, void* column)

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTCOUNTARBPROC)(GLenum mode, void* indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTARBPROC)(GLenum mode, GLenum type, void* indirect, GLintptr drawcount, GLsizei maxdrawcount, GLsizei stride)

    ctypedef void (*PFNGLDRAWARRAYSINSTANCEDARBPROC)(GLenum mode, GLint first, GLsizei count, GLsizei primcount)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDARBPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei primcount)

    ctypedef void (*PFNGLVERTEXATTRIBDIVISORARBPROC)(GLuint index, GLuint divisor)

    ctypedef void (*PFNGLGETINTERNALFORMATIVPROC)(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params)

    ctypedef void (*PFNGLGETINTERNALFORMATI64VPROC)(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint64* params)

    ctypedef void (*PFNGLINVALIDATEBUFFERDATAPROC)(GLuint buffer)

    ctypedef void (*PFNGLINVALIDATEBUFFERSUBDATAPROC)(GLuint buffer, GLintptr offset, GLsizeiptr length)

    ctypedef void (*PFNGLINVALIDATEFRAMEBUFFERPROC)(GLenum target, GLsizei numAttachments, GLenum* attachments)

    ctypedef void (*PFNGLINVALIDATESUBFRAMEBUFFERPROC)(GLenum target, GLsizei numAttachments, GLenum* attachments, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLINVALIDATETEXIMAGEPROC)(GLuint texture, GLint level)

    ctypedef void (*PFNGLINVALIDATETEXSUBIMAGEPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLFLUSHMAPPEDBUFFERRANGEPROC)(GLenum target, GLintptr offset, GLsizeiptr length)

    ctypedef void* (*PFNGLMAPBUFFERRANGEPROC)(GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access)

    ctypedef void (*PFNGLCURRENTPALETTEMATRIXARBPROC)(GLint index)

    ctypedef void (*PFNGLMATRIXINDEXPOINTERARBPROC)(GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLMATRIXINDEXUBVARBPROC)(GLint size, GLubyte* indices)

    ctypedef void (*PFNGLMATRIXINDEXUIVARBPROC)(GLint size, GLuint* indices)

    ctypedef void (*PFNGLMATRIXINDEXUSVARBPROC)(GLint size, GLushort* indices)

    ctypedef void (*PFNGLBINDBUFFERSBASEPROC)(GLenum target, GLuint first, GLsizei count, GLuint* buffers)

    ctypedef void (*PFNGLBINDBUFFERSRANGEPROC)(GLenum target, GLuint first, GLsizei count, GLuint* buffers, GLintptr* offsets, GLsizeiptr* sizes)

    ctypedef void (*PFNGLBINDIMAGETEXTURESPROC)(GLuint first, GLsizei count, GLuint* textures)

    ctypedef void (*PFNGLBINDSAMPLERSPROC)(GLuint first, GLsizei count, GLuint* samplers)

    ctypedef void (*PFNGLBINDTEXTURESPROC)(GLuint first, GLsizei count, GLuint* textures)

    ctypedef void (*PFNGLBINDVERTEXBUFFERSPROC)(GLuint first, GLsizei count, GLuint* buffers, GLintptr* offsets, GLsizei* strides)

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTPROC)(GLenum mode, void* indirect, GLsizei primcount, GLsizei stride)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTPROC)(GLenum mode, GLenum type, void* indirect, GLsizei primcount, GLsizei stride)

    ctypedef void (*PFNGLSAMPLECOVERAGEARBPROC)(GLclampf value, GLboolean invert)

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

    ctypedef void (*PFNGLBEGINQUERYARBPROC)(GLenum target, GLuint id)

    ctypedef void (*PFNGLDELETEQUERIESARBPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLENDQUERYARBPROC)(GLenum target)

    ctypedef void (*PFNGLGENQUERIESARBPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLGETQUERYOBJECTIVARBPROC)(GLuint id, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETQUERYOBJECTUIVARBPROC)(GLuint id, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETQUERYIVARBPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISQUERYARBPROC)(GLuint id)

    ctypedef void (*PFNGLMAXSHADERCOMPILERTHREADSARBPROC)(GLuint count)

    ctypedef void (*PFNGLPOINTPARAMETERFARBPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLPOINTPARAMETERFVARBPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLPOLYGONOFFSETCLAMPPROC)(GLfloat factor, GLfloat units, GLfloat clamp)

    ctypedef void (*PFNGLGETPROGRAMINTERFACEIVPROC)(GLuint program, GLenum programInterface, GLenum pname, GLint* params)

    ctypedef GLuint (*PFNGLGETPROGRAMRESOURCEINDEXPROC)(GLuint program, GLenum programInterface, GLchar* name)

    ctypedef GLint (*PFNGLGETPROGRAMRESOURCELOCATIONPROC)(GLuint program, GLenum programInterface, GLchar* name)

    ctypedef GLint (*PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC)(GLuint program, GLenum programInterface, GLchar* name)

    ctypedef void (*PFNGLGETPROGRAMRESOURCENAMEPROC)(GLuint program, GLenum programInterface, GLuint index, GLsizei bufSize, GLsizei* length, GLchar* name)

    ctypedef void (*PFNGLGETPROGRAMRESOURCEIVPROC)(GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, GLenum* props, GLsizei bufSize, GLsizei* length, GLint* params)

    ctypedef void (*PFNGLPROVOKINGVERTEXPROC)(GLenum mode)

    ctypedef GLenum (*PFNGLGETGRAPHICSRESETSTATUSARBPROC)()

    ctypedef void (*PFNGLGETNCOLORTABLEARBPROC)(GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* table)

    ctypedef void (*PFNGLGETNCOMPRESSEDTEXIMAGEARBPROC)(GLenum target, GLint lod, GLsizei bufSize, void* img)

    ctypedef void (*PFNGLGETNCONVOLUTIONFILTERARBPROC)(GLenum target, GLenum format, GLenum type, GLsizei bufSize, void* image)

    ctypedef void (*PFNGLGETNHISTOGRAMARBPROC)(GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values)

    ctypedef void (*PFNGLGETNMAPDVARBPROC)(GLenum target, GLenum query, GLsizei bufSize, GLdouble* v)

    ctypedef void (*PFNGLGETNMAPFVARBPROC)(GLenum target, GLenum query, GLsizei bufSize, GLfloat* v)

    ctypedef void (*PFNGLGETNMAPIVARBPROC)(GLenum target, GLenum query, GLsizei bufSize, GLint* v)

    ctypedef void (*PFNGLGETNMINMAXARBPROC)(GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, void* values)

    ctypedef void (*PFNGLGETNPIXELMAPFVARBPROC)(GLenum map, GLsizei bufSize, GLfloat* values)

    ctypedef void (*PFNGLGETNPIXELMAPUIVARBPROC)(GLenum map, GLsizei bufSize, GLuint* values)

    ctypedef void (*PFNGLGETNPIXELMAPUSVARBPROC)(GLenum map, GLsizei bufSize, GLushort* values)

    ctypedef void (*PFNGLGETNPOLYGONSTIPPLEARBPROC)(GLsizei bufSize, GLubyte* pattern)

    ctypedef void (*PFNGLGETNSEPARABLEFILTERARBPROC)(GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, void* row, GLsizei columnBufSize, void* column, void* span)

    ctypedef void (*PFNGLGETNTEXIMAGEARBPROC)(GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, void* img)

    ctypedef void (*PFNGLGETNUNIFORMDVARBPROC)(GLuint program, GLint location, GLsizei bufSize, GLdouble* params)

    ctypedef void (*PFNGLGETNUNIFORMFVARBPROC)(GLuint program, GLint location, GLsizei bufSize, GLfloat* params)

    ctypedef void (*PFNGLGETNUNIFORMIVARBPROC)(GLuint program, GLint location, GLsizei bufSize, GLint* params)

    ctypedef void (*PFNGLGETNUNIFORMUIVARBPROC)(GLuint program, GLint location, GLsizei bufSize, GLuint* params)

    ctypedef void (*PFNGLREADNPIXELSARBPROC)(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, void* data)

    ctypedef void (*PFNGLFRAMEBUFFERSAMPLELOCATIONSFVARBPROC)(GLenum target, GLuint start, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERSAMPLELOCATIONSFVARBPROC)(GLuint framebuffer, GLuint start, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLMINSAMPLESHADINGARBPROC)(GLclampf value)

    ctypedef void (*PFNGLBINDSAMPLERPROC)(GLuint unit, GLuint sampler)

    ctypedef void (*PFNGLDELETESAMPLERSPROC)(GLsizei count, GLuint* samplers)

    ctypedef void (*PFNGLGENSAMPLERSPROC)(GLsizei count, GLuint* samplers)

    ctypedef void (*PFNGLGETSAMPLERPARAMETERIIVPROC)(GLuint sampler, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETSAMPLERPARAMETERIUIVPROC)(GLuint sampler, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETSAMPLERPARAMETERFVPROC)(GLuint sampler, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETSAMPLERPARAMETERIVPROC)(GLuint sampler, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISSAMPLERPROC)(GLuint sampler)

    ctypedef void (*PFNGLSAMPLERPARAMETERIIVPROC)(GLuint sampler, GLenum pname, GLint* params)

    ctypedef void (*PFNGLSAMPLERPARAMETERIUIVPROC)(GLuint sampler, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLSAMPLERPARAMETERFPROC)(GLuint sampler, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLSAMPLERPARAMETERFVPROC)(GLuint sampler, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLSAMPLERPARAMETERIPROC)(GLuint sampler, GLenum pname, GLint param)

    ctypedef void (*PFNGLSAMPLERPARAMETERIVPROC)(GLuint sampler, GLenum pname, GLint* params)

    ctypedef void (*PFNGLACTIVESHADERPROGRAMPROC)(GLuint pipeline, GLuint program)

    ctypedef void (*PFNGLBINDPROGRAMPIPELINEPROC)(GLuint pipeline)

    ctypedef GLuint (*PFNGLCREATESHADERPROGRAMVPROC)(GLenum type, GLsizei count, GLchar** strings)

    ctypedef void (*PFNGLDELETEPROGRAMPIPELINESPROC)(GLsizei n, GLuint* pipelines)

    ctypedef void (*PFNGLGENPROGRAMPIPELINESPROC)(GLsizei n, GLuint* pipelines)

    ctypedef void (*PFNGLGETPROGRAMPIPELINEINFOLOGPROC)(GLuint pipeline, GLsizei bufSize, GLsizei* length, GLchar* infoLog)

    ctypedef void (*PFNGLGETPROGRAMPIPELINEIVPROC)(GLuint pipeline, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISPROGRAMPIPELINEPROC)(GLuint pipeline)

    ctypedef void (*PFNGLPROGRAMUNIFORM1DPROC)(GLuint program, GLint location, GLdouble x)

    ctypedef void (*PFNGLPROGRAMUNIFORM1DVPROC)(GLuint program, GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1FPROC)(GLuint program, GLint location, GLfloat x)

    ctypedef void (*PFNGLPROGRAMUNIFORM1FVPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1IPROC)(GLuint program, GLint location, GLint x)

    ctypedef void (*PFNGLPROGRAMUNIFORM1IVPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UIPROC)(GLuint program, GLint location, GLuint x)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UIVPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2DPROC)(GLuint program, GLint location, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLPROGRAMUNIFORM2DVPROC)(GLuint program, GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2FPROC)(GLuint program, GLint location, GLfloat x, GLfloat y)

    ctypedef void (*PFNGLPROGRAMUNIFORM2FVPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2IPROC)(GLuint program, GLint location, GLint x, GLint y)

    ctypedef void (*PFNGLPROGRAMUNIFORM2IVPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UIPROC)(GLuint program, GLint location, GLuint x, GLuint y)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UIVPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3DPROC)(GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLPROGRAMUNIFORM3DVPROC)(GLuint program, GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3FPROC)(GLuint program, GLint location, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLPROGRAMUNIFORM3FVPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3IPROC)(GLuint program, GLint location, GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLPROGRAMUNIFORM3IVPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UIPROC)(GLuint program, GLint location, GLuint x, GLuint y, GLuint z)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UIVPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4DPROC)(GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLPROGRAMUNIFORM4DVPROC)(GLuint program, GLint location, GLsizei count, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4FPROC)(GLuint program, GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLPROGRAMUNIFORM4FVPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4IPROC)(GLuint program, GLint location, GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLPROGRAMUNIFORM4IVPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UIPROC)(GLuint program, GLint location, GLuint x, GLuint y, GLuint z, GLuint w)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UIVPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLdouble* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUSEPROGRAMSTAGESPROC)(GLuint pipeline, GLbitfield stages, GLuint program)

    ctypedef void (*PFNGLVALIDATEPROGRAMPIPELINEPROC)(GLuint pipeline)

    ctypedef void (*PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC)(GLuint program, GLuint bufferIndex, GLenum pname, GLint* params)

    ctypedef void (*PFNGLBINDIMAGETEXTUREPROC)(GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format)

    ctypedef void (*PFNGLMEMORYBARRIERPROC)(GLbitfield barriers)

    ctypedef char GLcharARB

    ctypedef unsigned int GLhandleARB

    ctypedef void (*PFNGLATTACHOBJECTARBPROC)(GLhandleARB containerObj, GLhandleARB obj)

    ctypedef void (*PFNGLCOMPILESHADERARBPROC)(GLhandleARB shaderObj)

    ctypedef GLhandleARB (*PFNGLCREATEPROGRAMOBJECTARBPROC)()

    ctypedef GLhandleARB (*PFNGLCREATESHADEROBJECTARBPROC)(GLenum shaderType)

    ctypedef void (*PFNGLDELETEOBJECTARBPROC)(GLhandleARB obj)

    ctypedef void (*PFNGLDETACHOBJECTARBPROC)(GLhandleARB containerObj, GLhandleARB attachedObj)

    ctypedef void (*PFNGLGETACTIVEUNIFORMARBPROC)(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name)

    ctypedef void (*PFNGLGETATTACHEDOBJECTSARBPROC)(GLhandleARB containerObj, GLsizei maxCount, GLsizei* count, GLhandleARB* obj)

    ctypedef GLhandleARB (*PFNGLGETHANDLEARBPROC)(GLenum pname)

    ctypedef void (*PFNGLGETINFOLOGARBPROC)(GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* infoLog)

    ctypedef void (*PFNGLGETOBJECTPARAMETERFVARBPROC)(GLhandleARB obj, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETOBJECTPARAMETERIVARBPROC)(GLhandleARB obj, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETSHADERSOURCEARBPROC)(GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* source)

    ctypedef GLint (*PFNGLGETUNIFORMLOCATIONARBPROC)(GLhandleARB programObj, GLcharARB* name)

    ctypedef void (*PFNGLGETUNIFORMFVARBPROC)(GLhandleARB programObj, GLint location, GLfloat* params)

    ctypedef void (*PFNGLGETUNIFORMIVARBPROC)(GLhandleARB programObj, GLint location, GLint* params)

    ctypedef void (*PFNGLLINKPROGRAMARBPROC)(GLhandleARB programObj)

    ctypedef void (*PFNGLSHADERSOURCEARBPROC)(GLhandleARB shaderObj, GLsizei count, GLcharARB** string, GLint* length)

    ctypedef void (*PFNGLUNIFORM1FARBPROC)(GLint location, GLfloat v0)

    ctypedef void (*PFNGLUNIFORM1FVARBPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM1IARBPROC)(GLint location, GLint v0)

    ctypedef void (*PFNGLUNIFORM1IVARBPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORM2FARBPROC)(GLint location, GLfloat v0, GLfloat v1)

    ctypedef void (*PFNGLUNIFORM2FVARBPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM2IARBPROC)(GLint location, GLint v0, GLint v1)

    ctypedef void (*PFNGLUNIFORM2IVARBPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORM3FARBPROC)(GLint location, GLfloat v0, GLfloat v1, GLfloat v2)

    ctypedef void (*PFNGLUNIFORM3FVARBPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM3IARBPROC)(GLint location, GLint v0, GLint v1, GLint v2)

    ctypedef void (*PFNGLUNIFORM3IVARBPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORM4FARBPROC)(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3) nogil

    ctypedef void (*PFNGLUNIFORM4FVARBPROC)(GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLUNIFORM4IARBPROC)(GLint location, GLint v0, GLint v1, GLint v2, GLint v3)

    ctypedef void (*PFNGLUNIFORM4IVARBPROC)(GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLUNIFORMMATRIX2FVARBPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3FVARBPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4FVARBPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUSEPROGRAMOBJECTARBPROC)(GLhandleARB programObj)

    ctypedef void (*PFNGLVALIDATEPROGRAMARBPROC)(GLhandleARB programObj)

    ctypedef void (*PFNGLSHADERSTORAGEBLOCKBINDINGPROC)(GLuint program, GLuint storageBlockIndex, GLuint storageBlockBinding)

    ctypedef void (*PFNGLGETACTIVESUBROUTINENAMEPROC)(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name)

    ctypedef void (*PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC)(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name)

    ctypedef void (*PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC)(GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values)

    ctypedef void (*PFNGLGETPROGRAMSTAGEIVPROC)(GLuint program, GLenum shadertype, GLenum pname, GLint* values)

    ctypedef GLuint (*PFNGLGETSUBROUTINEINDEXPROC)(GLuint program, GLenum shadertype, GLchar* name)

    ctypedef GLint (*PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC)(GLuint program, GLenum shadertype, GLchar* name)

    ctypedef void (*PFNGLGETUNIFORMSUBROUTINEUIVPROC)(GLenum shadertype, GLint location, GLuint* params)

    ctypedef void (*PFNGLUNIFORMSUBROUTINESUIVPROC)(GLenum shadertype, GLsizei count, GLuint* indices)

    ctypedef void (*PFNGLCOMPILESHADERINCLUDEARBPROC)(GLuint shader, GLsizei count, GLchar** path, GLint* length)

    ctypedef void (*PFNGLDELETENAMEDSTRINGARBPROC)(GLint namelen, GLchar* name)

    ctypedef void (*PFNGLGETNAMEDSTRINGARBPROC)(GLint namelen, GLchar* name, GLsizei bufSize, GLint* stringlen, GLchar* string)

    ctypedef void (*PFNGLGETNAMEDSTRINGIVARBPROC)(GLint namelen, GLchar* name, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISNAMEDSTRINGARBPROC)(GLint namelen, GLchar* name)

    ctypedef void (*PFNGLNAMEDSTRINGARBPROC)(GLenum type, GLint namelen, GLchar* name, GLint stringlen, GLchar* string)

    ctypedef void (*PFNGLBUFFERPAGECOMMITMENTARBPROC)(GLenum target, GLintptr offset, GLsizeiptr size, GLboolean commit)

    ctypedef void (*PFNGLTEXPAGECOMMITMENTARBPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLboolean commit)

    ctypedef GLenum (*PFNGLCLIENTWAITSYNCPROC)(GLsync GLsync, GLbitfield flags, GLuint64 timeout)

    ctypedef void (*PFNGLDELETESYNCPROC)(GLsync GLsync)

    ctypedef GLsync (*PFNGLFENCESYNCPROC)(GLenum condition, GLbitfield flags)

    ctypedef void (*PFNGLGETINTEGER64VPROC)(GLenum pname, GLint64* params)

    ctypedef void (*PFNGLGETSYNCIVPROC)(GLsync GLsync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values)

    ctypedef GLboolean (*PFNGLISSYNCPROC)(GLsync GLsync)

    ctypedef void (*PFNGLWAITSYNCPROC)(GLsync GLsync, GLbitfield flags, GLuint64 timeout)

    ctypedef void (*PFNGLPATCHPARAMETERFVPROC)(GLenum pname, GLfloat* values)

    ctypedef void (*PFNGLPATCHPARAMETERIPROC)(GLenum pname, GLint value)

    ctypedef void (*PFNGLTEXTUREBARRIERPROC)()

    ctypedef void (*PFNGLTEXBUFFERARBPROC)(GLenum target, GLenum internalformat, GLuint buffer)

    ctypedef void (*PFNGLTEXBUFFERRANGEPROC)(GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLTEXTUREBUFFERRANGEEXTPROC)(GLuint texture, GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE1DARBPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE2DARBPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE3DARBPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC)(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLGETCOMPRESSEDTEXIMAGEARBPROC)(GLenum target, GLint lod, void* img)

    ctypedef void (*PFNGLGETMULTISAMPLEFVPROC)(GLenum pname, GLuint index, GLfloat* val)

    ctypedef void (*PFNGLSAMPLEMASKIPROC)(GLuint index, GLbitfield mask)

    ctypedef void (*PFNGLTEXIMAGE2DMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXIMAGE3DMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXSTORAGE1DPROC)(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width)

    ctypedef void (*PFNGLTEXSTORAGE2DPROC)(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLTEXSTORAGE3DPROC)(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLTEXSTORAGE2DMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXSTORAGE3DMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXTURESTORAGE2DMULTISAMPLEEXTPROC)(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXTURESTORAGE3DMULTISAMPLEEXTPROC)(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLTEXTUREVIEWPROC)(GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers)

    ctypedef void (*PFNGLGETQUERYOBJECTI64VPROC)(GLuint id, GLenum pname, GLint64* params)

    ctypedef void (*PFNGLGETQUERYOBJECTUI64VPROC)(GLuint id, GLenum pname, GLuint64* params)

    ctypedef void (*PFNGLQUERYCOUNTERPROC)(GLuint id, GLenum target)

    ctypedef void (*PFNGLBINDTRANSFORMFEEDBACKPROC)(GLenum target, GLuint id)

    ctypedef void (*PFNGLDELETETRANSFORMFEEDBACKSPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLDRAWTRANSFORMFEEDBACKPROC)(GLenum mode, GLuint id)

    ctypedef void (*PFNGLGENTRANSFORMFEEDBACKSPROC)(GLsizei n, GLuint* ids)

    ctypedef GLboolean (*PFNGLISTRANSFORMFEEDBACKPROC)(GLuint id)

    ctypedef void (*PFNGLPAUSETRANSFORMFEEDBACKPROC)()

    ctypedef void (*PFNGLRESUMETRANSFORMFEEDBACKPROC)()

    ctypedef void (*PFNGLBEGINQUERYINDEXEDPROC)(GLenum target, GLuint index, GLuint id)

    ctypedef void (*PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC)(GLenum mode, GLuint id, GLuint stream)

    ctypedef void (*PFNGLENDQUERYINDEXEDPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLGETQUERYINDEXEDIVPROC)(GLenum target, GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC)(GLenum mode, GLuint id, GLsizei primcount)

    ctypedef void (*PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC)(GLenum mode, GLuint id, GLuint stream, GLsizei primcount)

    ctypedef void (*PFNGLLOADTRANSPOSEMATRIXDARBPROC)(GLdouble m[16])

    ctypedef void (*PFNGLLOADTRANSPOSEMATRIXFARBPROC)(GLfloat m[16])

    ctypedef void (*PFNGLMULTTRANSPOSEMATRIXDARBPROC)(GLdouble m[16])

    ctypedef void (*PFNGLMULTTRANSPOSEMATRIXFARBPROC)(GLfloat m[16])

    ctypedef void (*PFNGLBINDBUFFERBASEPROC)(GLenum target, GLuint index, GLuint buffer)

    ctypedef void (*PFNGLBINDBUFFERRANGEPROC)(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC)(GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName)

    ctypedef void (*PFNGLGETACTIVEUNIFORMBLOCKIVPROC)(GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETACTIVEUNIFORMNAMEPROC)(GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName)

    ctypedef void (*PFNGLGETACTIVEUNIFORMSIVPROC)(GLuint program, GLsizei uniformCount, GLuint* uniformIndices, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETINTEGERI_VPROC)(GLenum target, GLuint index, GLint* data)

    ctypedef GLuint (*PFNGLGETUNIFORMBLOCKINDEXPROC)(GLuint program, GLchar* uniformBlockName)

    ctypedef void (*PFNGLGETUNIFORMINDICESPROC)(GLuint program, GLsizei uniformCount, GLchar** uniformNames, GLuint* uniformIndices)

    ctypedef void (*PFNGLUNIFORMBLOCKBINDINGPROC)(GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding)

    ctypedef void (*PFNGLBINDVERTEXARRAYPROC)(GLuint array)

    ctypedef void (*PFNGLDELETEVERTEXARRAYSPROC)(GLsizei n, GLuint* arrays)

    ctypedef void (*PFNGLGENVERTEXARRAYSPROC)(GLsizei n, GLuint* arrays)

    ctypedef GLboolean (*PFNGLISVERTEXARRAYPROC)(GLuint array)

    ctypedef void (*PFNGLGETVERTEXATTRIBLDVPROC)(GLuint index, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLVERTEXATTRIBL1DPROC)(GLuint index, GLdouble x)

    ctypedef void (*PFNGLVERTEXATTRIBL1DVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBL2DPROC)(GLuint index, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLVERTEXATTRIBL2DVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBL3DPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLVERTEXATTRIBL3DVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBL4DPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLVERTEXATTRIBL4DVPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBLPOINTERPROC)(GLuint index, GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLBINDVERTEXBUFFERPROC)(GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride)

    ctypedef void (*PFNGLVERTEXARRAYBINDVERTEXBUFFEREXTPROC)(GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBBINDINGEXTPROC)(GLuint vaobj, GLuint attribindex, GLuint bindingindex)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBFORMATEXTPROC)(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBIFORMATEXTPROC)(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBLFORMATEXTPROC)(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXBINDINGDIVISOREXTPROC)(GLuint vaobj, GLuint bindingindex, GLuint divisor)

    ctypedef void (*PFNGLVERTEXATTRIBBINDINGPROC)(GLuint attribindex, GLuint bindingindex)

    ctypedef void (*PFNGLVERTEXATTRIBFORMATPROC)(GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXATTRIBIFORMATPROC)(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXATTRIBLFORMATPROC)(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset)

    ctypedef void (*PFNGLVERTEXBINDINGDIVISORPROC)(GLuint bindingindex, GLuint divisor)

    ctypedef void (*PFNGLVERTEXBLENDARBPROC)(GLint count)

    ctypedef void (*PFNGLWEIGHTPOINTERARBPROC)(GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLWEIGHTBVARBPROC)(GLint size, GLbyte* weights)

    ctypedef void (*PFNGLWEIGHTDVARBPROC)(GLint size, GLdouble* weights)

    ctypedef void (*PFNGLWEIGHTFVARBPROC)(GLint size, GLfloat* weights)

    ctypedef void (*PFNGLWEIGHTIVARBPROC)(GLint size, GLint* weights)

    ctypedef void (*PFNGLWEIGHTSVARBPROC)(GLint size, GLshort* weights)

    ctypedef void (*PFNGLWEIGHTUBVARBPROC)(GLint size, GLubyte* weights)

    ctypedef void (*PFNGLWEIGHTUIVARBPROC)(GLint size, GLuint* weights)

    ctypedef void (*PFNGLWEIGHTUSVARBPROC)(GLint size, GLushort* weights)

    ctypedef ptrdiff_t GLintptrARB

    ctypedef ptrdiff_t GLsizeiptrARB

    ctypedef void (*PFNGLBINDBUFFERARBPROC)(GLenum target, GLuint buffer)

    ctypedef void (*PFNGLBUFFERDATAARBPROC)(GLenum target, GLsizeiptrARB size, void* data, GLenum usage)

    ctypedef void (*PFNGLBUFFERSUBDATAARBPROC)(GLenum target, GLintptrARB offset, GLsizeiptrARB size, void* data)

    ctypedef void (*PFNGLDELETEBUFFERSARBPROC)(GLsizei n, GLuint* buffers)

    ctypedef void (*PFNGLGENBUFFERSARBPROC)(GLsizei n, GLuint* buffers)

    ctypedef void (*PFNGLGETBUFFERPARAMETERIVARBPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETBUFFERPOINTERVARBPROC)(GLenum target, GLenum pname, void** params)

    ctypedef void (*PFNGLGETBUFFERSUBDATAARBPROC)(GLenum target, GLintptrARB offset, GLsizeiptrARB size, void* data)

    ctypedef GLboolean (*PFNGLISBUFFERARBPROC)(GLuint buffer)

    ctypedef void* (*PFNGLMAPBUFFERARBPROC)(GLenum target, GLenum access)

    ctypedef GLboolean (*PFNGLUNMAPBUFFERARBPROC)(GLenum target)

    ctypedef void (*PFNGLBINDPROGRAMARBPROC)(GLenum target, GLuint program)

    ctypedef void (*PFNGLDELETEPROGRAMSARBPROC)(GLsizei n, GLuint* programs)

    ctypedef void (*PFNGLDISABLEVERTEXATTRIBARRAYARBPROC)(GLuint index)

    ctypedef void (*PFNGLENABLEVERTEXATTRIBARRAYARBPROC)(GLuint index)

    ctypedef void (*PFNGLGENPROGRAMSARBPROC)(GLsizei n, GLuint* programs)

    ctypedef void (*PFNGLGETPROGRAMENVPARAMETERDVARBPROC)(GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLGETPROGRAMENVPARAMETERFVARBPROC)(GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC)(GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC)(GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLGETPROGRAMSTRINGARBPROC)(GLenum target, GLenum pname, void* string)

    ctypedef void (*PFNGLGETPROGRAMIVARBPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBPOINTERVARBPROC)(GLuint index, GLenum pname, void** pointer)

    ctypedef void (*PFNGLGETVERTEXATTRIBDVARBPROC)(GLuint index, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBFVARBPROC)(GLuint index, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBIVARBPROC)(GLuint index, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISPROGRAMARBPROC)(GLuint program)

    ctypedef void (*PFNGLPROGRAMENVPARAMETER4DARBPROC)(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLPROGRAMENVPARAMETER4DVARBPROC)(GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLPROGRAMENVPARAMETER4FARBPROC)(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLPROGRAMENVPARAMETER4FVARBPROC)(GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETER4DARBPROC)(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETER4DVARBPROC)(GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETER4FARBPROC)(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETER4FVARBPROC)(GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLPROGRAMSTRINGARBPROC)(GLenum target, GLenum format, GLsizei len, void* string)

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

    ctypedef void (*PFNGLBINDATTRIBLOCATIONARBPROC)(GLhandleARB programObj, GLuint index, GLcharARB* name)

    ctypedef void (*PFNGLGETACTIVEATTRIBARBPROC)(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name)

    ctypedef GLint (*PFNGLGETATTRIBLOCATIONARBPROC)(GLhandleARB programObj, GLcharARB* name)

    ctypedef void (*PFNGLCOLORP3UIPROC)(GLenum type, GLuint color)

    ctypedef void (*PFNGLCOLORP3UIVPROC)(GLenum type, GLuint* color)

    ctypedef void (*PFNGLCOLORP4UIPROC)(GLenum type, GLuint color)

    ctypedef void (*PFNGLCOLORP4UIVPROC)(GLenum type, GLuint* color)

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

    ctypedef void (*PFNGLSECONDARYCOLORP3UIPROC)(GLenum type, GLuint color)

    ctypedef void (*PFNGLSECONDARYCOLORP3UIVPROC)(GLenum type, GLuint* color)

    ctypedef void (*PFNGLTEXCOORDP1UIPROC)(GLenum type, GLuint coords)

    ctypedef void (*PFNGLTEXCOORDP1UIVPROC)(GLenum type, GLuint* coords)

    ctypedef void (*PFNGLTEXCOORDP2UIPROC)(GLenum type, GLuint coords)

    ctypedef void (*PFNGLTEXCOORDP2UIVPROC)(GLenum type, GLuint* coords)

    ctypedef void (*PFNGLTEXCOORDP3UIPROC)(GLenum type, GLuint coords)

    ctypedef void (*PFNGLTEXCOORDP3UIVPROC)(GLenum type, GLuint* coords)

    ctypedef void (*PFNGLTEXCOORDP4UIPROC)(GLenum type, GLuint coords)

    ctypedef void (*PFNGLTEXCOORDP4UIVPROC)(GLenum type, GLuint* coords)

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

    ctypedef void (*PFNGLDEPTHRANGEARRAYVPROC)(GLuint first, GLsizei count, GLclampd* v)

    ctypedef void (*PFNGLDEPTHRANGEINDEXEDPROC)(GLuint index, GLclampd n, GLclampd f)

    ctypedef void (*PFNGLGETDOUBLEI_VPROC)(GLenum target, GLuint index, GLdouble* data)

    ctypedef void (*PFNGLGETFLOATI_VPROC)(GLenum target, GLuint index, GLfloat* data)

    ctypedef void (*PFNGLSCISSORARRAYVPROC)(GLuint first, GLsizei count, GLint* v)

    ctypedef void (*PFNGLSCISSORINDEXEDPROC)(GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLSCISSORINDEXEDVPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVIEWPORTARRAYVPROC)(GLuint first, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLVIEWPORTINDEXEDFPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h)

    ctypedef void (*PFNGLVIEWPORTINDEXEDFVPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLWINDOWPOS2DARBPROC)(GLdouble x, GLdouble y)

    ctypedef void (*PFNGLWINDOWPOS2DVARBPROC)(GLdouble* p)

    ctypedef void (*PFNGLWINDOWPOS2FARBPROC)(GLfloat x, GLfloat y)

    ctypedef void (*PFNGLWINDOWPOS2FVARBPROC)(GLfloat* p)

    ctypedef void (*PFNGLWINDOWPOS2IARBPROC)(GLint x, GLint y)

    ctypedef void (*PFNGLWINDOWPOS2IVARBPROC)(GLint* p)

    ctypedef void (*PFNGLWINDOWPOS2SARBPROC)(GLshort x, GLshort y)

    ctypedef void (*PFNGLWINDOWPOS2SVARBPROC)(GLshort* p)

    ctypedef void (*PFNGLWINDOWPOS3DARBPROC)(GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLWINDOWPOS3DVARBPROC)(GLdouble* p)

    ctypedef void (*PFNGLWINDOWPOS3FARBPROC)(GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLWINDOWPOS3FVARBPROC)(GLfloat* p)

    ctypedef void (*PFNGLWINDOWPOS3IARBPROC)(GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLWINDOWPOS3IVARBPROC)(GLint* p)

    ctypedef void (*PFNGLWINDOWPOS3SARBPROC)(GLshort x, GLshort y, GLshort z)

    ctypedef void (*PFNGLWINDOWPOS3SVARBPROC)(GLshort* p)

    ctypedef void (*PFNGLDRAWBUFFERSATIPROC)(GLsizei n, GLenum* bufs)

    ctypedef void (*PFNGLDRAWELEMENTARRAYATIPROC)(GLenum mode, GLsizei count)

    ctypedef void (*PFNGLDRAWRANGEELEMENTARRAYATIPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count)

    ctypedef void (*PFNGLELEMENTPOINTERATIPROC)(GLenum type, void* pointer)

    ctypedef void (*PFNGLGETTEXBUMPPARAMETERFVATIPROC)(GLenum pname, GLfloat* param)

    ctypedef void (*PFNGLGETTEXBUMPPARAMETERIVATIPROC)(GLenum pname, GLint* param)

    ctypedef void (*PFNGLTEXBUMPPARAMETERFVATIPROC)(GLenum pname, GLfloat* param)

    ctypedef void (*PFNGLTEXBUMPPARAMETERIVATIPROC)(GLenum pname, GLint* param)

    ctypedef void (*PFNGLALPHAFRAGMENTOP1ATIPROC)(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod)

    ctypedef void (*PFNGLALPHAFRAGMENTOP2ATIPROC)(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod)

    ctypedef void (*PFNGLALPHAFRAGMENTOP3ATIPROC)(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod)

    ctypedef void (*PFNGLBEGINFRAGMENTSHADERATIPROC)()

    ctypedef void (*PFNGLBINDFRAGMENTSHADERATIPROC)(GLuint id)

    ctypedef void (*PFNGLCOLORFRAGMENTOP1ATIPROC)(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod)

    ctypedef void (*PFNGLCOLORFRAGMENTOP2ATIPROC)(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod)

    ctypedef void (*PFNGLCOLORFRAGMENTOP3ATIPROC)(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod)

    ctypedef void (*PFNGLDELETEFRAGMENTSHADERATIPROC)(GLuint id)

    ctypedef void (*PFNGLENDFRAGMENTSHADERATIPROC)()

    ctypedef GLuint (*PFNGLGENFRAGMENTSHADERSATIPROC)(GLuint range)

    ctypedef void (*PFNGLPASSTEXCOORDATIPROC)(GLuint dst, GLuint coord, GLenum swizzle)

    ctypedef void (*PFNGLSAMPLEMAPATIPROC)(GLuint dst, GLuint interp, GLenum swizzle)

    ctypedef void (*PFNGLSETFRAGMENTSHADERCONSTANTATIPROC)(GLuint dst, GLfloat* value)

    ctypedef void* (*PFNGLMAPOBJECTBUFFERATIPROC)(GLuint buffer)

    ctypedef void (*PFNGLUNMAPOBJECTBUFFERATIPROC)(GLuint buffer)

    ctypedef void (*PFNGLPNTRIANGLESFATIPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLPNTRIANGLESIATIPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLSTENCILFUNCSEPARATEATIPROC)(GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask)

    ctypedef void (*PFNGLSTENCILOPSEPARATEATIPROC)(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass)

    ctypedef void (*PFNGLARRAYOBJECTATIPROC)(GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset)

    ctypedef void (*PFNGLFREEOBJECTBUFFERATIPROC)(GLuint buffer)

    ctypedef void (*PFNGLGETARRAYOBJECTFVATIPROC)(GLenum array, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETARRAYOBJECTIVATIPROC)(GLenum array, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETOBJECTBUFFERFVATIPROC)(GLuint buffer, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETOBJECTBUFFERIVATIPROC)(GLuint buffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVARIANTARRAYOBJECTFVATIPROC)(GLuint id, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETVARIANTARRAYOBJECTIVATIPROC)(GLuint id, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISOBJECTBUFFERATIPROC)(GLuint buffer)

    ctypedef GLuint (*PFNGLNEWOBJECTBUFFERATIPROC)(GLsizei size, void* pointer, GLenum usage)

    ctypedef void (*PFNGLUPDATEOBJECTBUFFERATIPROC)(GLuint buffer, GLuint offset, GLsizei size, void* pointer, GLenum preserve)

    ctypedef void (*PFNGLVARIANTARRAYOBJECTATIPROC)(GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset)

    ctypedef void (*PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC)(GLuint index, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC)(GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLVERTEXATTRIBARRAYOBJECTATIPROC)(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset)

    ctypedef void (*PFNGLCLIENTACTIVEVERTEXSTREAMATIPROC)(GLenum stream)

    ctypedef void (*PFNGLNORMALSTREAM3BATIPROC)(GLenum stream, GLbyte x, GLbyte y, GLbyte z)

    ctypedef void (*PFNGLNORMALSTREAM3BVATIPROC)(GLenum stream, GLbyte* coords)

    ctypedef void (*PFNGLNORMALSTREAM3DATIPROC)(GLenum stream, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLNORMALSTREAM3DVATIPROC)(GLenum stream, GLdouble* coords)

    ctypedef void (*PFNGLNORMALSTREAM3FATIPROC)(GLenum stream, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLNORMALSTREAM3FVATIPROC)(GLenum stream, GLfloat* coords)

    ctypedef void (*PFNGLNORMALSTREAM3IATIPROC)(GLenum stream, GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLNORMALSTREAM3IVATIPROC)(GLenum stream, GLint* coords)

    ctypedef void (*PFNGLNORMALSTREAM3SATIPROC)(GLenum stream, GLshort x, GLshort y, GLshort z)

    ctypedef void (*PFNGLNORMALSTREAM3SVATIPROC)(GLenum stream, GLshort* coords)

    ctypedef void (*PFNGLVERTEXBLENDENVFATIPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLVERTEXBLENDENVIATIPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLVERTEXSTREAM1DATIPROC)(GLenum stream, GLdouble x)

    ctypedef void (*PFNGLVERTEXSTREAM1DVATIPROC)(GLenum stream, GLdouble* coords)

    ctypedef void (*PFNGLVERTEXSTREAM1FATIPROC)(GLenum stream, GLfloat x)

    ctypedef void (*PFNGLVERTEXSTREAM1FVATIPROC)(GLenum stream, GLfloat* coords)

    ctypedef void (*PFNGLVERTEXSTREAM1IATIPROC)(GLenum stream, GLint x)

    ctypedef void (*PFNGLVERTEXSTREAM1IVATIPROC)(GLenum stream, GLint* coords)

    ctypedef void (*PFNGLVERTEXSTREAM1SATIPROC)(GLenum stream, GLshort x)

    ctypedef void (*PFNGLVERTEXSTREAM1SVATIPROC)(GLenum stream, GLshort* coords)

    ctypedef void (*PFNGLVERTEXSTREAM2DATIPROC)(GLenum stream, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLVERTEXSTREAM2DVATIPROC)(GLenum stream, GLdouble* coords)

    ctypedef void (*PFNGLVERTEXSTREAM2FATIPROC)(GLenum stream, GLfloat x, GLfloat y)

    ctypedef void (*PFNGLVERTEXSTREAM2FVATIPROC)(GLenum stream, GLfloat* coords)

    ctypedef void (*PFNGLVERTEXSTREAM2IATIPROC)(GLenum stream, GLint x, GLint y)

    ctypedef void (*PFNGLVERTEXSTREAM2IVATIPROC)(GLenum stream, GLint* coords)

    ctypedef void (*PFNGLVERTEXSTREAM2SATIPROC)(GLenum stream, GLshort x, GLshort y)

    ctypedef void (*PFNGLVERTEXSTREAM2SVATIPROC)(GLenum stream, GLshort* coords)

    ctypedef void (*PFNGLVERTEXSTREAM3DATIPROC)(GLenum stream, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLVERTEXSTREAM3DVATIPROC)(GLenum stream, GLdouble* coords)

    ctypedef void (*PFNGLVERTEXSTREAM3FATIPROC)(GLenum stream, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLVERTEXSTREAM3FVATIPROC)(GLenum stream, GLfloat* coords)

    ctypedef void (*PFNGLVERTEXSTREAM3IATIPROC)(GLenum stream, GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLVERTEXSTREAM3IVATIPROC)(GLenum stream, GLint* coords)

    ctypedef void (*PFNGLVERTEXSTREAM3SATIPROC)(GLenum stream, GLshort x, GLshort y, GLshort z)

    ctypedef void (*PFNGLVERTEXSTREAM3SVATIPROC)(GLenum stream, GLshort* coords)

    ctypedef void (*PFNGLVERTEXSTREAM4DATIPROC)(GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLVERTEXSTREAM4DVATIPROC)(GLenum stream, GLdouble* coords)

    ctypedef void (*PFNGLVERTEXSTREAM4FATIPROC)(GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLVERTEXSTREAM4FVATIPROC)(GLenum stream, GLfloat* coords)

    ctypedef void (*PFNGLVERTEXSTREAM4IATIPROC)(GLenum stream, GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLVERTEXSTREAM4IVATIPROC)(GLenum stream, GLint* coords)

    ctypedef void (*PFNGLVERTEXSTREAM4SATIPROC)(GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w)

    ctypedef void (*PFNGLVERTEXSTREAM4SVATIPROC)(GLenum stream, GLshort* coords)

    ctypedef void (*PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEEXTPROC)(GLenum mode, GLint first, GLsizei count, GLsizei instancecount, GLuint baseinstance)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEEXTPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei instancecount, GLuint baseinstance)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEEXTPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei instancecount, GLint basevertex, GLuint baseinstance)

    ctypedef GLint (*PFNGLGETUNIFORMBUFFERSIZEEXTPROC)(GLuint program, GLint location)

    ctypedef GLintptr (*PFNGLGETUNIFORMOFFSETEXTPROC)(GLuint program, GLint location)

    ctypedef void (*PFNGLUNIFORMBUFFEREXTPROC)(GLuint program, GLint location, GLuint buffer)

    ctypedef void (*PFNGLBLENDCOLOREXTPROC)(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)

    ctypedef void (*PFNGLBLENDEQUATIONSEPARATEEXTPROC)(GLenum modeRGB, GLenum modeAlpha)

    ctypedef void (*PFNGLBINDFRAGDATALOCATIONINDEXEDEXTPROC)(GLuint program, GLuint colorNumber, GLuint index, GLchar* name)

    ctypedef GLint (*PFNGLGETFRAGDATAINDEXEXTPROC)(GLuint program, GLchar* name)

    ctypedef GLint (*PFNGLGETPROGRAMRESOURCELOCATIONINDEXEXTPROC)(GLuint program, GLenum programInterface, GLchar* name)

    ctypedef void (*PFNGLBLENDFUNCSEPARATEEXTPROC)(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)

    ctypedef void (*PFNGLBLENDEQUATIONEXTPROC)(GLenum mode)

    ctypedef void (*PFNGLBUFFERSTORAGEEXTPROC)(GLenum target, GLsizeiptr size, void* data, GLbitfield flags)

    ctypedef void (*PFNGLNAMEDBUFFERSTORAGEEXTPROC)(GLuint buffer, GLsizeiptr size, void* data, GLbitfield flags)

    ctypedef void (*PFNGLCLEARTEXIMAGEEXTPROC)(GLuint texture, GLint level, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCLEARTEXSUBIMAGEEXTPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCOLORSUBTABLEEXTPROC)(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLCOPYCOLORSUBTABLEEXTPROC)(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLLOCKARRAYSEXTPROC)(GLint first, GLsizei count)

    ctypedef void (*PFNGLUNLOCKARRAYSEXTPROC)()

    ctypedef void (*PFNGLCONVOLUTIONFILTER1DEXTPROC)(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, void* image)

    ctypedef void (*PFNGLCONVOLUTIONFILTER2DEXTPROC)(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, void* image)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERFEXTPROC)(GLenum target, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERFVEXTPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERIEXTPROC)(GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLCONVOLUTIONPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC)(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC)(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLGETCONVOLUTIONFILTEREXTPROC)(GLenum target, GLenum format, GLenum type, void* image)

    ctypedef void (*PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETSEPARABLEFILTEREXTPROC)(GLenum target, GLenum format, GLenum type, void* row, void* column, void* span)

    ctypedef void (*PFNGLSEPARABLEFILTER2DEXTPROC)(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, void* row, void* column)

    ctypedef void (*PFNGLBINORMALPOINTEREXTPROC)(GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLTANGENTPOINTEREXTPROC)(GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLCOPYIMAGESUBDATAEXTPROC)(GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth)

    ctypedef void (*PFNGLCOPYTEXIMAGE1DEXTPROC)(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)

    ctypedef void (*PFNGLCOPYTEXIMAGE2DEXTPROC)(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

    ctypedef void (*PFNGLCOPYTEXSUBIMAGE1DEXTPROC)(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYTEXSUBIMAGE2DEXTPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLCOPYTEXSUBIMAGE3DEXTPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLCULLPARAMETERDVEXTPROC)(GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLCULLPARAMETERFVEXTPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETOBJECTLABELEXTPROC)(GLenum type, GLuint object, GLsizei bufSize, GLsizei* length, GLchar* label)

    ctypedef void (*PFNGLLABELOBJECTEXTPROC)(GLenum type, GLuint object, GLsizei length, GLchar* label)

    ctypedef void (*PFNGLINSERTEVENTMARKEREXTPROC)(GLsizei length, GLchar* marker)

    ctypedef void (*PFNGLPOPGROUPMARKEREXTPROC)()

    ctypedef void (*PFNGLPUSHGROUPMARKEREXTPROC)(GLsizei length, GLchar* marker)

    ctypedef void (*PFNGLDEPTHBOUNDSEXTPROC)(GLclampd zmin, GLclampd zmax)

    ctypedef void (*PFNGLBINDMULTITEXTUREEXTPROC)(GLenum texunit, GLenum target, GLuint texture)

    ctypedef GLenum (*PFNGLCHECKNAMEDFRAMEBUFFERSTATUSEXTPROC)(GLuint framebuffer, GLenum target)

    ctypedef void (*PFNGLCLIENTATTRIBDEFAULTEXTPROC)(GLbitfield mask)

    ctypedef void (*PFNGLCOMPRESSEDMULTITEXIMAGE1DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDMULTITEXIMAGE2DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDMULTITEXIMAGE3DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDMULTITEXSUBIMAGE1DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDMULTITEXSUBIMAGE2DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDMULTITEXSUBIMAGE3DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXTUREIMAGE1DEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXTUREIMAGE2DEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXTUREIMAGE3DEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXTURESUBIMAGE1DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXTURESUBIMAGE2DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXTURESUBIMAGE3DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOPYMULTITEXIMAGE1DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)

    ctypedef void (*PFNGLCOPYMULTITEXIMAGE2DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

    ctypedef void (*PFNGLCOPYMULTITEXSUBIMAGE1DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYMULTITEXSUBIMAGE2DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLCOPYMULTITEXSUBIMAGE3DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLCOPYTEXTUREIMAGE1DEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)

    ctypedef void (*PFNGLCOPYTEXTUREIMAGE2DEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)

    ctypedef void (*PFNGLCOPYTEXTURESUBIMAGE1DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLCOPYTEXTURESUBIMAGE2DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLCOPYTEXTURESUBIMAGE3DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLDISABLECLIENTSTATEINDEXEDEXTPROC)(GLenum array, GLuint index)

    ctypedef void (*PFNGLDISABLECLIENTSTATEIEXTPROC)(GLenum array, GLuint index)

    ctypedef void (*PFNGLDISABLEVERTEXARRAYATTRIBEXTPROC)(GLuint vaobj, GLuint index)

    ctypedef void (*PFNGLDISABLEVERTEXARRAYEXTPROC)(GLuint vaobj, GLenum array)

    ctypedef void (*PFNGLENABLECLIENTSTATEINDEXEDEXTPROC)(GLenum array, GLuint index)

    ctypedef void (*PFNGLENABLECLIENTSTATEIEXTPROC)(GLenum array, GLuint index)

    ctypedef void (*PFNGLENABLEVERTEXARRAYATTRIBEXTPROC)(GLuint vaobj, GLuint index)

    ctypedef void (*PFNGLENABLEVERTEXARRAYEXTPROC)(GLuint vaobj, GLenum array)

    ctypedef void (*PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEEXTPROC)(GLuint buffer, GLintptr offset, GLsizeiptr length)

    ctypedef void (*PFNGLFRAMEBUFFERDRAWBUFFEREXTPROC)(GLuint framebuffer, GLenum mode)

    ctypedef void (*PFNGLFRAMEBUFFERDRAWBUFFERSEXTPROC)(GLuint framebuffer, GLsizei n, GLenum* bufs)

    ctypedef void (*PFNGLFRAMEBUFFERREADBUFFEREXTPROC)(GLuint framebuffer, GLenum mode)

    ctypedef void (*PFNGLGENERATEMULTITEXMIPMAPEXTPROC)(GLenum texunit, GLenum target)

    ctypedef void (*PFNGLGENERATETEXTUREMIPMAPEXTPROC)(GLuint texture, GLenum target)

    ctypedef void (*PFNGLGETCOMPRESSEDMULTITEXIMAGEEXTPROC)(GLenum texunit, GLenum target, GLint level, void* img)

    ctypedef void (*PFNGLGETCOMPRESSEDTEXTUREIMAGEEXTPROC)(GLuint texture, GLenum target, GLint level, void* img)

    ctypedef void (*PFNGLGETDOUBLEINDEXEDVEXTPROC)(GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLGETDOUBLEI_VEXTPROC)(GLenum pname, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLGETFLOATINDEXEDVEXTPROC)(GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLGETFLOATI_VEXTPROC)(GLenum pname, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLGETFRAMEBUFFERPARAMETERIVEXTPROC)(GLuint framebuffer, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETMULTITEXENVFVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMULTITEXENVIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMULTITEXGENDVEXTPROC)(GLenum texunit, GLenum coord, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLGETMULTITEXGENFVEXTPROC)(GLenum texunit, GLenum coord, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMULTITEXGENIVEXTPROC)(GLenum texunit, GLenum coord, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMULTITEXIMAGEEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLGETMULTITEXLEVELPARAMETERFVEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMULTITEXLEVELPARAMETERIVEXTPROC)(GLenum texunit, GLenum target, GLint level, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMULTITEXPARAMETERIIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMULTITEXPARAMETERIUIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETMULTITEXPARAMETERFVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMULTITEXPARAMETERIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETNAMEDBUFFERPARAMETERIVEXTPROC)(GLuint buffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETNAMEDBUFFERPOINTERVEXTPROC)(GLuint buffer, GLenum pname, void** params)

    ctypedef void (*PFNGLGETNAMEDBUFFERSUBDATAEXTPROC)(GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC)(GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETNAMEDPROGRAMLOCALPARAMETERIIVEXTPROC)(GLuint program, GLenum target, GLuint index, GLint* params)

    ctypedef void (*PFNGLGETNAMEDPROGRAMLOCALPARAMETERIUIVEXTPROC)(GLuint program, GLenum target, GLuint index, GLuint* params)

    ctypedef void (*PFNGLGETNAMEDPROGRAMLOCALPARAMETERDVEXTPROC)(GLuint program, GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLGETNAMEDPROGRAMLOCALPARAMETERFVEXTPROC)(GLuint program, GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLGETNAMEDPROGRAMSTRINGEXTPROC)(GLuint program, GLenum target, GLenum pname, void* string)

    ctypedef void (*PFNGLGETNAMEDPROGRAMIVEXTPROC)(GLuint program, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETNAMEDRENDERBUFFERPARAMETERIVEXTPROC)(GLuint renderbuffer, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETPOINTERINDEXEDVEXTPROC)(GLenum target, GLuint index, void** params)

    ctypedef void (*PFNGLGETPOINTERI_VEXTPROC)(GLenum pname, GLuint index, void** params)

    ctypedef void (*PFNGLGETTEXTUREIMAGEEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLGETTEXTURELEVELPARAMETERFVEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETTEXTURELEVELPARAMETERIVEXTPROC)(GLuint texture, GLenum target, GLint level, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERIIVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERIUIVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERFVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETTEXTUREPARAMETERIVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVERTEXARRAYINTEGERI_VEXTPROC)(GLuint vaobj, GLuint index, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETVERTEXARRAYINTEGERVEXTPROC)(GLuint vaobj, GLenum pname, GLint* param)

    ctypedef void (*PFNGLGETVERTEXARRAYPOINTERI_VEXTPROC)(GLuint vaobj, GLuint index, GLenum pname, void** param)

    ctypedef void (*PFNGLGETVERTEXARRAYPOINTERVEXTPROC)(GLuint vaobj, GLenum pname, void** param)

    ctypedef void* (*PFNGLMAPNAMEDBUFFEREXTPROC)(GLuint buffer, GLenum access)

    ctypedef void* (*PFNGLMAPNAMEDBUFFERRANGEEXTPROC)(GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access)

    ctypedef void (*PFNGLMATRIXFRUSTUMEXTPROC)(GLenum matrixMode, GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f)

    ctypedef void (*PFNGLMATRIXLOADIDENTITYEXTPROC)(GLenum matrixMode)

    ctypedef void (*PFNGLMATRIXLOADTRANSPOSEDEXTPROC)(GLenum matrixMode, GLdouble* m)

    ctypedef void (*PFNGLMATRIXLOADTRANSPOSEFEXTPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXLOADDEXTPROC)(GLenum matrixMode, GLdouble* m)

    ctypedef void (*PFNGLMATRIXLOADFEXTPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXMULTTRANSPOSEDEXTPROC)(GLenum matrixMode, GLdouble* m)

    ctypedef void (*PFNGLMATRIXMULTTRANSPOSEFEXTPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXMULTDEXTPROC)(GLenum matrixMode, GLdouble* m)

    ctypedef void (*PFNGLMATRIXMULTFEXTPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXORTHOEXTPROC)(GLenum matrixMode, GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f)

    ctypedef void (*PFNGLMATRIXPOPEXTPROC)(GLenum matrixMode)

    ctypedef void (*PFNGLMATRIXPUSHEXTPROC)(GLenum matrixMode)

    ctypedef void (*PFNGLMATRIXROTATEDEXTPROC)(GLenum matrixMode, GLdouble angle, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLMATRIXROTATEFEXTPROC)(GLenum matrixMode, GLfloat angle, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLMATRIXSCALEDEXTPROC)(GLenum matrixMode, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLMATRIXSCALEFEXTPROC)(GLenum matrixMode, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLMATRIXTRANSLATEDEXTPROC)(GLenum matrixMode, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLMATRIXTRANSLATEFEXTPROC)(GLenum matrixMode, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLMULTITEXBUFFEREXTPROC)(GLenum texunit, GLenum target, GLenum internalformat, GLuint buffer)

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

    ctypedef void (*PFNGLMULTITEXIMAGE1DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLMULTITEXIMAGE2DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLMULTITEXIMAGE3DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLMULTITEXPARAMETERIIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLMULTITEXPARAMETERIUIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLMULTITEXPARAMETERFEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLMULTITEXPARAMETERFVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLfloat* param)

    ctypedef void (*PFNGLMULTITEXPARAMETERIEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLMULTITEXPARAMETERIVEXTPROC)(GLenum texunit, GLenum target, GLenum pname, GLint* param)

    ctypedef void (*PFNGLMULTITEXRENDERBUFFEREXTPROC)(GLenum texunit, GLenum target, GLuint renderbuffer)

    ctypedef void (*PFNGLMULTITEXSUBIMAGE1DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLMULTITEXSUBIMAGE2DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLMULTITEXSUBIMAGE3DEXTPROC)(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLNAMEDBUFFERDATAEXTPROC)(GLuint buffer, GLsizeiptr size, void* data, GLenum usage)

    ctypedef void (*PFNGLNAMEDBUFFERSUBDATAEXTPROC)(GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLNAMEDCOPYBUFFERSUBDATAEXTPROC)(GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERRENDERBUFFEREXTPROC)(GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTURE1DEXTPROC)(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTURE2DEXTPROC)(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTURE3DEXTPROC)(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTUREEXTPROC)(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTUREFACEEXTPROC)(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLenum face)

    ctypedef void (*PFNGLNAMEDFRAMEBUFFERTEXTURELAYEREXTPROC)(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETER4DEXTPROC)(GLuint program, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETER4DVEXTPROC)(GLuint program, GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETER4FEXTPROC)(GLuint program, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETER4FVEXTPROC)(GLuint program, GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERI4IEXTPROC)(GLuint program, GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERI4IVEXTPROC)(GLuint program, GLenum target, GLuint index, GLint* params)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIEXTPROC)(GLuint program, GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIVEXTPROC)(GLuint program, GLenum target, GLuint index, GLuint* params)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERS4FVEXTPROC)(GLuint program, GLenum target, GLuint index, GLsizei count, GLfloat* params)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERSI4IVEXTPROC)(GLuint program, GLenum target, GLuint index, GLsizei count, GLint* params)

    ctypedef void (*PFNGLNAMEDPROGRAMLOCALPARAMETERSI4UIVEXTPROC)(GLuint program, GLenum target, GLuint index, GLsizei count, GLuint* params)

    ctypedef void (*PFNGLNAMEDPROGRAMSTRINGEXTPROC)(GLuint program, GLenum target, GLenum format, GLsizei len, void* string)

    ctypedef void (*PFNGLNAMEDRENDERBUFFERSTORAGEEXTPROC)(GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLECOVERAGEEXTPROC)(GLuint renderbuffer, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC)(GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLPROGRAMUNIFORM1FEXTPROC)(GLuint program, GLint location, GLfloat v0)

    ctypedef void (*PFNGLPROGRAMUNIFORM1FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1IEXTPROC)(GLuint program, GLint location, GLint v0)

    ctypedef void (*PFNGLPROGRAMUNIFORM1IVEXTPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UIEXTPROC)(GLuint program, GLint location, GLuint v0)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UIVEXTPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2FEXTPROC)(GLuint program, GLint location, GLfloat v0, GLfloat v1)

    ctypedef void (*PFNGLPROGRAMUNIFORM2FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2IEXTPROC)(GLuint program, GLint location, GLint v0, GLint v1)

    ctypedef void (*PFNGLPROGRAMUNIFORM2IVEXTPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UIEXTPROC)(GLuint program, GLint location, GLuint v0, GLuint v1)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UIVEXTPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3FEXTPROC)(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2)

    ctypedef void (*PFNGLPROGRAMUNIFORM3FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3IEXTPROC)(GLuint program, GLint location, GLint v0, GLint v1, GLint v2)

    ctypedef void (*PFNGLPROGRAMUNIFORM3IVEXTPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UIEXTPROC)(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UIVEXTPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4FEXTPROC)(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)

    ctypedef void (*PFNGLPROGRAMUNIFORM4FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4IEXTPROC)(GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3)

    ctypedef void (*PFNGLPROGRAMUNIFORM4IVEXTPROC)(GLuint program, GLint location, GLsizei count, GLint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UIEXTPROC)(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UIVEXTPROC)(GLuint program, GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X3FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX2X4FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X2FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX3X4FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X2FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPROGRAMUNIFORMMATRIX4X3FVEXTPROC)(GLuint program, GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLPUSHCLIENTATTRIBDEFAULTEXTPROC)(GLbitfield mask)

    ctypedef void (*PFNGLTEXTUREBUFFEREXTPROC)(GLuint texture, GLenum target, GLenum internalformat, GLuint buffer)

    ctypedef void (*PFNGLTEXTUREIMAGE1DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTUREIMAGE2DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTUREIMAGE3DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTUREPARAMETERIIVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLTEXTUREPARAMETERIUIVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLTEXTUREPARAMETERFEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLTEXTUREPARAMETERFVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLfloat* param)

    ctypedef void (*PFNGLTEXTUREPARAMETERIEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLTEXTUREPARAMETERIVEXTPROC)(GLuint texture, GLenum target, GLenum pname, GLint* param)

    ctypedef void (*PFNGLTEXTURERENDERBUFFEREXTPROC)(GLuint texture, GLenum target, GLuint renderbuffer)

    ctypedef void (*PFNGLTEXTURESUBIMAGE1DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTURESUBIMAGE2DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTURESUBIMAGE3DEXTPROC)(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* pixels)

    ctypedef GLboolean (*PFNGLUNMAPNAMEDBUFFEREXTPROC)(GLuint buffer)

    ctypedef void (*PFNGLVERTEXARRAYCOLOROFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYEDGEFLAGOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYFOGCOORDOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYINDEXOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYMULTITEXCOORDOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLenum texunit, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYNORMALOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYSECONDARYCOLOROFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYTEXCOORDOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBDIVISOREXTPROC)(GLuint vaobj, GLuint index, GLuint divisor)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBIOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLDISCARDFRAMEBUFFEREXTPROC)(GLenum target, GLsizei numAttachments, GLenum* attachments)

    ctypedef void (*PFNGLDRAWBUFFERSEXTPROC)(GLsizei n, GLenum* bufs)

    ctypedef void (*PFNGLCOLORMASKINDEXEDEXTPROC)(GLuint buf, GLboolean r, GLboolean g, GLboolean b, GLboolean a)

    ctypedef void (*PFNGLDISABLEINDEXEDEXTPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLENABLEINDEXEDEXTPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLGETBOOLEANINDEXEDVEXTPROC)(GLenum value, GLuint index, GLboolean* data)

    ctypedef void (*PFNGLGETINTEGERINDEXEDVEXTPROC)(GLenum value, GLuint index, GLint* data)

    ctypedef GLboolean (*PFNGLISENABLEDINDEXEDEXTPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLBLENDEQUATIONSEPARATEIEXTPROC)(GLuint buf, GLenum modeRGB, GLenum modeAlpha)

    ctypedef void (*PFNGLBLENDEQUATIONIEXTPROC)(GLuint buf, GLenum mode)

    ctypedef void (*PFNGLBLENDFUNCSEPARATEIEXTPROC)(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha)

    ctypedef void (*PFNGLBLENDFUNCIEXTPROC)(GLuint buf, GLenum src, GLenum dst)

    ctypedef void (*PFNGLCOLORMASKIEXTPROC)(GLuint buf, GLboolean r, GLboolean g, GLboolean b, GLboolean a)

    ctypedef void (*PFNGLDISABLEIEXTPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLENABLEIEXTPROC)(GLenum target, GLuint index)

    ctypedef GLboolean (*PFNGLISENABLEDIEXTPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLDRAWELEMENTSBASEVERTEXEXTPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLint basevertex)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXEXTPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei instancecount, GLint basevertex)

    ctypedef void (*PFNGLDRAWRANGEELEMENTSBASEVERTEXEXTPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, void* indices, GLint basevertex)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSBASEVERTEXEXTPROC)(GLenum mode, GLsizei* count, GLenum type, void** indices, GLsizei primcount, GLint* basevertex)

    ctypedef void (*PFNGLDRAWARRAYSINSTANCEDEXTPROC)(GLenum mode, GLint start, GLsizei count, GLsizei primcount)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDEXTPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei primcount)

    ctypedef void (*PFNGLDRAWRANGEELEMENTSEXTPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, void* indices)

    ctypedef void* GLeglClientBufferEXT

    ctypedef void (*PFNGLBUFFERSTORAGEEXTERNALEXTPROC)(GLenum target, GLintptr offset, GLsizeiptr size, GLeglClientBufferEXT clientBuffer, GLbitfield flags)

    ctypedef void (*PFNGLNAMEDBUFFERSTORAGEEXTERNALEXTPROC)(GLuint buffer, GLintptr offset, GLsizeiptr size, GLeglClientBufferEXT clientBuffer, GLbitfield flags)

    ctypedef void (*PFNGLFOGCOORDPOINTEREXTPROC)(GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLFOGCOORDDEXTPROC)(GLdouble coord)

    ctypedef void (*PFNGLFOGCOORDDVEXTPROC)(GLdouble* coord)

    ctypedef void (*PFNGLFOGCOORDFEXTPROC)(GLfloat coord)

    ctypedef void (*PFNGLFOGCOORDFVEXTPROC)(GLfloat* coord)

    ctypedef void (*PFNGLFRAGMENTCOLORMATERIALEXTPROC)(GLenum face, GLenum mode)

    ctypedef void (*PFNGLFRAGMENTLIGHTMODELFEXTPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLFRAGMENTLIGHTMODELFVEXTPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLFRAGMENTLIGHTMODELIEXTPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLFRAGMENTLIGHTMODELIVEXTPROC)(GLenum pname, GLint* params)

    ctypedef void (*PFNGLFRAGMENTLIGHTFEXTPROC)(GLenum light, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLFRAGMENTLIGHTFVEXTPROC)(GLenum light, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLFRAGMENTLIGHTIEXTPROC)(GLenum light, GLenum pname, GLint param)

    ctypedef void (*PFNGLFRAGMENTLIGHTIVEXTPROC)(GLenum light, GLenum pname, GLint* params)

    ctypedef void (*PFNGLFRAGMENTMATERIALFEXTPROC)(GLenum face, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLFRAGMENTMATERIALFVEXTPROC)(GLenum face, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLFRAGMENTMATERIALIEXTPROC)(GLenum face, GLenum pname, GLint param)

    ctypedef void (*PFNGLFRAGMENTMATERIALIVEXTPROC)(GLenum face, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETFRAGMENTLIGHTFVEXTPROC)(GLenum light, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETFRAGMENTLIGHTIVEXTPROC)(GLenum light, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETFRAGMENTMATERIALFVEXTPROC)(GLenum face, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETFRAGMENTMATERIALIVEXTPROC)(GLenum face, GLenum pname, GLint* params)

    ctypedef void (*PFNGLLIGHTENVIEXTPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLBLITFRAMEBUFFEREXTPROC)(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLBINDFRAMEBUFFEREXTPROC)(GLenum target, GLuint framebuffer) nogil

    ctypedef void (*PFNGLBINDRENDERBUFFEREXTPROC)(GLenum target, GLuint renderbuffer)

    ctypedef GLenum (*PFNGLCHECKFRAMEBUFFERSTATUSEXTPROC)(GLenum target)

    ctypedef void (*PFNGLDELETEFRAMEBUFFERSEXTPROC)(GLsizei n, GLuint* framebuffers)

    ctypedef void (*PFNGLDELETERENDERBUFFERSEXTPROC)(GLsizei n, GLuint* renderbuffers)

    ctypedef void (*PFNGLFRAMEBUFFERRENDERBUFFEREXTPROC)(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE1DEXTPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE2DEXTPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE3DEXTPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)

    ctypedef void (*PFNGLGENFRAMEBUFFERSEXTPROC)(GLsizei n, GLuint* framebuffers)

    ctypedef void (*PFNGLGENRENDERBUFFERSEXTPROC)(GLsizei n, GLuint* renderbuffers)

    ctypedef void (*PFNGLGENERATEMIPMAPEXTPROC)(GLenum target)

    ctypedef void (*PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC)(GLenum target, GLenum attachment, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETRENDERBUFFERPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISFRAMEBUFFEREXTPROC)(GLuint framebuffer)

    ctypedef GLboolean (*PFNGLISRENDERBUFFEREXTPROC)(GLuint renderbuffer)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEEXTPROC)(GLenum target, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREEXTPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face)

    ctypedef void (*PFNGLPROGRAMPARAMETERIEXTPROC)(GLuint program, GLenum pname, GLint value)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERS4FVEXTPROC)(GLenum target, GLuint index, GLsizei count, GLfloat* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERS4FVEXTPROC)(GLenum target, GLuint index, GLsizei count, GLfloat* params)

    ctypedef void (*PFNGLBINDFRAGDATALOCATIONEXTPROC)(GLuint program, GLuint color, GLchar* name)

    ctypedef GLint (*PFNGLGETFRAGDATALOCATIONEXTPROC)(GLuint program, GLchar* name)

    ctypedef void (*PFNGLGETUNIFORMUIVEXTPROC)(GLuint program, GLint location, GLuint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBIIVEXTPROC)(GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBIUIVEXTPROC)(GLuint index, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLUNIFORM1UIEXTPROC)(GLint location, GLuint v0)

    ctypedef void (*PFNGLUNIFORM1UIVEXTPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLUNIFORM2UIEXTPROC)(GLint location, GLuint v0, GLuint v1)

    ctypedef void (*PFNGLUNIFORM2UIVEXTPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLUNIFORM3UIEXTPROC)(GLint location, GLuint v0, GLuint v1, GLuint v2)

    ctypedef void (*PFNGLUNIFORM3UIVEXTPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLUNIFORM4UIEXTPROC)(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)

    ctypedef void (*PFNGLUNIFORM4UIVEXTPROC)(GLint location, GLsizei count, GLuint* value)

    ctypedef void (*PFNGLVERTEXATTRIBI1IEXTPROC)(GLuint index, GLint x)

    ctypedef void (*PFNGLVERTEXATTRIBI1IVEXTPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI1UIEXTPROC)(GLuint index, GLuint x)

    ctypedef void (*PFNGLVERTEXATTRIBI1UIVEXTPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI2IEXTPROC)(GLuint index, GLint x, GLint y)

    ctypedef void (*PFNGLVERTEXATTRIBI2IVEXTPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI2UIEXTPROC)(GLuint index, GLuint x, GLuint y)

    ctypedef void (*PFNGLVERTEXATTRIBI2UIVEXTPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI3IEXTPROC)(GLuint index, GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLVERTEXATTRIBI3IVEXTPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI3UIEXTPROC)(GLuint index, GLuint x, GLuint y, GLuint z)

    ctypedef void (*PFNGLVERTEXATTRIBI3UIVEXTPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4BVEXTPROC)(GLuint index, GLbyte* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4IEXTPROC)(GLuint index, GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLVERTEXATTRIBI4IVEXTPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4SVEXTPROC)(GLuint index, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4UBVEXTPROC)(GLuint index, GLubyte* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4UIEXTPROC)(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

    ctypedef void (*PFNGLVERTEXATTRIBI4UIVEXTPROC)(GLuint index, GLuint* v)

    ctypedef void (*PFNGLVERTEXATTRIBI4USVEXTPROC)(GLuint index, GLushort* v)

    ctypedef void (*PFNGLVERTEXATTRIBIPOINTEREXTPROC)(GLuint index, GLint size, GLenum type, GLsizei stride, void* pointer)

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

    ctypedef void (*PFNGLINDEXFUNCEXTPROC)(GLenum func, GLfloat ref)

    ctypedef void (*PFNGLINDEXMATERIALEXTPROC)(GLenum face, GLenum mode)

    ctypedef void (*PFNGLVERTEXATTRIBDIVISOREXTPROC)(GLuint index, GLuint divisor)

    ctypedef void (*PFNGLAPPLYTEXTUREEXTPROC)(GLenum mode)

    ctypedef void (*PFNGLTEXTURELIGHTEXTPROC)(GLenum pname)

    ctypedef void (*PFNGLTEXTUREMATERIALEXTPROC)(GLenum face, GLenum mode)

    ctypedef void (*PFNGLFLUSHMAPPEDBUFFERRANGEEXTPROC)(GLenum target, GLintptr offset, GLsizeiptr length)

    ctypedef void* (*PFNGLMAPBUFFERRANGEEXTPROC)(GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access)

    ctypedef void (*PFNGLBUFFERSTORAGEMEMEXTPROC)(GLenum target, GLsizeiptr size, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLCREATEMEMORYOBJECTSEXTPROC)(GLsizei n, GLuint* memoryObjects)

    ctypedef void (*PFNGLDELETEMEMORYOBJECTSEXTPROC)(GLsizei n, GLuint* memoryObjects)

    ctypedef void (*PFNGLGETMEMORYOBJECTPARAMETERIVEXTPROC)(GLuint memoryObject, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETUNSIGNEDBYTEI_VEXTPROC)(GLenum target, GLuint index, GLubyte* data)

    ctypedef void (*PFNGLGETUNSIGNEDBYTEVEXTPROC)(GLenum pname, GLubyte* data)

    ctypedef GLboolean (*PFNGLISMEMORYOBJECTEXTPROC)(GLuint memoryObject)

    ctypedef void (*PFNGLMEMORYOBJECTPARAMETERIVEXTPROC)(GLuint memoryObject, GLenum pname, GLint* params)

    ctypedef void (*PFNGLNAMEDBUFFERSTORAGEMEMEXTPROC)(GLuint buffer, GLsizeiptr size, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXSTORAGEMEM1DEXTPROC)(GLenum target, GLsizei levels, GLenum internalFormat, GLsizei width, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXSTORAGEMEM2DEXTPROC)(GLenum target, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXSTORAGEMEM2DMULTISAMPLEEXTPROC)(GLenum target, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXSTORAGEMEM3DEXTPROC)(GLenum target, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXSTORAGEMEM3DMULTISAMPLEEXTPROC)(GLenum target, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXTURESTORAGEMEM1DEXTPROC)(GLuint texture, GLsizei levels, GLenum internalFormat, GLsizei width, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXTURESTORAGEMEM2DEXTPROC)(GLuint texture, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXTURESTORAGEMEM2DMULTISAMPLEEXTPROC)(GLuint texture, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXTURESTORAGEMEM3DEXTPROC)(GLuint texture, GLsizei levels, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLTEXTURESTORAGEMEM3DMULTISAMPLEEXTPROC)(GLuint texture, GLsizei samples, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations, GLuint memory, GLuint64 offset)

    ctypedef void (*PFNGLIMPORTMEMORYFDEXTPROC)(GLuint memory, GLuint64 size, GLenum handleType, GLint fd)

    ctypedef void (*PFNGLIMPORTMEMORYWIN32HANDLEEXTPROC)(GLuint memory, GLuint64 size, GLenum handleType, void* handle)

    ctypedef void (*PFNGLIMPORTMEMORYWIN32NAMEEXTPROC)(GLuint memory, GLuint64 size, GLenum handleType, void* name)

    ctypedef void (*PFNGLMULTIDRAWARRAYSEXTPROC)(GLenum mode, GLint* first, GLsizei* count, GLsizei primcount)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSEXTPROC)(GLenum mode, GLsizei* count, GLenum type, void** indices, GLsizei primcount)

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTEXTPROC)(GLenum mode, void* indirect, GLsizei drawcount, GLsizei stride)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTEXTPROC)(GLenum mode, GLenum type, void* indirect, GLsizei drawcount, GLsizei stride)

    ctypedef void (*PFNGLSAMPLEMASKEXTPROC)(GLclampf value, GLboolean invert)

    ctypedef void (*PFNGLSAMPLEPATTERNEXTPROC)(GLenum pattern)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEEXTPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLsizei samples)

    ctypedef void (*PFNGLDRAWBUFFERSINDEXEDEXTPROC)(GLint n, GLenum* location, GLint* indices)

    ctypedef void (*PFNGLGETINTEGERI_VEXTPROC)(GLenum target, GLuint index, GLint* data)

    ctypedef void (*PFNGLREADBUFFERINDEXEDEXTPROC)(GLenum src, GLint index)

    ctypedef void (*PFNGLCOLORTABLEEXTPROC)(GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLGETCOLORTABLEEXTPROC)(GLenum target, GLenum format, GLenum type, void* data)

    ctypedef void (*PFNGLGETCOLORTABLEPARAMETERFVEXTPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETCOLORTABLEPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETPIXELTRANSFORMPARAMETERFVEXTPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETPIXELTRANSFORMPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLPIXELTRANSFORMPARAMETERFEXTPROC)(GLenum target, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLPIXELTRANSFORMPARAMETERFVEXTPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLPIXELTRANSFORMPARAMETERIEXTPROC)(GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLPIXELTRANSFORMPARAMETERIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLPOINTPARAMETERFEXTPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLPOINTPARAMETERFVEXTPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLPOLYGONOFFSETEXTPROC)(GLfloat factor, GLfloat bias)

    ctypedef void (*PFNGLPOLYGONOFFSETCLAMPEXTPROC)(GLfloat factor, GLfloat units, GLfloat clamp)

    ctypedef void (*PFNGLPROVOKINGVERTEXEXTPROC)(GLenum mode)

    ctypedef void (*PFNGLCOVERAGEMODULATIONNVPROC)(GLenum components)

    ctypedef void (*PFNGLCOVERAGEMODULATIONTABLENVPROC)(GLsizei n, GLfloat* v)

    ctypedef void (*PFNGLGETCOVERAGEMODULATIONTABLENVPROC)(GLsizei bufsize, GLfloat* v)

    ctypedef void (*PFNGLRASTERSAMPLESEXTPROC)(GLuint samples, GLboolean fixedsamplelocations)

    ctypedef void (*PFNGLBEGINSCENEEXTPROC)()

    ctypedef void (*PFNGLENDSCENEEXTPROC)()

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

    ctypedef void (*PFNGLDELETESEMAPHORESEXTPROC)(GLsizei n, GLuint* semaphores)

    ctypedef void (*PFNGLGENSEMAPHORESEXTPROC)(GLsizei n, GLuint* semaphores)

    ctypedef void (*PFNGLGETSEMAPHOREPARAMETERUI64VEXTPROC)(GLuint semaphore, GLenum pname, GLuint64* params)

    ctypedef GLboolean (*PFNGLISSEMAPHOREEXTPROC)(GLuint semaphore)

    ctypedef void (*PFNGLSEMAPHOREPARAMETERUI64VEXTPROC)(GLuint semaphore, GLenum pname, GLuint64* params)

    ctypedef void (*PFNGLSIGNALSEMAPHOREEXTPROC)(GLuint semaphore, GLuint numBufferBarriers, GLuint* buffers, GLuint numTextureBarriers, GLuint* textures, GLenum* dstLayouts)

    ctypedef void (*PFNGLWAITSEMAPHOREEXTPROC)(GLuint semaphore, GLuint numBufferBarriers, GLuint* buffers, GLuint numTextureBarriers, GLuint* textures, GLenum* srcLayouts)

    ctypedef void (*PFNGLIMPORTSEMAPHOREFDEXTPROC)(GLuint semaphore, GLenum handleType, GLint fd)

    ctypedef void (*PFNGLIMPORTSEMAPHOREWIN32HANDLEEXTPROC)(GLuint semaphore, GLenum handleType, void* handle)

    ctypedef void (*PFNGLIMPORTSEMAPHOREWIN32NAMEEXTPROC)(GLuint semaphore, GLenum handleType, void* name)

    ctypedef void (*PFNGLACTIVEPROGRAMEXTPROC)(GLuint program)

    ctypedef GLuint (*PFNGLCREATESHADERPROGRAMEXTPROC)(GLenum type, GLchar* string)

    ctypedef void (*PFNGLUSESHADERPROGRAMEXTPROC)(GLenum type, GLuint program)

    ctypedef void (*PFNGLBINDIMAGETEXTUREEXTPROC)(GLuint index, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLint format)

    ctypedef void (*PFNGLMEMORYBARRIEREXTPROC)(GLbitfield barriers)

    ctypedef void (*PFNGLCLEARPIXELLOCALSTORAGEUIEXTPROC)(GLsizei offset, GLsizei n, GLuint* values)

    ctypedef void (*PFNGLFRAMEBUFFERPIXELLOCALSTORAGESIZEEXTPROC)(GLuint target, GLsizei size)

    ctypedef GLsizei (*PFNGLGETFRAMEBUFFERPIXELLOCALSTORAGESIZEEXTPROC)(GLuint target)

    ctypedef void (*PFNGLTEXPAGECOMMITMENTEXTPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLboolean commit)

    ctypedef void (*PFNGLTEXTUREPAGECOMMITMENTEXTPROC)(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLboolean commit)

    ctypedef void (*PFNGLACTIVESTENCILFACEEXTPROC)(GLenum face)

    ctypedef void (*PFNGLTEXSUBIMAGE1DEXTPROC)(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXSUBIMAGE2DEXTPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXSUBIMAGE3DEXTPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXIMAGE3DEXTPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)

    ctypedef void (*PFNGLTEXBUFFEREXTPROC)(GLenum target, GLenum internalformat, GLuint buffer)

    ctypedef void (*PFNGLCLEARCOLORIIEXTPROC)(GLint red, GLint green, GLint blue, GLint alpha)

    ctypedef void (*PFNGLCLEARCOLORIUIEXTPROC)(GLuint red, GLuint green, GLuint blue, GLuint alpha)

    ctypedef void (*PFNGLGETTEXPARAMETERIIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTEXPARAMETERIUIVEXTPROC)(GLenum target, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLTEXPARAMETERIIVEXTPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLTEXPARAMETERIUIVEXTPROC)(GLenum target, GLenum pname, GLuint* params)

    ctypedef GLboolean (*PFNGLARETEXTURESRESIDENTEXTPROC)(GLsizei n, GLuint* textures, GLboolean* residences)

    ctypedef void (*PFNGLBINDTEXTUREEXTPROC)(GLenum target, GLuint texture)

    ctypedef void (*PFNGLDELETETEXTURESEXTPROC)(GLsizei n, GLuint* textures)

    ctypedef void (*PFNGLGENTEXTURESEXTPROC)(GLsizei n, GLuint* textures)

    ctypedef GLboolean (*PFNGLISTEXTUREEXTPROC)(GLuint texture)

    ctypedef void (*PFNGLPRIORITIZETEXTURESEXTPROC)(GLsizei n, GLuint* textures, GLclampf* priorities)

    ctypedef void (*PFNGLTEXTURENORMALEXTPROC)(GLenum mode)

    ctypedef void (*PFNGLTEXSTORAGE1DEXTPROC)(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width)

    ctypedef void (*PFNGLTEXSTORAGE2DEXTPROC)(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLTEXSTORAGE3DEXTPROC)(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLTEXTURESTORAGE1DEXTPROC)(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width)

    ctypedef void (*PFNGLTEXTURESTORAGE2DEXTPROC)(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLTEXTURESTORAGE3DEXTPROC)(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLTEXTUREVIEWEXTPROC)(GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers)

    ctypedef void (*PFNGLGETQUERYOBJECTI64VEXTPROC)(GLuint id, GLenum pname, GLint64EXT* params)

    ctypedef void (*PFNGLGETQUERYOBJECTUI64VEXTPROC)(GLuint id, GLenum pname, GLuint64EXT* params)

    ctypedef void (*PFNGLBEGINTRANSFORMFEEDBACKEXTPROC)(GLenum primitiveMode)

    ctypedef void (*PFNGLBINDBUFFERBASEEXTPROC)(GLenum target, GLuint index, GLuint buffer)

    ctypedef void (*PFNGLBINDBUFFEROFFSETEXTPROC)(GLenum target, GLuint index, GLuint buffer, GLintptr offset)

    ctypedef void (*PFNGLBINDBUFFERRANGEEXTPROC)(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLENDTRANSFORMFEEDBACKEXTPROC)()

    ctypedef void (*PFNGLGETTRANSFORMFEEDBACKVARYINGEXTPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name)

    ctypedef void (*PFNGLTRANSFORMFEEDBACKVARYINGSEXTPROC)(GLuint program, GLsizei count, GLchar** varyings, GLenum bufferMode)

    ctypedef void (*PFNGLARRAYELEMENTEXTPROC)(GLint i)

    ctypedef void (*PFNGLCOLORPOINTEREXTPROC)(GLint size, GLenum type, GLsizei stride, GLsizei count, void* pointer)

    ctypedef void (*PFNGLDRAWARRAYSEXTPROC)(GLenum mode, GLint first, GLsizei count)

    ctypedef void (*PFNGLEDGEFLAGPOINTEREXTPROC)(GLsizei stride, GLsizei count, GLboolean* pointer)

    ctypedef void (*PFNGLINDEXPOINTEREXTPROC)(GLenum type, GLsizei stride, GLsizei count, void* pointer)

    ctypedef void (*PFNGLNORMALPOINTEREXTPROC)(GLenum type, GLsizei stride, GLsizei count, void* pointer)

    ctypedef void (*PFNGLTEXCOORDPOINTEREXTPROC)(GLint size, GLenum type, GLsizei stride, GLsizei count, void* pointer)

    ctypedef void (*PFNGLVERTEXPOINTEREXTPROC)(GLint size, GLenum type, GLsizei stride, GLsizei count, void* pointer)

    ctypedef void (*PFNGLBINDARRAYSETEXTPROC)(void* arrayset)

    ctypedef void* (*PFNGLCREATEARRAYSETEXTPROC)()

    ctypedef void (*PFNGLDELETEARRAYSETSEXTPROC)(GLsizei n, void* arrayset[])

    ctypedef void (*PFNGLGETVERTEXATTRIBLDVEXTPROC)(GLuint index, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLVERTEXARRAYVERTEXATTRIBLOFFSETEXTPROC)(GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset)

    ctypedef void (*PFNGLVERTEXATTRIBL1DEXTPROC)(GLuint index, GLdouble x)

    ctypedef void (*PFNGLVERTEXATTRIBL1DVEXTPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBL2DEXTPROC)(GLuint index, GLdouble x, GLdouble y)

    ctypedef void (*PFNGLVERTEXATTRIBL2DVEXTPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBL3DEXTPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLVERTEXATTRIBL3DVEXTPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBL4DEXTPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLVERTEXATTRIBL4DVEXTPROC)(GLuint index, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBLPOINTEREXTPROC)(GLuint index, GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLBEGINVERTEXSHADEREXTPROC)()

    ctypedef GLuint (*PFNGLBINDLIGHTPARAMETEREXTPROC)(GLenum light, GLenum value)

    ctypedef GLuint (*PFNGLBINDMATERIALPARAMETEREXTPROC)(GLenum face, GLenum value)

    ctypedef GLuint (*PFNGLBINDPARAMETEREXTPROC)(GLenum value)

    ctypedef GLuint (*PFNGLBINDTEXGENPARAMETEREXTPROC)(GLenum unit, GLenum coord, GLenum value)

    ctypedef GLuint (*PFNGLBINDTEXTUREUNITPARAMETEREXTPROC)(GLenum unit, GLenum value)

    ctypedef void (*PFNGLBINDVERTEXSHADEREXTPROC)(GLuint id)

    ctypedef void (*PFNGLDELETEVERTEXSHADEREXTPROC)(GLuint id)

    ctypedef void (*PFNGLDISABLEVARIANTCLIENTSTATEEXTPROC)(GLuint id)

    ctypedef void (*PFNGLENABLEVARIANTCLIENTSTATEEXTPROC)(GLuint id)

    ctypedef void (*PFNGLENDVERTEXSHADEREXTPROC)()

    ctypedef void (*PFNGLEXTRACTCOMPONENTEXTPROC)(GLuint res, GLuint src, GLuint num)

    ctypedef GLuint (*PFNGLGENSYMBOLSEXTPROC)(GLenum dataType, GLenum storageType, GLenum range, GLuint components)

    ctypedef GLuint (*PFNGLGENVERTEXSHADERSEXTPROC)(GLuint range)

    ctypedef void (*PFNGLGETINVARIANTBOOLEANVEXTPROC)(GLuint id, GLenum value, GLboolean* data)

    ctypedef void (*PFNGLGETINVARIANTFLOATVEXTPROC)(GLuint id, GLenum value, GLfloat* data)

    ctypedef void (*PFNGLGETINVARIANTINTEGERVEXTPROC)(GLuint id, GLenum value, GLint* data)

    ctypedef void (*PFNGLGETLOCALCONSTANTBOOLEANVEXTPROC)(GLuint id, GLenum value, GLboolean* data)

    ctypedef void (*PFNGLGETLOCALCONSTANTFLOATVEXTPROC)(GLuint id, GLenum value, GLfloat* data)

    ctypedef void (*PFNGLGETLOCALCONSTANTINTEGERVEXTPROC)(GLuint id, GLenum value, GLint* data)

    ctypedef void (*PFNGLGETVARIANTBOOLEANVEXTPROC)(GLuint id, GLenum value, GLboolean* data)

    ctypedef void (*PFNGLGETVARIANTFLOATVEXTPROC)(GLuint id, GLenum value, GLfloat* data)

    ctypedef void (*PFNGLGETVARIANTINTEGERVEXTPROC)(GLuint id, GLenum value, GLint* data)

    ctypedef void (*PFNGLGETVARIANTPOINTERVEXTPROC)(GLuint id, GLenum value, void** data)

    ctypedef void (*PFNGLINSERTCOMPONENTEXTPROC)(GLuint res, GLuint src, GLuint num)

    ctypedef GLboolean (*PFNGLISVARIANTENABLEDEXTPROC)(GLuint id, GLenum cap)

    ctypedef void (*PFNGLSETINVARIANTEXTPROC)(GLuint id, GLenum type, void* addr)

    ctypedef void (*PFNGLSETLOCALCONSTANTEXTPROC)(GLuint id, GLenum type, void* addr)

    ctypedef void (*PFNGLSHADEROP1EXTPROC)(GLenum op, GLuint res, GLuint arg1)

    ctypedef void (*PFNGLSHADEROP2EXTPROC)(GLenum op, GLuint res, GLuint arg1, GLuint arg2)

    ctypedef void (*PFNGLSHADEROP3EXTPROC)(GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3)

    ctypedef void (*PFNGLSWIZZLEEXTPROC)(GLuint res, GLuint in_, GLenum outX, GLenum outY, GLenum outZ, GLenum outW)

    ctypedef void (*PFNGLVARIANTPOINTEREXTPROC)(GLuint id, GLenum type, GLuint stride, void* addr)

    ctypedef void (*PFNGLVARIANTBVEXTPROC)(GLuint id, GLbyte* addr)

    ctypedef void (*PFNGLVARIANTDVEXTPROC)(GLuint id, GLdouble* addr)

    ctypedef void (*PFNGLVARIANTFVEXTPROC)(GLuint id, GLfloat* addr)

    ctypedef void (*PFNGLVARIANTIVEXTPROC)(GLuint id, GLint* addr)

    ctypedef void (*PFNGLVARIANTSVEXTPROC)(GLuint id, GLshort* addr)

    ctypedef void (*PFNGLVARIANTUBVEXTPROC)(GLuint id, GLubyte* addr)

    ctypedef void (*PFNGLVARIANTUIVEXTPROC)(GLuint id, GLuint* addr)

    ctypedef void (*PFNGLVARIANTUSVEXTPROC)(GLuint id, GLushort* addr)

    ctypedef void (*PFNGLWRITEMASKEXTPROC)(GLuint res, GLuint in_, GLenum outX, GLenum outY, GLenum outZ, GLenum outW)

    ctypedef void (*PFNGLVERTEXWEIGHTPOINTEREXTPROC)(GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLVERTEXWEIGHTFEXTPROC)(GLfloat weight)

    ctypedef void (*PFNGLVERTEXWEIGHTFVEXTPROC)(GLfloat* weight)

    ctypedef GLboolean (*PFNGLACQUIREKEYEDMUTEXWIN32EXTPROC)(GLuint memory, GLuint64 key, GLuint timeout)

    ctypedef GLboolean (*PFNGLRELEASEKEYEDMUTEXWIN32EXTPROC)(GLuint memory, GLuint64 key)

    ctypedef void (*PFNGLWINDOWRECTANGLESEXTPROC)(GLenum mode, GLsizei count, GLint box[])

    ctypedef GLsync (*PFNGLIMPORTSYNCEXTPROC)(GLenum external_sync_type, GLintptr external_sync, GLbitfield flags)

    ctypedef void (*PFNGLFRAMETERMINATORGREMEDYPROC)()

    ctypedef void (*PFNGLSTRINGMARKERGREMEDYPROC)(GLsizei len, void* string)

    ctypedef void (*PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLIMAGETRANSFORMPARAMETERFHPPROC)(GLenum target, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLIMAGETRANSFORMPARAMETERFVHPPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLIMAGETRANSFORMPARAMETERIHPPROC)(GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLIMAGETRANSFORMPARAMETERIVHPPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLMULTIMODEDRAWARRAYSIBMPROC)(GLenum* mode, GLint* first, GLsizei* count, GLsizei primcount, GLint modestride)

    ctypedef void (*PFNGLMULTIMODEDRAWELEMENTSIBMPROC)(GLenum* mode, GLsizei* count, GLenum type, void** indices, GLsizei primcount, GLint modestride)

    ctypedef void (*PFNGLCOLORPOINTERLISTIBMPROC)(GLint size, GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLEDGEFLAGPOINTERLISTIBMPROC)(GLint stride, GLboolean** pointer, GLint ptrstride)

    ctypedef void (*PFNGLFOGCOORDPOINTERLISTIBMPROC)(GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLINDEXPOINTERLISTIBMPROC)(GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLNORMALPOINTERLISTIBMPROC)(GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLSECONDARYCOLORPOINTERLISTIBMPROC)(GLint size, GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLTEXCOORDPOINTERLISTIBMPROC)(GLint size, GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void (*PFNGLVERTEXPOINTERLISTIBMPROC)(GLint size, GLenum type, GLint stride, void** pointer, GLint ptrstride)

    ctypedef void* (*PFNGLMAPTEXTURE2DINTELPROC)(GLuint texture, GLint level, GLbitfield access, GLint* stride, GLenum* layout)

    ctypedef void (*PFNGLSYNCTEXTUREINTELPROC)(GLuint texture)

    ctypedef void (*PFNGLUNMAPTEXTURE2DINTELPROC)(GLuint texture, GLint level)

    ctypedef void (*PFNGLCOLORPOINTERVINTELPROC)(GLint size, GLenum type, void** pointer)

    ctypedef void (*PFNGLNORMALPOINTERVINTELPROC)(GLenum type, void** pointer)

    ctypedef void (*PFNGLTEXCOORDPOINTERVINTELPROC)(GLint size, GLenum type, void** pointer)

    ctypedef void (*PFNGLVERTEXPOINTERVINTELPROC)(GLint size, GLenum type, void** pointer)

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

    ctypedef void (*PFNGLTEXSCISSORFUNCINTELPROC)(GLenum target, GLenum lfunc, GLenum hfunc)

    ctypedef void (*PFNGLTEXSCISSORINTELPROC)(GLenum target, GLclampf tlow, GLclampf thigh)

    ctypedef void (*PFNGLBLENDBARRIERKHRPROC)()

    ctypedef void (*GLDEBUGPROC)(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, GLchar* message, void* userParam)

    ctypedef void (*PFNGLDEBUGMESSAGECALLBACKPROC)(GLDEBUGPROC callback, void* userParam)

    ctypedef void (*PFNGLDEBUGMESSAGECONTROLPROC)(GLenum source, GLenum type, GLenum severity, GLsizei count, GLuint* ids, GLboolean enabled)

    ctypedef void (*PFNGLDEBUGMESSAGEINSERTPROC)(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, GLchar* buf)

    ctypedef GLuint (*PFNGLGETDEBUGMESSAGELOGPROC)(GLuint count, GLsizei bufSize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog)

    ctypedef void (*PFNGLGETOBJECTLABELPROC)(GLenum identifier, GLuint name, GLsizei bufSize, GLsizei* length, GLchar* label)

    ctypedef void (*PFNGLGETOBJECTPTRLABELPROC)(void* ptr, GLsizei bufSize, GLsizei* length, GLchar* label)

    ctypedef void (*PFNGLOBJECTLABELPROC)(GLenum identifier, GLuint name, GLsizei length, GLchar* label)

    ctypedef void (*PFNGLOBJECTPTRLABELPROC)(void* ptr, GLsizei length, GLchar* label)

    ctypedef void (*PFNGLPOPDEBUGGROUPPROC)()

    ctypedef void (*PFNGLPUSHDEBUGGROUPPROC)(GLenum source, GLuint id, GLsizei length, GLchar* message)

    ctypedef void (*PFNGLMAXSHADERCOMPILERTHREADSKHRPROC)(GLuint count)

    ctypedef void (*PFNGLGETNUNIFORMFVPROC)(GLuint program, GLint location, GLsizei bufSize, GLfloat* params)

    ctypedef void (*PFNGLGETNUNIFORMIVPROC)(GLuint program, GLint location, GLsizei bufSize, GLint* params)

    ctypedef void (*PFNGLGETNUNIFORMUIVPROC)(GLuint program, GLint location, GLsizei bufSize, GLuint* params)

    ctypedef void (*PFNGLREADNPIXELSPROC)(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, void* data)

    ctypedef GLuint (*PFNGLBUFFERREGIONENABLEDPROC)()

    ctypedef void (*PFNGLDELETEBUFFERREGIONPROC)(GLenum region)

    ctypedef void (*PFNGLDRAWBUFFERREGIONPROC)(GLuint region, GLint x, GLint y, GLsizei width, GLsizei height, GLint xDest, GLint yDest)

    ctypedef GLuint (*PFNGLNEWBUFFERREGIONPROC)(GLenum region)

    ctypedef void (*PFNGLREADBUFFERREGIONPROC)(GLuint region, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLRESIZEBUFFERSMESAPROC)()

    ctypedef void (*PFNGLWINDOWPOS2DMESAPROC)(GLdouble x, GLdouble y)

    ctypedef void (*PFNGLWINDOWPOS2DVMESAPROC)(GLdouble* p)

    ctypedef void (*PFNGLWINDOWPOS2FMESAPROC)(GLfloat x, GLfloat y)

    ctypedef void (*PFNGLWINDOWPOS2FVMESAPROC)(GLfloat* p)

    ctypedef void (*PFNGLWINDOWPOS2IMESAPROC)(GLint x, GLint y)

    ctypedef void (*PFNGLWINDOWPOS2IVMESAPROC)(GLint* p)

    ctypedef void (*PFNGLWINDOWPOS2SMESAPROC)(GLshort x, GLshort y)

    ctypedef void (*PFNGLWINDOWPOS2SVMESAPROC)(GLshort* p)

    ctypedef void (*PFNGLWINDOWPOS3DMESAPROC)(GLdouble x, GLdouble y, GLdouble z)

    ctypedef void (*PFNGLWINDOWPOS3DVMESAPROC)(GLdouble* p)

    ctypedef void (*PFNGLWINDOWPOS3FMESAPROC)(GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLWINDOWPOS3FVMESAPROC)(GLfloat* p)

    ctypedef void (*PFNGLWINDOWPOS3IMESAPROC)(GLint x, GLint y, GLint z)

    ctypedef void (*PFNGLWINDOWPOS3IVMESAPROC)(GLint* p)

    ctypedef void (*PFNGLWINDOWPOS3SMESAPROC)(GLshort x, GLshort y, GLshort z)

    ctypedef void (*PFNGLWINDOWPOS3SVMESAPROC)(GLshort* p)

    ctypedef void (*PFNGLWINDOWPOS4DMESAPROC)(GLdouble x, GLdouble y, GLdouble z, GLdouble)

    ctypedef void (*PFNGLWINDOWPOS4DVMESAPROC)(GLdouble* p)

    ctypedef void (*PFNGLWINDOWPOS4FMESAPROC)(GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLWINDOWPOS4FVMESAPROC)(GLfloat* p)

    ctypedef void (*PFNGLWINDOWPOS4IMESAPROC)(GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLWINDOWPOS4IVMESAPROC)(GLint* p)

    ctypedef void (*PFNGLWINDOWPOS4SMESAPROC)(GLshort x, GLshort y, GLshort z, GLshort w)

    ctypedef void (*PFNGLWINDOWPOS4SVMESAPROC)(GLshort* p)

    ctypedef void (*PFNGLBEGINCONDITIONALRENDERNVXPROC)(GLuint id)

    ctypedef void (*PFNGLENDCONDITIONALRENDERNVXPROC)()

    ctypedef void (*PFNGLLGPUCOPYIMAGESUBDATANVXPROC)(GLuint sourceGpu, GLbitfield destinationGpuMask, GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srxY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLLGPUINTERLOCKNVXPROC)()

    ctypedef void (*PFNGLLGPUNAMEDBUFFERSUBDATANVXPROC)(GLbitfield gpuMask, GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLSTEREOPARAMETERFNVPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLSTEREOPARAMETERINVPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSNVPROC)(GLenum mode, void* indirect, GLsizei drawCount, GLsizei stride, GLint vertexBufferCount)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSNVPROC)(GLenum mode, GLenum type, void* indirect, GLsizei drawCount, GLsizei stride, GLint vertexBufferCount)

    ctypedef void (*PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSCOUNTNVPROC)(GLenum mode, void* indirect, GLintptr drawCount, GLsizei maxDrawCount, GLsizei stride, GLint vertexBufferCount)

    ctypedef void (*PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSCOUNTNVPROC)(GLenum mode, GLenum type, void* indirect, GLintptr drawCount, GLsizei maxDrawCount, GLsizei stride, GLint vertexBufferCount)

    ctypedef GLuint64 (*PFNGLGETIMAGEHANDLENVPROC)(GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format)

    ctypedef GLuint64 (*PFNGLGETTEXTUREHANDLENVPROC)(GLuint texture)

    ctypedef GLuint64 (*PFNGLGETTEXTURESAMPLERHANDLENVPROC)(GLuint texture, GLuint sampler)

    ctypedef GLboolean (*PFNGLISIMAGEHANDLERESIDENTNVPROC)(GLuint64 handle)

    ctypedef GLboolean (*PFNGLISTEXTUREHANDLERESIDENTNVPROC)(GLuint64 handle)

    ctypedef void (*PFNGLMAKEIMAGEHANDLENONRESIDENTNVPROC)(GLuint64 handle)

    ctypedef void (*PFNGLMAKEIMAGEHANDLERESIDENTNVPROC)(GLuint64 handle, GLenum access)

    ctypedef void (*PFNGLMAKETEXTUREHANDLENONRESIDENTNVPROC)(GLuint64 handle)

    ctypedef void (*PFNGLMAKETEXTUREHANDLERESIDENTNVPROC)(GLuint64 handle)

    ctypedef void (*PFNGLPROGRAMUNIFORMHANDLEUI64NVPROC)(GLuint program, GLint location, GLuint64 value)

    ctypedef void (*PFNGLPROGRAMUNIFORMHANDLEUI64VNVPROC)(GLuint program, GLint location, GLsizei count, GLuint64* values)

    ctypedef void (*PFNGLUNIFORMHANDLEUI64NVPROC)(GLint location, GLuint64 value)

    ctypedef void (*PFNGLUNIFORMHANDLEUI64VNVPROC)(GLint location, GLsizei count, GLuint64* value)

    ctypedef void (*PFNGLBLENDBARRIERNVPROC)()

    ctypedef void (*PFNGLBLENDPARAMETERINVPROC)(GLenum pname, GLint value)

    ctypedef void (*PFNGLVIEWPORTPOSITIONWSCALENVPROC)(GLuint index, GLfloat xcoeff, GLfloat ycoeff)

    ctypedef void (*PFNGLCALLCOMMANDLISTNVPROC)(GLuint list)

    ctypedef void (*PFNGLCOMMANDLISTSEGMENTSNVPROC)(GLuint list, GLuint segments)

    ctypedef void (*PFNGLCOMPILECOMMANDLISTNVPROC)(GLuint list)

    ctypedef void (*PFNGLCREATECOMMANDLISTSNVPROC)(GLsizei n, GLuint* lists)

    ctypedef void (*PFNGLCREATESTATESNVPROC)(GLsizei n, GLuint* states)

    ctypedef void (*PFNGLDELETECOMMANDLISTSNVPROC)(GLsizei n, GLuint* lists)

    ctypedef void (*PFNGLDELETESTATESNVPROC)(GLsizei n, GLuint* states)

    ctypedef void (*PFNGLDRAWCOMMANDSADDRESSNVPROC)(GLenum primitiveMode, GLuint64* indirects, GLsizei* sizes, GLuint count)

    ctypedef void (*PFNGLDRAWCOMMANDSNVPROC)(GLenum primitiveMode, GLuint buffer, GLintptr* indirects, GLsizei* sizes, GLuint count)

    ctypedef void (*PFNGLDRAWCOMMANDSSTATESADDRESSNVPROC)(GLuint64* indirects, GLsizei* sizes, GLuint* states, GLuint* fbos, GLuint count)

    ctypedef void (*PFNGLDRAWCOMMANDSSTATESNVPROC)(GLuint buffer, GLintptr* indirects, GLsizei* sizes, GLuint* states, GLuint* fbos, GLuint count)

    ctypedef GLuint (*PFNGLGETCOMMANDHEADERNVPROC)(GLenum tokenID, GLuint size)

    ctypedef GLushort (*PFNGLGETSTAGEINDEXNVPROC)(GLenum shadertype)

    ctypedef GLboolean (*PFNGLISCOMMANDLISTNVPROC)(GLuint list)

    ctypedef GLboolean (*PFNGLISSTATENVPROC)(GLuint state)

    ctypedef void (*PFNGLLISTDRAWCOMMANDSSTATESCLIENTNVPROC)(GLuint list, GLuint segment, void** indirects, GLsizei* sizes, GLuint* states, GLuint* fbos, GLuint count)

    ctypedef void (*PFNGLSTATECAPTURENVPROC)(GLuint state, GLenum mode)

    ctypedef void (*PFNGLBEGINCONDITIONALRENDERNVPROC)(GLuint id, GLenum mode)

    ctypedef void (*PFNGLENDCONDITIONALRENDERNVPROC)()

    ctypedef void (*PFNGLSUBPIXELPRECISIONBIASNVPROC)(GLuint xbits, GLuint ybits)

    ctypedef void (*PFNGLCONSERVATIVERASTERPARAMETERFNVPROC)(GLenum pname, GLfloat value)

    ctypedef void (*PFNGLCONSERVATIVERASTERPARAMETERINVPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLCOPYBUFFERSUBDATANVPROC)(GLenum readtarget, GLenum writetarget, GLintptr readoffset, GLintptr writeoffset, GLsizeiptr size)

    ctypedef void (*PFNGLCOPYIMAGESUBDATANVPROC)(GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth)

    ctypedef void (*PFNGLCLEARDEPTHDNVPROC)(GLdouble depth)

    ctypedef void (*PFNGLDEPTHBOUNDSDNVPROC)(GLdouble zmin, GLdouble zmax)

    ctypedef void (*PFNGLDEPTHRANGEDNVPROC)(GLdouble zNear, GLdouble zFar)

    ctypedef void (*PFNGLDRAWBUFFERSNVPROC)(GLsizei n, GLenum* bufs)

    ctypedef void (*PFNGLDRAWARRAYSINSTANCEDNVPROC)(GLenum mode, GLint first, GLsizei count, GLsizei primcount)

    ctypedef void (*PFNGLDRAWELEMENTSINSTANCEDNVPROC)(GLenum mode, GLsizei count, GLenum type, void* indices, GLsizei primcount)

    ctypedef void (*PFNGLDRAWTEXTURENVPROC)(GLuint texture, GLuint sampler, GLfloat x0, GLfloat y0, GLfloat x1, GLfloat y1, GLfloat z, GLfloat s0, GLfloat t0, GLfloat s1, GLfloat t1)

    ctypedef void (*GLVULKANPROCNV)()

    ctypedef void (*PFNGLDRAWVKIMAGENVPROC)(GLuint64 vkImage, GLuint sampler, GLfloat x0, GLfloat y0, GLfloat x1, GLfloat y1, GLfloat z, GLfloat s0, GLfloat t0, GLfloat s1, GLfloat t1)

    ctypedef GLVULKANPROCNV (*PFNGLGETVKPROCADDRNVPROC)(GLchar* name)

    ctypedef void (*PFNGLSIGNALVKFENCENVPROC)(GLuint64 vkFence)

    ctypedef void (*PFNGLSIGNALVKSEMAPHORENVPROC)(GLuint64 vkSemaphore)

    ctypedef void (*PFNGLWAITVKSEMAPHORENVPROC)(GLuint64 vkSemaphore)

    ctypedef void (*PFNGLEVALMAPSNVPROC)(GLenum target, GLenum mode)

    ctypedef void (*PFNGLGETMAPATTRIBPARAMETERFVNVPROC)(GLenum target, GLuint index, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMAPATTRIBPARAMETERIVNVPROC)(GLenum target, GLuint index, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMAPCONTROLPOINTSNVPROC)(GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, void* points)

    ctypedef void (*PFNGLGETMAPPARAMETERFVNVPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMAPPARAMETERIVNVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLMAPCONTROLPOINTSNVPROC)(GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, void* points)

    ctypedef void (*PFNGLMAPPARAMETERFVNVPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLMAPPARAMETERIVNVPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMULTISAMPLEFVNVPROC)(GLenum pname, GLuint index, GLfloat* val)

    ctypedef void (*PFNGLSAMPLEMASKINDEXEDNVPROC)(GLuint index, GLbitfield mask)

    ctypedef void (*PFNGLTEXRENDERBUFFERNVPROC)(GLenum target, GLuint renderbuffer)

    ctypedef void (*PFNGLDELETEFENCESNVPROC)(GLsizei n, GLuint* fences)

    ctypedef void (*PFNGLFINISHFENCENVPROC)(GLuint fence)

    ctypedef void (*PFNGLGENFENCESNVPROC)(GLsizei n, GLuint* fences)

    ctypedef void (*PFNGLGETFENCEIVNVPROC)(GLuint fence, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISFENCENVPROC)(GLuint fence)

    ctypedef void (*PFNGLSETFENCENVPROC)(GLuint fence, GLenum condition)

    ctypedef GLboolean (*PFNGLTESTFENCENVPROC)(GLuint fence)

    ctypedef void (*PFNGLFRAGMENTCOVERAGECOLORNVPROC)(GLuint color)

    ctypedef void (*PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC)(GLuint id, GLsizei len, GLubyte* name, GLdouble* params)

    ctypedef void (*PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC)(GLuint id, GLsizei len, GLubyte* name, GLfloat* params)

    ctypedef void (*PFNGLPROGRAMNAMEDPARAMETER4DNVPROC)(GLuint id, GLsizei len, GLubyte* name, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC)(GLuint id, GLsizei len, GLubyte* name, GLdouble v[])

    ctypedef void (*PFNGLPROGRAMNAMEDPARAMETER4FNVPROC)(GLuint id, GLsizei len, GLubyte* name, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC)(GLuint id, GLsizei len, GLubyte* name, GLfloat v[])

    ctypedef void (*PFNGLBLITFRAMEBUFFERNVPROC)(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEMULTISAMPLENVPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC)(GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLPROGRAMVERTEXLIMITNVPROC)(GLenum target, GLint limit)

    ctypedef void (*PFNGLMULTICASTBARRIERNVPROC)()

    ctypedef void (*PFNGLMULTICASTBLITFRAMEBUFFERNVPROC)(GLuint srcGpu, GLuint dstGpu, GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)

    ctypedef void (*PFNGLMULTICASTBUFFERSUBDATANVPROC)(GLbitfield gpuMask, GLuint buffer, GLintptr offset, GLsizeiptr size, void* data)

    ctypedef void (*PFNGLMULTICASTCOPYBUFFERSUBDATANVPROC)(GLuint readGpu, GLbitfield writeGpuMask, GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)

    ctypedef void (*PFNGLMULTICASTCOPYIMAGESUBDATANVPROC)(GLuint srcGpu, GLbitfield dstGpuMask, GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth)

    ctypedef void (*PFNGLMULTICASTFRAMEBUFFERSAMPLELOCATIONSFVNVPROC)(GLuint gpu, GLuint framebuffer, GLuint start, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLMULTICASTGETQUERYOBJECTI64VNVPROC)(GLuint gpu, GLuint id, GLenum pname, GLint64* params)

    ctypedef void (*PFNGLMULTICASTGETQUERYOBJECTIVNVPROC)(GLuint gpu, GLuint id, GLenum pname, GLint* params)

    ctypedef void (*PFNGLMULTICASTGETQUERYOBJECTUI64VNVPROC)(GLuint gpu, GLuint id, GLenum pname, GLuint64* params)

    ctypedef void (*PFNGLMULTICASTGETQUERYOBJECTUIVNVPROC)(GLuint gpu, GLuint id, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLMULTICASTWAITSYNCNVPROC)(GLuint signalGpu, GLbitfield waitGpuMask)

    ctypedef void (*PFNGLRENDERGPUMASKNVPROC)(GLbitfield mask)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERI4INVPROC)(GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERI4IVNVPROC)(GLenum target, GLuint index, GLint* params)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERI4UINVPROC)(GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERI4UIVNVPROC)(GLenum target, GLuint index, GLuint* params)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERSI4IVNVPROC)(GLenum target, GLuint index, GLsizei count, GLint* params)

    ctypedef void (*PFNGLPROGRAMENVPARAMETERSI4UIVNVPROC)(GLenum target, GLuint index, GLsizei count, GLuint* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERI4INVPROC)(GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERI4IVNVPROC)(GLenum target, GLuint index, GLint* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERI4UINVPROC)(GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERI4UIVNVPROC)(GLenum target, GLuint index, GLuint* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERSI4IVNVPROC)(GLenum target, GLuint index, GLsizei count, GLint* params)

    ctypedef void (*PFNGLPROGRAMLOCALPARAMETERSI4UIVNVPROC)(GLenum target, GLuint index, GLsizei count, GLuint* params)

    ctypedef void (*PFNGLGETUNIFORMI64VNVPROC)(GLuint program, GLint location, GLint64EXT* params)

    ctypedef void (*PFNGLGETUNIFORMUI64VNVPROC)(GLuint program, GLint location, GLuint64EXT* params)

    ctypedef void (*PFNGLPROGRAMUNIFORM1I64NVPROC)(GLuint program, GLint location, GLint64EXT x)

    ctypedef void (*PFNGLPROGRAMUNIFORM1I64VNVPROC)(GLuint program, GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UI64NVPROC)(GLuint program, GLint location, GLuint64EXT x)

    ctypedef void (*PFNGLPROGRAMUNIFORM1UI64VNVPROC)(GLuint program, GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2I64NVPROC)(GLuint program, GLint location, GLint64EXT x, GLint64EXT y)

    ctypedef void (*PFNGLPROGRAMUNIFORM2I64VNVPROC)(GLuint program, GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UI64NVPROC)(GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y)

    ctypedef void (*PFNGLPROGRAMUNIFORM2UI64VNVPROC)(GLuint program, GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3I64NVPROC)(GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z)

    ctypedef void (*PFNGLPROGRAMUNIFORM3I64VNVPROC)(GLuint program, GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UI64NVPROC)(GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)

    ctypedef void (*PFNGLPROGRAMUNIFORM3UI64VNVPROC)(GLuint program, GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4I64NVPROC)(GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)

    ctypedef void (*PFNGLPROGRAMUNIFORM4I64VNVPROC)(GLuint program, GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UI64NVPROC)(GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)

    ctypedef void (*PFNGLPROGRAMUNIFORM4UI64VNVPROC)(GLuint program, GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLUNIFORM1I64NVPROC)(GLint location, GLint64EXT x) nogil

    ctypedef void (*PFNGLUNIFORM1I64VNVPROC)(GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLUNIFORM1UI64NVPROC)(GLint location, GLuint64EXT x)

    ctypedef void (*PFNGLUNIFORM1UI64VNVPROC)(GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLUNIFORM2I64NVPROC)(GLint location, GLint64EXT x, GLint64EXT y)

    ctypedef void (*PFNGLUNIFORM2I64VNVPROC)(GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLUNIFORM2UI64NVPROC)(GLint location, GLuint64EXT x, GLuint64EXT y)

    ctypedef void (*PFNGLUNIFORM2UI64VNVPROC)(GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLUNIFORM3I64NVPROC)(GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z)

    ctypedef void (*PFNGLUNIFORM3I64VNVPROC)(GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLUNIFORM3UI64NVPROC)(GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)

    ctypedef void (*PFNGLUNIFORM3UI64VNVPROC)(GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLUNIFORM4I64NVPROC)(GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)

    ctypedef void (*PFNGLUNIFORM4I64VNVPROC)(GLint location, GLsizei count, GLint64EXT* value)

    ctypedef void (*PFNGLUNIFORM4UI64NVPROC)(GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)

    ctypedef void (*PFNGLUNIFORM4UI64VNVPROC)(GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef unsigned short GLhalf

    ctypedef void (*PFNGLCOLOR3HNVPROC)(GLhalf red, GLhalf green, GLhalf blue)

    ctypedef void (*PFNGLCOLOR3HVNVPROC)(GLhalf* v)

    ctypedef void (*PFNGLCOLOR4HNVPROC)(GLhalf red, GLhalf green, GLhalf blue, GLhalf alpha)

    ctypedef void (*PFNGLCOLOR4HVNVPROC)(GLhalf* v)

    ctypedef void (*PFNGLFOGCOORDHNVPROC)(GLhalf fog)

    ctypedef void (*PFNGLFOGCOORDHVNVPROC)(GLhalf* fog)

    ctypedef void (*PFNGLMULTITEXCOORD1HNVPROC)(GLenum target, GLhalf s)

    ctypedef void (*PFNGLMULTITEXCOORD1HVNVPROC)(GLenum target, GLhalf* v)

    ctypedef void (*PFNGLMULTITEXCOORD2HNVPROC)(GLenum target, GLhalf s, GLhalf t)

    ctypedef void (*PFNGLMULTITEXCOORD2HVNVPROC)(GLenum target, GLhalf* v)

    ctypedef void (*PFNGLMULTITEXCOORD3HNVPROC)(GLenum target, GLhalf s, GLhalf t, GLhalf r)

    ctypedef void (*PFNGLMULTITEXCOORD3HVNVPROC)(GLenum target, GLhalf* v)

    ctypedef void (*PFNGLMULTITEXCOORD4HNVPROC)(GLenum target, GLhalf s, GLhalf t, GLhalf r, GLhalf q)

    ctypedef void (*PFNGLMULTITEXCOORD4HVNVPROC)(GLenum target, GLhalf* v)

    ctypedef void (*PFNGLNORMAL3HNVPROC)(GLhalf nx, GLhalf ny, GLhalf nz)

    ctypedef void (*PFNGLNORMAL3HVNVPROC)(GLhalf* v)

    ctypedef void (*PFNGLSECONDARYCOLOR3HNVPROC)(GLhalf red, GLhalf green, GLhalf blue)

    ctypedef void (*PFNGLSECONDARYCOLOR3HVNVPROC)(GLhalf* v)

    ctypedef void (*PFNGLTEXCOORD1HNVPROC)(GLhalf s)

    ctypedef void (*PFNGLTEXCOORD1HVNVPROC)(GLhalf* v)

    ctypedef void (*PFNGLTEXCOORD2HNVPROC)(GLhalf s, GLhalf t)

    ctypedef void (*PFNGLTEXCOORD2HVNVPROC)(GLhalf* v)

    ctypedef void (*PFNGLTEXCOORD3HNVPROC)(GLhalf s, GLhalf t, GLhalf r)

    ctypedef void (*PFNGLTEXCOORD3HVNVPROC)(GLhalf* v)

    ctypedef void (*PFNGLTEXCOORD4HNVPROC)(GLhalf s, GLhalf t, GLhalf r, GLhalf q)

    ctypedef void (*PFNGLTEXCOORD4HVNVPROC)(GLhalf* v)

    ctypedef void (*PFNGLVERTEX2HNVPROC)(GLhalf x, GLhalf y)

    ctypedef void (*PFNGLVERTEX2HVNVPROC)(GLhalf* v)

    ctypedef void (*PFNGLVERTEX3HNVPROC)(GLhalf x, GLhalf y, GLhalf z)

    ctypedef void (*PFNGLVERTEX3HVNVPROC)(GLhalf* v)

    ctypedef void (*PFNGLVERTEX4HNVPROC)(GLhalf x, GLhalf y, GLhalf z, GLhalf w)

    ctypedef void (*PFNGLVERTEX4HVNVPROC)(GLhalf* v)

    ctypedef void (*PFNGLVERTEXATTRIB1HNVPROC)(GLuint index, GLhalf x)

    ctypedef void (*PFNGLVERTEXATTRIB1HVNVPROC)(GLuint index, GLhalf* v)

    ctypedef void (*PFNGLVERTEXATTRIB2HNVPROC)(GLuint index, GLhalf x, GLhalf y)

    ctypedef void (*PFNGLVERTEXATTRIB2HVNVPROC)(GLuint index, GLhalf* v)

    ctypedef void (*PFNGLVERTEXATTRIB3HNVPROC)(GLuint index, GLhalf x, GLhalf y, GLhalf z)

    ctypedef void (*PFNGLVERTEXATTRIB3HVNVPROC)(GLuint index, GLhalf* v)

    ctypedef void (*PFNGLVERTEXATTRIB4HNVPROC)(GLuint index, GLhalf x, GLhalf y, GLhalf z, GLhalf w)

    ctypedef void (*PFNGLVERTEXATTRIB4HVNVPROC)(GLuint index, GLhalf* v)

    ctypedef void (*PFNGLVERTEXATTRIBS1HVNVPROC)(GLuint index, GLsizei n, GLhalf* v)

    ctypedef void (*PFNGLVERTEXATTRIBS2HVNVPROC)(GLuint index, GLsizei n, GLhalf* v)

    ctypedef void (*PFNGLVERTEXATTRIBS3HVNVPROC)(GLuint index, GLsizei n, GLhalf* v)

    ctypedef void (*PFNGLVERTEXATTRIBS4HVNVPROC)(GLuint index, GLsizei n, GLhalf* v)

    ctypedef void (*PFNGLVERTEXWEIGHTHNVPROC)(GLhalf weight)

    ctypedef void (*PFNGLVERTEXWEIGHTHVNVPROC)(GLhalf* weight)

    ctypedef void (*PFNGLVERTEXATTRIBDIVISORNVPROC)(GLuint index, GLuint divisor)

    ctypedef void (*PFNGLGETINTERNALFORMATSAMPLEIVNVPROC)(GLenum target, GLenum internalformat, GLsizei samples, GLenum pname, GLsizei bufSize, GLint* params)

    ctypedef void (*PFNGLUNIFORMMATRIX2X3FVNVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX2X4FVNVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3X2FVNVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX3X4FVNVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4X2FVNVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLUNIFORMMATRIX4X3FVNVPROC)(GLint location, GLsizei count, GLboolean transpose, GLfloat* value)

    ctypedef void (*PFNGLBEGINOCCLUSIONQUERYNVPROC)(GLuint id)

    ctypedef void (*PFNGLDELETEOCCLUSIONQUERIESNVPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLENDOCCLUSIONQUERYNVPROC)()

    ctypedef void (*PFNGLGENOCCLUSIONQUERIESNVPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLGETOCCLUSIONQUERYIVNVPROC)(GLuint id, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETOCCLUSIONQUERYUIVNVPROC)(GLuint id, GLenum pname, GLuint* params)

    ctypedef GLboolean (*PFNGLISOCCLUSIONQUERYNVPROC)(GLuint id)

    ctypedef void (*PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC)(GLenum target, GLuint buffer, GLuint index, GLsizei count, GLint* params)

    ctypedef void (*PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC)(GLenum target, GLuint buffer, GLuint index, GLsizei count, GLuint* params)

    ctypedef void (*PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC)(GLenum target, GLuint buffer, GLuint index, GLsizei count, GLfloat* params)

    ctypedef void (*PFNGLCOPYPATHNVPROC)(GLuint resultPath, GLuint srcPath)

    ctypedef void (*PFNGLCOVERFILLPATHINSTANCEDNVPROC)(GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLenum coverMode, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLCOVERFILLPATHNVPROC)(GLuint path, GLenum coverMode)

    ctypedef void (*PFNGLCOVERSTROKEPATHINSTANCEDNVPROC)(GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLenum coverMode, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLCOVERSTROKEPATHNVPROC)(GLuint path, GLenum coverMode)

    ctypedef void (*PFNGLDELETEPATHSNVPROC)(GLuint path, GLsizei range)

    ctypedef GLuint (*PFNGLGENPATHSNVPROC)(GLsizei range)

    ctypedef void (*PFNGLGETPATHCOLORGENFVNVPROC)(GLenum color, GLenum pname, GLfloat* value)

    ctypedef void (*PFNGLGETPATHCOLORGENIVNVPROC)(GLenum color, GLenum pname, GLint* value)

    ctypedef void (*PFNGLGETPATHCOMMANDSNVPROC)(GLuint path, GLubyte* commands)

    ctypedef void (*PFNGLGETPATHCOORDSNVPROC)(GLuint path, GLfloat* coords)

    ctypedef void (*PFNGLGETPATHDASHARRAYNVPROC)(GLuint path, GLfloat* dashArray)

    ctypedef GLfloat (*PFNGLGETPATHLENGTHNVPROC)(GLuint path, GLsizei startSegment, GLsizei numSegments)

    ctypedef void (*PFNGLGETPATHMETRICRANGENVPROC)(GLbitfield metricQueryMask, GLuint firstPathName, GLsizei numPaths, GLsizei stride, GLfloat* metrics)

    ctypedef void (*PFNGLGETPATHMETRICSNVPROC)(GLbitfield metricQueryMask, GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLsizei stride, GLfloat* metrics)

    ctypedef void (*PFNGLGETPATHPARAMETERFVNVPROC)(GLuint path, GLenum pname, GLfloat* value)

    ctypedef void (*PFNGLGETPATHPARAMETERIVNVPROC)(GLuint path, GLenum pname, GLint* value)

    ctypedef void (*PFNGLGETPATHSPACINGNVPROC)(GLenum pathListMode, GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLfloat advanceScale, GLfloat kerningScale, GLenum transformType, GLfloat* returnedSpacing)

    ctypedef void (*PFNGLGETPATHTEXGENFVNVPROC)(GLenum texCoordSet, GLenum pname, GLfloat* value)

    ctypedef void (*PFNGLGETPATHTEXGENIVNVPROC)(GLenum texCoordSet, GLenum pname, GLint* value)

    ctypedef void (*PFNGLGETPROGRAMRESOURCEFVNVPROC)(GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, GLenum* props, GLsizei bufSize, GLsizei* length, GLfloat* params)

    ctypedef void (*PFNGLINTERPOLATEPATHSNVPROC)(GLuint resultPath, GLuint pathA, GLuint pathB, GLfloat weight)

    ctypedef GLboolean (*PFNGLISPATHNVPROC)(GLuint path)

    ctypedef GLboolean (*PFNGLISPOINTINFILLPATHNVPROC)(GLuint path, GLuint mask, GLfloat x, GLfloat y)

    ctypedef GLboolean (*PFNGLISPOINTINSTROKEPATHNVPROC)(GLuint path, GLfloat x, GLfloat y)

    ctypedef void (*PFNGLMATRIXLOAD3X2FNVPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXLOAD3X3FNVPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXLOADTRANSPOSE3X3FNVPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXMULT3X2FNVPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXMULT3X3FNVPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLMATRIXMULTTRANSPOSE3X3FNVPROC)(GLenum matrixMode, GLfloat* m)

    ctypedef void (*PFNGLPATHCOLORGENNVPROC)(GLenum color, GLenum genMode, GLenum colorFormat, GLfloat* coeffs)

    ctypedef void (*PFNGLPATHCOMMANDSNVPROC)(GLuint path, GLsizei numCommands, GLubyte* commands, GLsizei numCoords, GLenum coordType, void* coords)

    ctypedef void (*PFNGLPATHCOORDSNVPROC)(GLuint path, GLsizei numCoords, GLenum coordType, void* coords)

    ctypedef void (*PFNGLPATHCOVERDEPTHFUNCNVPROC)(GLenum zfunc)

    ctypedef void (*PFNGLPATHDASHARRAYNVPROC)(GLuint path, GLsizei dashCount, GLfloat* dashArray)

    ctypedef void (*PFNGLPATHFOGGENNVPROC)(GLenum genMode)

    ctypedef GLenum (*PFNGLPATHGLYPHINDEXARRAYNVPROC)(GLuint firstPathName, GLenum fontTarget, void* fontName, GLbitfield fontStyle, GLuint firstGlyphIndex, GLsizei numGlyphs, GLuint pathParameterTemplate, GLfloat emScale)

    ctypedef GLenum (*PFNGLPATHGLYPHINDEXRANGENVPROC)(GLenum fontTarget, void* fontName, GLbitfield fontStyle, GLuint pathParameterTemplate, GLfloat emScale, GLuint baseAndCount[2])

    ctypedef void (*PFNGLPATHGLYPHRANGENVPROC)(GLuint firstPathName, GLenum fontTarget, void* fontName, GLbitfield fontStyle, GLuint firstGlyph, GLsizei numGlyphs, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale)

    ctypedef void (*PFNGLPATHGLYPHSNVPROC)(GLuint firstPathName, GLenum fontTarget, void* fontName, GLbitfield fontStyle, GLsizei numGlyphs, GLenum type, void* charcodes, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale)

    ctypedef GLenum (*PFNGLPATHMEMORYGLYPHINDEXARRAYNVPROC)(GLuint firstPathName, GLenum fontTarget, GLsizeiptr fontSize, void* fontData, GLsizei faceIndex, GLuint firstGlyphIndex, GLsizei numGlyphs, GLuint pathParameterTemplate, GLfloat emScale)

    ctypedef void (*PFNGLPATHPARAMETERFNVPROC)(GLuint path, GLenum pname, GLfloat value)

    ctypedef void (*PFNGLPATHPARAMETERFVNVPROC)(GLuint path, GLenum pname, GLfloat* value)

    ctypedef void (*PFNGLPATHPARAMETERINVPROC)(GLuint path, GLenum pname, GLint value)

    ctypedef void (*PFNGLPATHPARAMETERIVNVPROC)(GLuint path, GLenum pname, GLint* value)

    ctypedef void (*PFNGLPATHSTENCILDEPTHOFFSETNVPROC)(GLfloat factor, GLfloat units)

    ctypedef void (*PFNGLPATHSTENCILFUNCNVPROC)(GLenum func, GLint ref, GLuint mask)

    ctypedef void (*PFNGLPATHSTRINGNVPROC)(GLuint path, GLenum format, GLsizei length, void* pathString)

    ctypedef void (*PFNGLPATHSUBCOMMANDSNVPROC)(GLuint path, GLsizei commandStart, GLsizei commandsToDelete, GLsizei numCommands, GLubyte* commands, GLsizei numCoords, GLenum coordType, void* coords)

    ctypedef void (*PFNGLPATHSUBCOORDSNVPROC)(GLuint path, GLsizei coordStart, GLsizei numCoords, GLenum coordType, void* coords)

    ctypedef void (*PFNGLPATHTEXGENNVPROC)(GLenum texCoordSet, GLenum genMode, GLint components, GLfloat* coeffs)

    ctypedef GLboolean (*PFNGLPOINTALONGPATHNVPROC)(GLuint path, GLsizei startSegment, GLsizei numSegments, GLfloat distance, GLfloat* x, GLfloat* y, GLfloat* tangentX, GLfloat* tangentY)

    ctypedef void (*PFNGLPROGRAMPATHFRAGMENTINPUTGENNVPROC)(GLuint program, GLint location, GLenum genMode, GLint components, GLfloat* coeffs)

    ctypedef void (*PFNGLSTENCILFILLPATHINSTANCEDNVPROC)(GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLenum fillMode, GLuint mask, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLSTENCILFILLPATHNVPROC)(GLuint path, GLenum fillMode, GLuint mask)

    ctypedef void (*PFNGLSTENCILSTROKEPATHINSTANCEDNVPROC)(GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLint reference, GLuint mask, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLSTENCILSTROKEPATHNVPROC)(GLuint path, GLint reference, GLuint mask)

    ctypedef void (*PFNGLSTENCILTHENCOVERFILLPATHINSTANCEDNVPROC)(GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLenum fillMode, GLuint mask, GLenum coverMode, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLSTENCILTHENCOVERFILLPATHNVPROC)(GLuint path, GLenum fillMode, GLuint mask, GLenum coverMode)

    ctypedef void (*PFNGLSTENCILTHENCOVERSTROKEPATHINSTANCEDNVPROC)(GLsizei numPaths, GLenum pathNameType, void* paths, GLuint pathBase, GLint reference, GLuint mask, GLenum coverMode, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLSTENCILTHENCOVERSTROKEPATHNVPROC)(GLuint path, GLint reference, GLuint mask, GLenum coverMode)

    ctypedef void (*PFNGLTRANSFORMPATHNVPROC)(GLuint resultPath, GLuint srcPath, GLenum transformType, GLfloat* transformValues)

    ctypedef void (*PFNGLWEIGHTPATHSNVPROC)(GLuint resultPath, GLsizei numPaths, GLuint paths[], GLfloat weights[])

    ctypedef void (*PFNGLFLUSHPIXELDATARANGENVPROC)(GLenum target)

    ctypedef void (*PFNGLPIXELDATARANGENVPROC)(GLenum target, GLsizei length, void* pointer)

    ctypedef void (*PFNGLPOINTPARAMETERINVPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLPOINTPARAMETERIVNVPROC)(GLenum pname, GLint* params)

    ctypedef void (*PFNGLPOLYGONMODENVPROC)(GLenum face, GLenum mode)

    ctypedef void (*PFNGLGETVIDEOI64VNVPROC)(GLuint video_slot, GLenum pname, GLint64EXT* params)

    ctypedef void (*PFNGLGETVIDEOIVNVPROC)(GLuint video_slot, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVIDEOUI64VNVPROC)(GLuint video_slot, GLenum pname, GLuint64EXT* params)

    ctypedef void (*PFNGLGETVIDEOUIVNVPROC)(GLuint video_slot, GLenum pname, GLuint* params)

    ctypedef void (*PFNGLPRESENTFRAMEDUALFILLNVPROC)(GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLenum target1, GLuint fill1, GLenum target2, GLuint fill2, GLenum target3, GLuint fill3)

    ctypedef void (*PFNGLPRESENTFRAMEKEYEDNVPROC)(GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLuint key0, GLenum target1, GLuint fill1, GLuint key1)

    ctypedef void (*PFNGLPRIMITIVERESTARTINDEXNVPROC)(GLuint index)

    ctypedef void (*PFNGLPRIMITIVERESTARTNVPROC)()

    ctypedef void (*PFNGLCOMBINERINPUTNVPROC)(GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage)

    ctypedef void (*PFNGLCOMBINEROUTPUTNVPROC)(GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum)

    ctypedef void (*PFNGLCOMBINERPARAMETERFNVPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLCOMBINERPARAMETERFVNVPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLCOMBINERPARAMETERINVPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLCOMBINERPARAMETERIVNVPROC)(GLenum pname, GLint* params)

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

    ctypedef void (*PFNGLGETBUFFERPARAMETERUI64VNVPROC)(GLenum target, GLenum pname, GLuint64EXT* params)

    ctypedef void (*PFNGLGETINTEGERUI64VNVPROC)(GLenum value, GLuint64EXT* result)

    ctypedef void (*PFNGLGETNAMEDBUFFERPARAMETERUI64VNVPROC)(GLuint buffer, GLenum pname, GLuint64EXT* params)

    ctypedef GLboolean (*PFNGLISBUFFERRESIDENTNVPROC)(GLenum target)

    ctypedef GLboolean (*PFNGLISNAMEDBUFFERRESIDENTNVPROC)(GLuint buffer)

    ctypedef void (*PFNGLMAKEBUFFERNONRESIDENTNVPROC)(GLenum target)

    ctypedef void (*PFNGLMAKEBUFFERRESIDENTNVPROC)(GLenum target, GLenum access)

    ctypedef void (*PFNGLMAKENAMEDBUFFERNONRESIDENTNVPROC)(GLuint buffer)

    ctypedef void (*PFNGLMAKENAMEDBUFFERRESIDENTNVPROC)(GLuint buffer, GLenum access)

    ctypedef void (*PFNGLPROGRAMUNIFORMUI64NVPROC)(GLuint program, GLint location, GLuint64EXT value)

    ctypedef void (*PFNGLPROGRAMUNIFORMUI64VNVPROC)(GLuint program, GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLUNIFORMUI64NVPROC)(GLint location, GLuint64EXT value)

    ctypedef void (*PFNGLUNIFORMUI64VNVPROC)(GLint location, GLsizei count, GLuint64EXT* value)

    ctypedef void (*PFNGLCOMPRESSEDTEXIMAGE3DNVPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOMPRESSEDTEXSUBIMAGE3DNVPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, void* data)

    ctypedef void (*PFNGLCOPYTEXSUBIMAGE3DNVPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTURELAYERNVPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)

    ctypedef void (*PFNGLTEXIMAGE3DNVPROC)(GLenum target, GLint level, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXSUBIMAGE3DNVPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXTUREBARRIERNVPROC)()

    ctypedef void (*PFNGLTEXIMAGE2DMULTISAMPLECOVERAGENVPROC)(GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations)

    ctypedef void (*PFNGLTEXIMAGE3DMULTISAMPLECOVERAGENVPROC)(GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations)

    ctypedef void (*PFNGLTEXTUREIMAGE2DMULTISAMPLECOVERAGENVPROC)(GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations)

    ctypedef void (*PFNGLTEXTUREIMAGE2DMULTISAMPLENVPROC)(GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations)

    ctypedef void (*PFNGLTEXTUREIMAGE3DMULTISAMPLECOVERAGENVPROC)(GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations)

    ctypedef void (*PFNGLTEXTUREIMAGE3DMULTISAMPLENVPROC)(GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations)

    ctypedef void (*PFNGLACTIVEVARYINGNVPROC)(GLuint program, GLchar* name)

    ctypedef void (*PFNGLBEGINTRANSFORMFEEDBACKNVPROC)(GLenum primitiveMode)

    ctypedef void (*PFNGLBINDBUFFERBASENVPROC)(GLenum target, GLuint index, GLuint buffer)

    ctypedef void (*PFNGLBINDBUFFEROFFSETNVPROC)(GLenum target, GLuint index, GLuint buffer, GLintptr offset)

    ctypedef void (*PFNGLBINDBUFFERRANGENVPROC)(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)

    ctypedef void (*PFNGLENDTRANSFORMFEEDBACKNVPROC)()

    ctypedef void (*PFNGLGETACTIVEVARYINGNVPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name)

    ctypedef void (*PFNGLGETTRANSFORMFEEDBACKVARYINGNVPROC)(GLuint program, GLuint index, GLint* location)

    ctypedef GLint (*PFNGLGETVARYINGLOCATIONNVPROC)(GLuint program, GLchar* name)

    ctypedef void (*PFNGLTRANSFORMFEEDBACKATTRIBSNVPROC)(GLuint count, GLint* attribs, GLenum bufferMode)

    ctypedef void (*PFNGLTRANSFORMFEEDBACKVARYINGSNVPROC)(GLuint program, GLsizei count, GLint* locations, GLenum bufferMode)

    ctypedef void (*PFNGLBINDTRANSFORMFEEDBACKNVPROC)(GLenum target, GLuint id)

    ctypedef void (*PFNGLDELETETRANSFORMFEEDBACKSNVPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLDRAWTRANSFORMFEEDBACKNVPROC)(GLenum mode, GLuint id)

    ctypedef void (*PFNGLGENTRANSFORMFEEDBACKSNVPROC)(GLsizei n, GLuint* ids)

    ctypedef GLboolean (*PFNGLISTRANSFORMFEEDBACKNVPROC)(GLuint id)

    ctypedef void (*PFNGLPAUSETRANSFORMFEEDBACKNVPROC)()

    ctypedef void (*PFNGLRESUMETRANSFORMFEEDBACKNVPROC)()

    ctypedef GLintptr GLvdpauSurfaceNV

    ctypedef void (*PFNGLVDPAUFININVPROC)()

    ctypedef void (*PFNGLVDPAUGETSURFACEIVNVPROC)(GLvdpauSurfaceNV surface, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values)

    ctypedef void (*PFNGLVDPAUINITNVPROC)(void* vdpDevice, void* getProcAddress)

    ctypedef void (*PFNGLVDPAUISSURFACENVPROC)(GLvdpauSurfaceNV surface)

    ctypedef void (*PFNGLVDPAUMAPSURFACESNVPROC)(GLsizei numSurfaces, GLvdpauSurfaceNV* surfaces)

    ctypedef GLvdpauSurfaceNV (*PFNGLVDPAUREGISTEROUTPUTSURFACENVPROC)(void* vdpSurface, GLenum target, GLsizei numTextureNames, GLuint* textureNames)

    ctypedef GLvdpauSurfaceNV (*PFNGLVDPAUREGISTERVIDEOSURFACENVPROC)(void* vdpSurface, GLenum target, GLsizei numTextureNames, GLuint* textureNames)

    ctypedef void (*PFNGLVDPAUSURFACEACCESSNVPROC)(GLvdpauSurfaceNV surface, GLenum access)

    ctypedef void (*PFNGLVDPAUUNMAPSURFACESNVPROC)(GLsizei numSurface, GLvdpauSurfaceNV* surfaces)

    ctypedef void (*PFNGLVDPAUUNREGISTERSURFACENVPROC)(GLvdpauSurfaceNV surface)

    ctypedef void (*PFNGLFLUSHVERTEXARRAYRANGENVPROC)()

    ctypedef void (*PFNGLVERTEXARRAYRANGENVPROC)(GLsizei length, void* pointer)

    ctypedef void (*PFNGLGETVERTEXATTRIBLI64VNVPROC)(GLuint index, GLenum pname, GLint64EXT* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBLUI64VNVPROC)(GLuint index, GLenum pname, GLuint64EXT* params)

    ctypedef void (*PFNGLVERTEXATTRIBL1I64NVPROC)(GLuint index, GLint64EXT x)

    ctypedef void (*PFNGLVERTEXATTRIBL1I64VNVPROC)(GLuint index, GLint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL1UI64NVPROC)(GLuint index, GLuint64EXT x)

    ctypedef void (*PFNGLVERTEXATTRIBL1UI64VNVPROC)(GLuint index, GLuint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL2I64NVPROC)(GLuint index, GLint64EXT x, GLint64EXT y)

    ctypedef void (*PFNGLVERTEXATTRIBL2I64VNVPROC)(GLuint index, GLint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL2UI64NVPROC)(GLuint index, GLuint64EXT x, GLuint64EXT y)

    ctypedef void (*PFNGLVERTEXATTRIBL2UI64VNVPROC)(GLuint index, GLuint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL3I64NVPROC)(GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z)

    ctypedef void (*PFNGLVERTEXATTRIBL3I64VNVPROC)(GLuint index, GLint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL3UI64NVPROC)(GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z)

    ctypedef void (*PFNGLVERTEXATTRIBL3UI64VNVPROC)(GLuint index, GLuint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL4I64NVPROC)(GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w)

    ctypedef void (*PFNGLVERTEXATTRIBL4I64VNVPROC)(GLuint index, GLint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBL4UI64NVPROC)(GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w)

    ctypedef void (*PFNGLVERTEXATTRIBL4UI64VNVPROC)(GLuint index, GLuint64EXT* v)

    ctypedef void (*PFNGLVERTEXATTRIBLFORMATNVPROC)(GLuint index, GLint size, GLenum type, GLsizei stride)

    ctypedef void (*PFNGLBUFFERADDRESSRANGENVPROC)(GLenum pname, GLuint index, GLuint64EXT address, GLsizeiptr length)

    ctypedef void (*PFNGLCOLORFORMATNVPROC)(GLint size, GLenum type, GLsizei stride)

    ctypedef void (*PFNGLEDGEFLAGFORMATNVPROC)(GLsizei stride)

    ctypedef void (*PFNGLFOGCOORDFORMATNVPROC)(GLenum type, GLsizei stride)

    ctypedef void (*PFNGLGETINTEGERUI64I_VNVPROC)(GLenum value, GLuint index, GLuint64EXT result[])

    ctypedef void (*PFNGLINDEXFORMATNVPROC)(GLenum type, GLsizei stride)

    ctypedef void (*PFNGLNORMALFORMATNVPROC)(GLenum type, GLsizei stride)

    ctypedef void (*PFNGLSECONDARYCOLORFORMATNVPROC)(GLint size, GLenum type, GLsizei stride)

    ctypedef void (*PFNGLTEXCOORDFORMATNVPROC)(GLint size, GLenum type, GLsizei stride)

    ctypedef void (*PFNGLVERTEXATTRIBFORMATNVPROC)(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride)

    ctypedef void (*PFNGLVERTEXATTRIBIFORMATNVPROC)(GLuint index, GLint size, GLenum type, GLsizei stride)

    ctypedef void (*PFNGLVERTEXFORMATNVPROC)(GLint size, GLenum type, GLsizei stride)

    ctypedef GLboolean (*PFNGLAREPROGRAMSRESIDENTNVPROC)(GLsizei n, GLuint* ids, GLboolean* residences)

    ctypedef void (*PFNGLBINDPROGRAMNVPROC)(GLenum target, GLuint id)

    ctypedef void (*PFNGLDELETEPROGRAMSNVPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLEXECUTEPROGRAMNVPROC)(GLenum target, GLuint id, GLfloat* params)

    ctypedef void (*PFNGLGENPROGRAMSNVPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLGETPROGRAMPARAMETERDVNVPROC)(GLenum target, GLuint index, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLGETPROGRAMPARAMETERFVNVPROC)(GLenum target, GLuint index, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETPROGRAMSTRINGNVPROC)(GLuint id, GLenum pname, GLubyte* program)

    ctypedef void (*PFNGLGETPROGRAMIVNVPROC)(GLuint id, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETTRACKMATRIXIVNVPROC)(GLenum target, GLuint address, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBPOINTERVNVPROC)(GLuint index, GLenum pname, void** pointer)

    ctypedef void (*PFNGLGETVERTEXATTRIBDVNVPROC)(GLuint index, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBFVNVPROC)(GLuint index, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETVERTEXATTRIBIVNVPROC)(GLuint index, GLenum pname, GLint* params)

    ctypedef GLboolean (*PFNGLISPROGRAMNVPROC)(GLuint id)

    ctypedef void (*PFNGLLOADPROGRAMNVPROC)(GLenum target, GLuint id, GLsizei len, GLubyte* program)

    ctypedef void (*PFNGLPROGRAMPARAMETER4DNVPROC)(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)

    ctypedef void (*PFNGLPROGRAMPARAMETER4DVNVPROC)(GLenum target, GLuint index, GLdouble* params)

    ctypedef void (*PFNGLPROGRAMPARAMETER4FNVPROC)(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLPROGRAMPARAMETER4FVNVPROC)(GLenum target, GLuint index, GLfloat* params)

    ctypedef void (*PFNGLPROGRAMPARAMETERS4DVNVPROC)(GLenum target, GLuint index, GLsizei num, GLdouble* params)

    ctypedef void (*PFNGLPROGRAMPARAMETERS4FVNVPROC)(GLenum target, GLuint index, GLsizei num, GLfloat* params)

    ctypedef void (*PFNGLREQUESTRESIDENTPROGRAMSNVPROC)(GLsizei n, GLuint* ids)

    ctypedef void (*PFNGLTRACKMATRIXNVPROC)(GLenum target, GLuint address, GLenum matrix, GLenum transform)

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

    ctypedef void (*PFNGLVERTEXATTRIBPOINTERNVPROC)(GLuint index, GLint size, GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLVERTEXATTRIBS1DVNVPROC)(GLuint index, GLsizei n, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBS1FVNVPROC)(GLuint index, GLsizei n, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIBS1SVNVPROC)(GLuint index, GLsizei n, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIBS2DVNVPROC)(GLuint index, GLsizei n, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBS2FVNVPROC)(GLuint index, GLsizei n, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIBS2SVNVPROC)(GLuint index, GLsizei n, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIBS3DVNVPROC)(GLuint index, GLsizei n, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBS3FVNVPROC)(GLuint index, GLsizei n, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIBS3SVNVPROC)(GLuint index, GLsizei n, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIBS4DVNVPROC)(GLuint index, GLsizei n, GLdouble* v)

    ctypedef void (*PFNGLVERTEXATTRIBS4FVNVPROC)(GLuint index, GLsizei n, GLfloat* v)

    ctypedef void (*PFNGLVERTEXATTRIBS4SVNVPROC)(GLuint index, GLsizei n, GLshort* v)

    ctypedef void (*PFNGLVERTEXATTRIBS4UBVNVPROC)(GLuint index, GLsizei n, GLubyte* v)

    ctypedef void (*PFNGLBEGINVIDEOCAPTURENVPROC)(GLuint video_capture_slot)

    ctypedef void (*PFNGLBINDVIDEOCAPTURESTREAMBUFFERNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLintptrARB offset)

    ctypedef void (*PFNGLBINDVIDEOCAPTURESTREAMTEXTURENVPROC)(GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLenum target, GLuint texture)

    ctypedef void (*PFNGLENDVIDEOCAPTURENVPROC)(GLuint video_capture_slot)

    ctypedef void (*PFNGLGETVIDEOCAPTURESTREAMDVNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLGETVIDEOCAPTURESTREAMFVNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETVIDEOCAPTURESTREAMIVNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETVIDEOCAPTUREIVNVPROC)(GLuint video_capture_slot, GLenum pname, GLint* params)

    ctypedef GLenum (*PFNGLVIDEOCAPTURENVPROC)(GLuint video_capture_slot, GLuint* sequence_num, GLuint64EXT* capture_time)

    ctypedef void (*PFNGLVIDEOCAPTURESTREAMPARAMETERDVNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble* params)

    ctypedef void (*PFNGLVIDEOCAPTURESTREAMPARAMETERFVNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLVIDEOCAPTURESTREAMPARAMETERIVNVPROC)(GLuint video_capture_slot, GLuint stream, GLenum pname, GLint* params)

    ctypedef void (*PFNGLDEPTHRANGEARRAYFVNVPROC)(GLuint first, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLDEPTHRANGEINDEXEDFNVPROC)(GLuint index, GLfloat n, GLfloat f)

    ctypedef void (*PFNGLDISABLEINVPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLENABLEINVPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLGETFLOATI_VNVPROC)(GLenum target, GLuint index, GLfloat* data)

    ctypedef GLboolean (*PFNGLISENABLEDINVPROC)(GLenum target, GLuint index)

    ctypedef void (*PFNGLSCISSORARRAYVNVPROC)(GLuint first, GLsizei count, GLint* v)

    ctypedef void (*PFNGLSCISSORINDEXEDNVPROC)(GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height)

    ctypedef void (*PFNGLSCISSORINDEXEDVNVPROC)(GLuint index, GLint* v)

    ctypedef void (*PFNGLVIEWPORTARRAYVNVPROC)(GLuint first, GLsizei count, GLfloat* v)

    ctypedef void (*PFNGLVIEWPORTINDEXEDFNVPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h)

    ctypedef void (*PFNGLVIEWPORTINDEXEDFVNVPROC)(GLuint index, GLfloat* v)

    ctypedef void (*PFNGLVIEWPORTSWIZZLENVPROC)(GLuint index, GLenum swizzlex, GLenum swizzley, GLenum swizzlez, GLenum swizzlew)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREMULTIVIEWOVRPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint baseViewIndex, GLsizei numViews)

    ctypedef void (*PFNGLFRAMEBUFFERTEXTUREMULTISAMPLEMULTIVIEWOVRPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLsizei samples, GLint baseViewIndex, GLsizei numViews)

    ctypedef void (*PFNGLALPHAFUNCQCOMPROC)(GLenum func, GLclampf ref)

    ctypedef void (*PFNGLDISABLEDRIVERCONTROLQCOMPROC)(GLuint driverControl)

    ctypedef void (*PFNGLENABLEDRIVERCONTROLQCOMPROC)(GLuint driverControl)

    ctypedef void (*PFNGLGETDRIVERCONTROLSTRINGQCOMPROC)(GLuint driverControl, GLsizei bufSize, GLsizei* length, GLchar* driverControlString)

    ctypedef void (*PFNGLGETDRIVERCONTROLSQCOMPROC)(GLint* num, GLsizei size, GLuint* driverControls)

    ctypedef void (*PFNGLEXTGETBUFFERPOINTERVQCOMPROC)(GLenum target, void** params)

    ctypedef void (*PFNGLEXTGETBUFFERSQCOMPROC)(GLuint* buffers, GLint maxBuffers, GLint* numBuffers)

    ctypedef void (*PFNGLEXTGETFRAMEBUFFERSQCOMPROC)(GLuint* framebuffers, GLint maxFramebuffers, GLint* numFramebuffers)

    ctypedef void (*PFNGLEXTGETRENDERBUFFERSQCOMPROC)(GLuint* renderbuffers, GLint maxRenderbuffers, GLint* numRenderbuffers)

    ctypedef void (*PFNGLEXTGETTEXLEVELPARAMETERIVQCOMPROC)(GLuint texture, GLenum face, GLint level, GLenum pname, GLint* params)

    ctypedef void (*PFNGLEXTGETTEXSUBIMAGEQCOMPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, void* texels)

    ctypedef void (*PFNGLEXTGETTEXTURESQCOMPROC)(GLuint* textures, GLint maxTextures, GLint* numTextures)

    ctypedef void (*PFNGLEXTTEXOBJECTSTATEOVERRIDEIQCOMPROC)(GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLEXTGETPROGRAMBINARYSOURCEQCOMPROC)(GLuint program, GLenum shadertype, GLchar* source, GLint* length)

    ctypedef void (*PFNGLEXTGETPROGRAMSQCOMPROC)(GLuint* programs, GLint maxPrograms, GLint* numPrograms)

    ctypedef void (*PFNGLEXTGETSHADERSQCOMPROC)(GLuint* shaders, GLint maxShaders, GLint* numShaders)

    ctypedef GLboolean (*PFNGLEXTISPROGRAMBINARYQCOMPROC)(GLuint program)

    ctypedef void (*PFNGLFRAMEBUFFERFOVEATIONCONFIGQCOMPROC)(GLuint fbo, GLuint numLayers, GLuint focalPointsPerLayer, GLuint requestedFeatures, GLuint* providedFeatures)

    ctypedef void (*PFNGLFRAMEBUFFERFOVEATIONPARAMETERSQCOMPROC)(GLuint fbo, GLuint layer, GLuint focalPoint, GLfloat focalX, GLfloat focalY, GLfloat gainX, GLfloat gainY, GLfloat foveaArea)

    ctypedef void (*PFNGLFRAMEBUFFERFETCHBARRIERQCOMPROC)()

    ctypedef void (*PFNGLENDTILINGQCOMPROC)(GLbitfield preserveMask)

    ctypedef void (*PFNGLSTARTTILINGQCOMPROC)(GLuint x, GLuint y, GLuint width, GLuint height, GLbitfield preserveMask)

    ctypedef int GLclampx

    ctypedef void (*PFNGLALPHAFUNCXPROC)(GLenum func, GLclampx ref)

    ctypedef void (*PFNGLCLEARCOLORXPROC)(GLclampx red, GLclampx green, GLclampx blue, GLclampx alpha)

    ctypedef void (*PFNGLCLEARDEPTHXPROC)(GLclampx depth)

    ctypedef void (*PFNGLCOLOR4XPROC)(GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha)

    ctypedef void (*PFNGLDEPTHRANGEXPROC)(GLclampx zNear, GLclampx zFar)

    ctypedef void (*PFNGLFOGXPROC)(GLenum pname, GLfixed param)

    ctypedef void (*PFNGLFOGXVPROC)(GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLFRUSTUMFPROC)(GLfloat left, GLfloat right, GLfloat bottom, GLfloat top, GLfloat zNear, GLfloat zFar)

    ctypedef void (*PFNGLFRUSTUMXPROC)(GLfixed left, GLfixed right, GLfixed bottom, GLfixed top, GLfixed zNear, GLfixed zFar)

    ctypedef void (*PFNGLLIGHTMODELXPROC)(GLenum pname, GLfixed param)

    ctypedef void (*PFNGLLIGHTMODELXVPROC)(GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLLIGHTXPROC)(GLenum light, GLenum pname, GLfixed param)

    ctypedef void (*PFNGLLIGHTXVPROC)(GLenum light, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLLINEWIDTHXPROC)(GLfixed width)

    ctypedef void (*PFNGLLOADMATRIXXPROC)(GLfixed* m)

    ctypedef void (*PFNGLMATERIALXPROC)(GLenum face, GLenum pname, GLfixed param)

    ctypedef void (*PFNGLMATERIALXVPROC)(GLenum face, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLMULTMATRIXXPROC)(GLfixed* m)

    ctypedef void (*PFNGLMULTITEXCOORD4XPROC)(GLenum target, GLfixed s, GLfixed t, GLfixed r, GLfixed q)

    ctypedef void (*PFNGLNORMAL3XPROC)(GLfixed nx, GLfixed ny, GLfixed nz)

    ctypedef void (*PFNGLORTHOFPROC)(GLfloat left, GLfloat right, GLfloat bottom, GLfloat top, GLfloat zNear, GLfloat zFar)

    ctypedef void (*PFNGLORTHOXPROC)(GLfixed left, GLfixed right, GLfixed bottom, GLfixed top, GLfixed zNear, GLfixed zFar)

    ctypedef void (*PFNGLPOINTSIZEXPROC)(GLfixed size)

    ctypedef void (*PFNGLPOLYGONOFFSETXPROC)(GLfixed factor, GLfixed units)

    ctypedef void (*PFNGLROTATEXPROC)(GLfixed angle, GLfixed x, GLfixed y, GLfixed z)

    ctypedef void (*PFNGLSAMPLECOVERAGEXPROC)(GLclampx value, GLboolean invert)

    ctypedef void (*PFNGLSCALEXPROC)(GLfixed x, GLfixed y, GLfixed z)

    ctypedef void (*PFNGLTEXENVXPROC)(GLenum target, GLenum pname, GLfixed param)

    ctypedef void (*PFNGLTEXENVXVPROC)(GLenum target, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLTEXPARAMETERXPROC)(GLenum target, GLenum pname, GLfixed param)

    ctypedef void (*PFNGLTRANSLATEXPROC)(GLfixed x, GLfixed y, GLfixed z)

    ctypedef void (*PFNGLCLIPPLANEFPROC)(GLenum plane, GLfloat* equation)

    ctypedef void (*PFNGLCLIPPLANEXPROC)(GLenum plane, GLfixed* equation)

    ctypedef void (*PFNGLGETCLIPPLANEFPROC)(GLenum pname, GLfloat eqn[4])

    ctypedef void (*PFNGLGETCLIPPLANEXPROC)(GLenum pname, GLfixed eqn[4])

    ctypedef void (*PFNGLGETFIXEDVPROC)(GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLGETLIGHTXVPROC)(GLenum light, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLGETMATERIALXVPROC)(GLenum face, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLGETTEXENVXVPROC)(GLenum env, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLGETTEXPARAMETERXVPROC)(GLenum target, GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLPOINTPARAMETERXPROC)(GLenum pname, GLfixed param)

    ctypedef void (*PFNGLPOINTPARAMETERXVPROC)(GLenum pname, GLfixed* params)

    ctypedef void (*PFNGLPOINTSIZEPOINTEROESPROC)(GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLTEXPARAMETERXVPROC)(GLenum target, GLenum pname, GLfixed* params)

    ctypedef GLchar* (*PFNGLERRORSTRINGREGALPROC)(GLenum error)

    ctypedef GLboolean (*PFNGLGETEXTENSIONREGALPROC)(GLchar* ext)

    ctypedef GLboolean (*PFNGLISSUPPORTEDREGALPROC)(GLchar* ext)

    ctypedef void (*GLLOGPROCREGAL)(GLenum stream, GLsizei length, GLchar* message, void* context)

    ctypedef void (*PFNGLLOGMESSAGECALLBACKREGALPROC)(GLLOGPROCREGAL callback)

    ctypedef void* (*PFNGLGETPROCADDRESSREGALPROC)(GLchar* name)

    ctypedef void (*PFNGLDETAILTEXFUNCSGISPROC)(GLenum target, GLsizei n, GLfloat* points)

    ctypedef void (*PFNGLGETDETAILTEXFUNCSGISPROC)(GLenum target, GLfloat* points)

    ctypedef void (*PFNGLFOGFUNCSGISPROC)(GLsizei n, GLfloat* points)

    ctypedef void (*PFNGLGETFOGFUNCSGISPROC)(GLfloat* points)

    ctypedef void (*PFNGLSAMPLEMASKSGISPROC)(GLclampf value, GLboolean invert)

    ctypedef void (*PFNGLSAMPLEPATTERNSGISPROC)(GLenum pattern)

    ctypedef void (*PFNGLINTERLEAVEDTEXTURECOORDSETSSGISPROC)(GLint factor)

    ctypedef void (*PFNGLSELECTTEXTURECOORDSETSGISPROC)(GLenum target)

    ctypedef void (*PFNGLSELECTTEXTURESGISPROC)(GLenum target)

    ctypedef void (*PFNGLSELECTTEXTURETRANSFORMSGISPROC)(GLenum target)

    ctypedef void (*PFNGLMULTISAMPLESUBRECTPOSSGISPROC)(GLint x, GLint y)

    ctypedef void (*PFNGLGETSHARPENTEXFUNCSGISPROC)(GLenum target, GLfloat* points)

    ctypedef void (*PFNGLSHARPENTEXFUNCSGISPROC)(GLenum target, GLsizei n, GLfloat* points)

    ctypedef void (*PFNGLTEXIMAGE4DSGISPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei extent, GLint border, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLTEXSUBIMAGE4DSGISPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei extent, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLGETTEXFILTERFUNCSGISPROC)(GLenum target, GLenum filter, GLfloat* weights)

    ctypedef void (*PFNGLTEXFILTERFUNCSGISPROC)(GLenum target, GLenum filter, GLsizei n, GLfloat* weights)

    ctypedef void (*PFNGLASYNCMARKERSGIXPROC)(GLuint marker)

    ctypedef void (*PFNGLDELETEASYNCMARKERSSGIXPROC)(GLuint marker, GLsizei range)

    ctypedef GLint (*PFNGLFINISHASYNCSGIXPROC)(GLuint* markerp)

    ctypedef GLuint (*PFNGLGENASYNCMARKERSSGIXPROC)(GLsizei range)

    ctypedef GLboolean (*PFNGLISASYNCMARKERSGIXPROC)(GLuint marker)

    ctypedef GLint (*PFNGLPOLLASYNCSGIXPROC)(GLuint* markerp)

    ctypedef void (*PFNGLADDRESSSPACEPROC)(GLenum space, GLbitfield mask)

    ctypedef GLint (*PFNGLDATAPIPEPROC)(GLenum space)

    ctypedef void (*PFNGLFLUSHRASTERSGIXPROC)()

    ctypedef void (*PFNGLFOGLAYERSSGIXPROC)(GLsizei n, GLfloat* points)

    ctypedef void (*PFNGLGETFOGLAYERSSGIXPROC)(GLfloat* points)

    ctypedef void (*PFNGLTEXTUREFOGSGIXPROC)(GLenum pname)

    ctypedef void (*PFNGLFRAGMENTCOLORMATERIALSGIXPROC)(GLenum face, GLenum mode)

    ctypedef void (*PFNGLFRAGMENTLIGHTMODELFSGIXPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLFRAGMENTLIGHTMODELFVSGIXPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLFRAGMENTLIGHTMODELISGIXPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLFRAGMENTLIGHTMODELIVSGIXPROC)(GLenum pname, GLint* params)

    ctypedef void (*PFNGLFRAGMENTLIGHTFSGIXPROC)(GLenum light, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLFRAGMENTLIGHTFVSGIXPROC)(GLenum light, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLFRAGMENTLIGHTISGIXPROC)(GLenum light, GLenum pname, GLint param)

    ctypedef void (*PFNGLFRAGMENTLIGHTIVSGIXPROC)(GLenum light, GLenum pname, GLint* params)

    ctypedef void (*PFNGLFRAGMENTMATERIALFSGIXPROC)(GLenum face, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLFRAGMENTMATERIALFVSGIXPROC)(GLenum face, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLFRAGMENTMATERIALISGIXPROC)(GLenum face, GLenum pname, GLint param)

    ctypedef void (*PFNGLFRAGMENTMATERIALIVSGIXPROC)(GLenum face, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETFRAGMENTLIGHTFVSGIXPROC)(GLenum light, GLenum value, GLfloat* data)

    ctypedef void (*PFNGLGETFRAGMENTLIGHTIVSGIXPROC)(GLenum light, GLenum value, GLint* data)

    ctypedef void (*PFNGLGETFRAGMENTMATERIALFVSGIXPROC)(GLenum face, GLenum pname, GLfloat* data)

    ctypedef void (*PFNGLGETFRAGMENTMATERIALIVSGIXPROC)(GLenum face, GLenum pname, GLint* data)

    ctypedef void (*PFNGLFRAMEZOOMSGIXPROC)(GLint factor)

    ctypedef void (*PFNGLIGLOOINTERFACESGIXPROC)(GLenum pname, void* param)

    ctypedef void (*PFNGLALLOCMPEGPREDICTORSSGIXPROC)(GLsizei width, GLsizei height, GLsizei n, GLuint* predictors)

    ctypedef void (*PFNGLDELETEMPEGPREDICTORSSGIXPROC)(GLsizei n, GLuint* predictors)

    ctypedef void (*PFNGLGENMPEGPREDICTORSSGIXPROC)(GLsizei n, GLuint* predictors)

    ctypedef void (*PFNGLGETMPEGPARAMETERFVSGIXPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETMPEGPARAMETERIVSGIXPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETMPEGPREDICTORSGIXPROC)(GLenum target, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLGETMPEGQUANTTABLEUBVPROC)(GLenum target, GLubyte* values)

    ctypedef GLboolean (*PFNGLISMPEGPREDICTORSGIXPROC)(GLuint predictor)

    ctypedef void (*PFNGLMPEGPREDICTORSGIXPROC)(GLenum target, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLMPEGQUANTTABLEUBVPROC)(GLenum target, GLubyte* values)

    ctypedef void (*PFNGLSWAPMPEGPREDICTORSSGIXPROC)(GLenum target0, GLenum target1)

    ctypedef void (*PFNGLGETNONLINLIGHTFVSGIXPROC)(GLenum light, GLenum pname, GLint* terms, GLfloat* data)

    ctypedef void (*PFNGLGETNONLINMATERIALFVSGIXPROC)(GLenum face, GLenum pname, GLint* terms, GLfloat* data)

    ctypedef void (*PFNGLNONLINLIGHTFVSGIXPROC)(GLenum light, GLenum pname, GLint terms, GLfloat* params)

    ctypedef void (*PFNGLNONLINMATERIALFVSGIXPROC)(GLenum face, GLenum pname, GLint terms, GLfloat* params)

    ctypedef void (*PFNGLPIXELTEXGENSGIXPROC)(GLenum mode)

    ctypedef void (*PFNGLDEFORMSGIXPROC)(GLbitfield mask)

    ctypedef void (*PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC)(GLbitfield mask)

    ctypedef void (*PFNGLMESHBREADTHSGIXPROC)(GLint breadth)

    ctypedef void (*PFNGLMESHSTRIDESGIXPROC)(GLint stride)

    ctypedef void (*PFNGLREFERENCEPLANESGIXPROC)(GLdouble* equation)

    ctypedef void (*PFNGLSPRITEPARAMETERFSGIXPROC)(GLenum pname, GLfloat param)

    ctypedef void (*PFNGLSPRITEPARAMETERFVSGIXPROC)(GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLSPRITEPARAMETERISGIXPROC)(GLenum pname, GLint param)

    ctypedef void (*PFNGLSPRITEPARAMETERIVSGIXPROC)(GLenum pname, GLint* params)

    ctypedef void (*PFNGLTAGSAMPLEBUFFERSGIXPROC)()

    ctypedef void (*PFNGLGETVECTOROPERATIONSGIXPROC)(GLenum operation)

    ctypedef void (*PFNGLVECTOROPERATIONSGIXPROC)(GLenum operation)

    ctypedef GLboolean (*PFNGLAREVERTEXARRAYSRESIDENTSGIXPROC)(GLsizei n, GLuint* arrays, GLboolean* residences)

    ctypedef void (*PFNGLBINDVERTEXARRAYSGIXPROC)(GLuint array)

    ctypedef void (*PFNGLDELETEVERTEXARRAYSSGIXPROC)(GLsizei n, GLuint* arrays)

    ctypedef void (*PFNGLGENVERTEXARRAYSSGIXPROC)(GLsizei n, GLuint* arrays)

    ctypedef GLboolean (*PFNGLISVERTEXARRAYSGIXPROC)(GLuint array)

    ctypedef void (*PFNGLPRIORITIZEVERTEXARRAYSSGIXPROC)(GLsizei n, GLuint* arrays, GLclampf* priorities)

    ctypedef void (*PFNGLCOLORTABLEPARAMETERFVSGIPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLCOLORTABLEPARAMETERIVSGIPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLCOLORTABLESGIPROC)(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, void* table)

    ctypedef void (*PFNGLCOPYCOLORTABLESGIPROC)(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)

    ctypedef void (*PFNGLGETCOLORTABLEPARAMETERFVSGIPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETCOLORTABLEPARAMETERIVSGIPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLGETCOLORTABLESGIPROC)(GLenum target, GLenum format, GLenum type, void* table)

    ctypedef void (*PFNGLGETPIXELTRANSFORMPARAMETERFVSGIPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLGETPIXELTRANSFORMPARAMETERIVSGIPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLPIXELTRANSFORMPARAMETERFSGIPROC)(GLenum target, GLenum pname, GLfloat param)

    ctypedef void (*PFNGLPIXELTRANSFORMPARAMETERFVSGIPROC)(GLenum target, GLenum pname, GLfloat* params)

    ctypedef void (*PFNGLPIXELTRANSFORMPARAMETERISGIPROC)(GLenum target, GLenum pname, GLint param)

    ctypedef void (*PFNGLPIXELTRANSFORMPARAMETERIVSGIPROC)(GLenum target, GLenum pname, GLint* params)

    ctypedef void (*PFNGLPIXELTRANSFORMSGIPROC)(GLenum target)

    ctypedef void (*PFNGLFINISHTEXTURESUNXPROC)()

    ctypedef void (*PFNGLGLOBALALPHAFACTORBSUNPROC)(GLbyte factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORDSUNPROC)(GLdouble factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORFSUNPROC)(GLfloat factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORISUNPROC)(GLint factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORSSUNPROC)(GLshort factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORUBSUNPROC)(GLubyte factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORUISUNPROC)(GLuint factor)

    ctypedef void (*PFNGLGLOBALALPHAFACTORUSSUNPROC)(GLushort factor)

    ctypedef void (*PFNGLREADVIDEOPIXELSSUNPROC)(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void* pixels)

    ctypedef void (*PFNGLREPLACEMENTCODEPOINTERSUNPROC)(GLenum type, GLsizei stride, void* pointer)

    ctypedef void (*PFNGLREPLACEMENTCODEUBSUNPROC)(GLubyte code)

    ctypedef void (*PFNGLREPLACEMENTCODEUBVSUNPROC)(GLubyte* code)

    ctypedef void (*PFNGLREPLACEMENTCODEUISUNPROC)(GLuint code)

    ctypedef void (*PFNGLREPLACEMENTCODEUIVSUNPROC)(GLuint* code)

    ctypedef void (*PFNGLREPLACEMENTCODEUSSUNPROC)(GLushort code)

    ctypedef void (*PFNGLREPLACEMENTCODEUSVSUNPROC)(GLushort* code)

    ctypedef void (*PFNGLCOLOR3FVERTEX3FSUNPROC)(GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLCOLOR3FVERTEX3FVSUNPROC)(GLfloat* c, GLfloat* v)

    ctypedef void (*PFNGLCOLOR4FNORMAL3FVERTEX3FSUNPROC)(GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC)(GLfloat* c, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLCOLOR4UBVERTEX2FSUNPROC)(GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y)

    ctypedef void (*PFNGLCOLOR4UBVERTEX2FVSUNPROC)(GLubyte* c, GLfloat* v)

    ctypedef void (*PFNGLCOLOR4UBVERTEX3FSUNPROC)(GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLCOLOR4UBVERTEX3FVSUNPROC)(GLubyte* c, GLfloat* v)

    ctypedef void (*PFNGLNORMAL3FVERTEX3FSUNPROC)(GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLNORMAL3FVERTEX3FVSUNPROC)(GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC)(GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* c, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FSUNPROC)(GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* c, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC)(GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC)(GLuint* rc, GLubyte* c, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC)(GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC)(GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* tc, GLfloat* c, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC)(GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* tc, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC)(GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* tc, GLfloat* v)

    ctypedef void (*PFNGLREPLACEMENTCODEUIVERTEX3FSUNPROC)(GLuint rc, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLREPLACEMENTCODEUIVERTEX3FVSUNPROC)(GLuint* rc, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC)(GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC)(GLfloat* tc, GLfloat* c, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC)(GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC)(GLfloat* tc, GLfloat* c, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC)(GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC)(GLfloat* tc, GLubyte* c, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC)(GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC)(GLfloat* tc, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD2FVERTEX3FSUNPROC)(GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z)

    ctypedef void (*PFNGLTEXCOORD2FVERTEX3FVSUNPROC)(GLfloat* tc, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FSUNPROC)(GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC)(GLfloat* tc, GLfloat* c, GLfloat* n, GLfloat* v)

    ctypedef void (*PFNGLTEXCOORD4FVERTEX4FSUNPROC)(GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w)

    ctypedef void (*PFNGLTEXCOORD4FVERTEX4FVSUNPROC)(GLfloat* tc, GLfloat* v)

    ctypedef void (*PFNGLADDSWAPHINTRECTWINPROC)(GLint x, GLint y, GLsizei width, GLsizei height)

    PFNGLCOPYTEXSUBIMAGE3DPROC __glewCopyTexSubImage3D

    PFNGLDRAWRANGEELEMENTSPROC __glewDrawRangeElements

    PFNGLTEXIMAGE3DPROC __glewTexImage3D

    PFNGLTEXSUBIMAGE3DPROC __glewTexSubImage3D

    PFNGLACTIVETEXTUREPROC __glewActiveTexture

    PFNGLCLIENTACTIVETEXTUREPROC __glewClientActiveTexture

    PFNGLCOMPRESSEDTEXIMAGE1DPROC __glewCompressedTexImage1D

    PFNGLCOMPRESSEDTEXIMAGE2DPROC __glewCompressedTexImage2D

    PFNGLCOMPRESSEDTEXIMAGE3DPROC __glewCompressedTexImage3D

    PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC __glewCompressedTexSubImage1D

    PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC __glewCompressedTexSubImage2D

    PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC __glewCompressedTexSubImage3D

    PFNGLGETCOMPRESSEDTEXIMAGEPROC __glewGetCompressedTexImage

    PFNGLLOADTRANSPOSEMATRIXDPROC __glewLoadTransposeMatrixd

    PFNGLLOADTRANSPOSEMATRIXFPROC __glewLoadTransposeMatrixf

    PFNGLMULTTRANSPOSEMATRIXDPROC __glewMultTransposeMatrixd

    PFNGLMULTTRANSPOSEMATRIXFPROC __glewMultTransposeMatrixf

    PFNGLMULTITEXCOORD1DPROC __glewMultiTexCoord1d

    PFNGLMULTITEXCOORD1DVPROC __glewMultiTexCoord1dv

    PFNGLMULTITEXCOORD1FPROC __glewMultiTexCoord1f

    PFNGLMULTITEXCOORD1FVPROC __glewMultiTexCoord1fv

    PFNGLMULTITEXCOORD1IPROC __glewMultiTexCoord1i

    PFNGLMULTITEXCOORD1IVPROC __glewMultiTexCoord1iv

    PFNGLMULTITEXCOORD1SPROC __glewMultiTexCoord1s

    PFNGLMULTITEXCOORD1SVPROC __glewMultiTexCoord1sv

    PFNGLMULTITEXCOORD2DPROC __glewMultiTexCoord2d

    PFNGLMULTITEXCOORD2DVPROC __glewMultiTexCoord2dv

    PFNGLMULTITEXCOORD2FPROC __glewMultiTexCoord2f

    PFNGLMULTITEXCOORD2FVPROC __glewMultiTexCoord2fv

    PFNGLMULTITEXCOORD2IPROC __glewMultiTexCoord2i

    PFNGLMULTITEXCOORD2IVPROC __glewMultiTexCoord2iv

    PFNGLMULTITEXCOORD2SPROC __glewMultiTexCoord2s

    PFNGLMULTITEXCOORD2SVPROC __glewMultiTexCoord2sv

    PFNGLMULTITEXCOORD3DPROC __glewMultiTexCoord3d

    PFNGLMULTITEXCOORD3DVPROC __glewMultiTexCoord3dv

    PFNGLMULTITEXCOORD3FPROC __glewMultiTexCoord3f

    PFNGLMULTITEXCOORD3FVPROC __glewMultiTexCoord3fv

    PFNGLMULTITEXCOORD3IPROC __glewMultiTexCoord3i

    PFNGLMULTITEXCOORD3IVPROC __glewMultiTexCoord3iv

    PFNGLMULTITEXCOORD3SPROC __glewMultiTexCoord3s

    PFNGLMULTITEXCOORD3SVPROC __glewMultiTexCoord3sv

    PFNGLMULTITEXCOORD4DPROC __glewMultiTexCoord4d

    PFNGLMULTITEXCOORD4DVPROC __glewMultiTexCoord4dv

    PFNGLMULTITEXCOORD4FPROC __glewMultiTexCoord4f

    PFNGLMULTITEXCOORD4FVPROC __glewMultiTexCoord4fv

    PFNGLMULTITEXCOORD4IPROC __glewMultiTexCoord4i

    PFNGLMULTITEXCOORD4IVPROC __glewMultiTexCoord4iv

    PFNGLMULTITEXCOORD4SPROC __glewMultiTexCoord4s

    PFNGLMULTITEXCOORD4SVPROC __glewMultiTexCoord4sv

    PFNGLSAMPLECOVERAGEPROC __glewSampleCoverage

    PFNGLBLENDCOLORPROC __glewBlendColor

    PFNGLBLENDEQUATIONPROC __glewBlendEquation

    PFNGLBLENDFUNCSEPARATEPROC __glewBlendFuncSeparate

    PFNGLFOGCOORDPOINTERPROC __glewFogCoordPointer

    PFNGLFOGCOORDDPROC __glewFogCoordd

    PFNGLFOGCOORDDVPROC __glewFogCoorddv

    PFNGLFOGCOORDFPROC __glewFogCoordf

    PFNGLFOGCOORDFVPROC __glewFogCoordfv

    PFNGLMULTIDRAWARRAYSPROC __glewMultiDrawArrays

    PFNGLMULTIDRAWELEMENTSPROC __glewMultiDrawElements

    PFNGLPOINTPARAMETERFPROC __glewPointParameterf

    PFNGLPOINTPARAMETERFVPROC __glewPointParameterfv

    PFNGLPOINTPARAMETERIPROC __glewPointParameteri

    PFNGLPOINTPARAMETERIVPROC __glewPointParameteriv

    PFNGLSECONDARYCOLOR3BPROC __glewSecondaryColor3b

    PFNGLSECONDARYCOLOR3BVPROC __glewSecondaryColor3bv

    PFNGLSECONDARYCOLOR3DPROC __glewSecondaryColor3d

    PFNGLSECONDARYCOLOR3DVPROC __glewSecondaryColor3dv

    PFNGLSECONDARYCOLOR3FPROC __glewSecondaryColor3f

    PFNGLSECONDARYCOLOR3FVPROC __glewSecondaryColor3fv

    PFNGLSECONDARYCOLOR3IPROC __glewSecondaryColor3i

    PFNGLSECONDARYCOLOR3IVPROC __glewSecondaryColor3iv

    PFNGLSECONDARYCOLOR3SPROC __glewSecondaryColor3s

    PFNGLSECONDARYCOLOR3SVPROC __glewSecondaryColor3sv

    PFNGLSECONDARYCOLOR3UBPROC __glewSecondaryColor3ub

    PFNGLSECONDARYCOLOR3UBVPROC __glewSecondaryColor3ubv

    PFNGLSECONDARYCOLOR3UIPROC __glewSecondaryColor3ui

    PFNGLSECONDARYCOLOR3UIVPROC __glewSecondaryColor3uiv

    PFNGLSECONDARYCOLOR3USPROC __glewSecondaryColor3us

    PFNGLSECONDARYCOLOR3USVPROC __glewSecondaryColor3usv

    PFNGLSECONDARYCOLORPOINTERPROC __glewSecondaryColorPointer

    PFNGLWINDOWPOS2DPROC __glewWindowPos2d

    PFNGLWINDOWPOS2DVPROC __glewWindowPos2dv

    PFNGLWINDOWPOS2FPROC __glewWindowPos2f

    PFNGLWINDOWPOS2FVPROC __glewWindowPos2fv

    PFNGLWINDOWPOS2IPROC __glewWindowPos2i

    PFNGLWINDOWPOS2IVPROC __glewWindowPos2iv

    PFNGLWINDOWPOS2SPROC __glewWindowPos2s

    PFNGLWINDOWPOS2SVPROC __glewWindowPos2sv

    PFNGLWINDOWPOS3DPROC __glewWindowPos3d

    PFNGLWINDOWPOS3DVPROC __glewWindowPos3dv

    PFNGLWINDOWPOS3FPROC __glewWindowPos3f

    PFNGLWINDOWPOS3FVPROC __glewWindowPos3fv

    PFNGLWINDOWPOS3IPROC __glewWindowPos3i

    PFNGLWINDOWPOS3IVPROC __glewWindowPos3iv

    PFNGLWINDOWPOS3SPROC __glewWindowPos3s

    PFNGLWINDOWPOS3SVPROC __glewWindowPos3sv

    PFNGLBEGINQUERYPROC __glewBeginQuery

    PFNGLBINDBUFFERPROC __glewBindBuffer

    PFNGLBUFFERDATAPROC __glewBufferData

    PFNGLBUFFERSUBDATAPROC __glewBufferSubData

    PFNGLDELETEBUFFERSPROC __glewDeleteBuffers

    PFNGLDELETEQUERIESPROC __glewDeleteQueries

    PFNGLENDQUERYPROC __glewEndQuery

    PFNGLGENBUFFERSPROC __glewGenBuffers

    PFNGLGENQUERIESPROC __glewGenQueries

    PFNGLGETBUFFERPARAMETERIVPROC __glewGetBufferParameteriv

    PFNGLGETBUFFERPOINTERVPROC __glewGetBufferPointerv

    PFNGLGETBUFFERSUBDATAPROC __glewGetBufferSubData

    PFNGLGETQUERYOBJECTIVPROC __glewGetQueryObjectiv

    PFNGLGETQUERYOBJECTUIVPROC __glewGetQueryObjectuiv

    PFNGLGETQUERYIVPROC __glewGetQueryiv

    PFNGLISBUFFERPROC __glewIsBuffer

    PFNGLISQUERYPROC __glewIsQuery

    PFNGLMAPBUFFERPROC __glewMapBuffer

    PFNGLUNMAPBUFFERPROC __glewUnmapBuffer

    PFNGLATTACHSHADERPROC __glewAttachShader

    PFNGLBINDATTRIBLOCATIONPROC __glewBindAttribLocation

    PFNGLBLENDEQUATIONSEPARATEPROC __glewBlendEquationSeparate

    PFNGLCOMPILESHADERPROC __glewCompileShader

    PFNGLCREATEPROGRAMPROC __glewCreateProgram

    PFNGLCREATESHADERPROC __glewCreateShader

    PFNGLDELETEPROGRAMPROC __glewDeleteProgram

    PFNGLDELETESHADERPROC __glewDeleteShader

    PFNGLDETACHSHADERPROC __glewDetachShader

    PFNGLDISABLEVERTEXATTRIBARRAYPROC __glewDisableVertexAttribArray

    PFNGLDRAWBUFFERSPROC __glewDrawBuffers

    PFNGLENABLEVERTEXATTRIBARRAYPROC __glewEnableVertexAttribArray

    PFNGLGETACTIVEATTRIBPROC __glewGetActiveAttrib

    PFNGLGETACTIVEUNIFORMPROC __glewGetActiveUniform

    PFNGLGETATTACHEDSHADERSPROC __glewGetAttachedShaders

    PFNGLGETATTRIBLOCATIONPROC __glewGetAttribLocation

    PFNGLGETPROGRAMINFOLOGPROC __glewGetProgramInfoLog

    PFNGLGETPROGRAMIVPROC __glewGetProgramiv

    PFNGLGETSHADERINFOLOGPROC __glewGetShaderInfoLog

    PFNGLGETSHADERSOURCEPROC __glewGetShaderSource

    PFNGLGETSHADERIVPROC __glewGetShaderiv

    PFNGLGETUNIFORMLOCATIONPROC __glewGetUniformLocation

    PFNGLGETUNIFORMFVPROC __glewGetUniformfv

    PFNGLGETUNIFORMIVPROC __glewGetUniformiv

    PFNGLGETVERTEXATTRIBPOINTERVPROC __glewGetVertexAttribPointerv

    PFNGLGETVERTEXATTRIBDVPROC __glewGetVertexAttribdv

    PFNGLGETVERTEXATTRIBFVPROC __glewGetVertexAttribfv

    PFNGLGETVERTEXATTRIBIVPROC __glewGetVertexAttribiv

    PFNGLISPROGRAMPROC __glewIsProgram

    PFNGLISSHADERPROC __glewIsShader

    PFNGLLINKPROGRAMPROC __glewLinkProgram

    PFNGLSHADERSOURCEPROC __glewShaderSource

    PFNGLSTENCILFUNCSEPARATEPROC __glewStencilFuncSeparate

    PFNGLSTENCILMASKSEPARATEPROC __glewStencilMaskSeparate

    PFNGLSTENCILOPSEPARATEPROC __glewStencilOpSeparate

    PFNGLUNIFORM1FPROC __glewUniform1f

    PFNGLUNIFORM1FVPROC __glewUniform1fv

    PFNGLUNIFORM1IPROC __glewUniform1i

    PFNGLUNIFORM1IVPROC __glewUniform1iv

    PFNGLUNIFORM2FPROC __glewUniform2f

    PFNGLUNIFORM2FVPROC __glewUniform2fv

    PFNGLUNIFORM2IPROC __glewUniform2i

    PFNGLUNIFORM2IVPROC __glewUniform2iv

    PFNGLUNIFORM3FPROC __glewUniform3f

    PFNGLUNIFORM3FVPROC __glewUniform3fv

    PFNGLUNIFORM3IPROC __glewUniform3i

    PFNGLUNIFORM3IVPROC __glewUniform3iv

    PFNGLUNIFORM4FPROC __glewUniform4f

    PFNGLUNIFORM4FVPROC __glewUniform4fv

    PFNGLUNIFORM4IPROC __glewUniform4i

    PFNGLUNIFORM4IVPROC __glewUniform4iv

    PFNGLUNIFORMMATRIX2FVPROC __glewUniformMatrix2fv

    PFNGLUNIFORMMATRIX3FVPROC __glewUniformMatrix3fv

    PFNGLUNIFORMMATRIX4FVPROC __glewUniformMatrix4fv

    PFNGLUSEPROGRAMPROC __glewUseProgram

    PFNGLVALIDATEPROGRAMPROC __glewValidateProgram

    PFNGLVERTEXATTRIB1DPROC __glewVertexAttrib1d

    PFNGLVERTEXATTRIB1DVPROC __glewVertexAttrib1dv

    PFNGLVERTEXATTRIB1FPROC __glewVertexAttrib1f

    PFNGLVERTEXATTRIB1FVPROC __glewVertexAttrib1fv

    PFNGLVERTEXATTRIB1SPROC __glewVertexAttrib1s

    PFNGLVERTEXATTRIB1SVPROC __glewVertexAttrib1sv

    PFNGLVERTEXATTRIB2DPROC __glewVertexAttrib2d

    PFNGLVERTEXATTRIB2DVPROC __glewVertexAttrib2dv

    PFNGLVERTEXATTRIB2FPROC __glewVertexAttrib2f

    PFNGLVERTEXATTRIB2FVPROC __glewVertexAttrib2fv

    PFNGLVERTEXATTRIB2SPROC __glewVertexAttrib2s

    PFNGLVERTEXATTRIB2SVPROC __glewVertexAttrib2sv

    PFNGLVERTEXATTRIB3DPROC __glewVertexAttrib3d

    PFNGLVERTEXATTRIB3DVPROC __glewVertexAttrib3dv

    PFNGLVERTEXATTRIB3FPROC __glewVertexAttrib3f

    PFNGLVERTEXATTRIB3FVPROC __glewVertexAttrib3fv

    PFNGLVERTEXATTRIB3SPROC __glewVertexAttrib3s

    PFNGLVERTEXATTRIB3SVPROC __glewVertexAttrib3sv

    PFNGLVERTEXATTRIB4NBVPROC __glewVertexAttrib4Nbv

    PFNGLVERTEXATTRIB4NIVPROC __glewVertexAttrib4Niv

    PFNGLVERTEXATTRIB4NSVPROC __glewVertexAttrib4Nsv

    PFNGLVERTEXATTRIB4NUBPROC __glewVertexAttrib4Nub

    PFNGLVERTEXATTRIB4NUBVPROC __glewVertexAttrib4Nubv

    PFNGLVERTEXATTRIB4NUIVPROC __glewVertexAttrib4Nuiv

    PFNGLVERTEXATTRIB4NUSVPROC __glewVertexAttrib4Nusv

    PFNGLVERTEXATTRIB4BVPROC __glewVertexAttrib4bv

    PFNGLVERTEXATTRIB4DPROC __glewVertexAttrib4d

    PFNGLVERTEXATTRIB4DVPROC __glewVertexAttrib4dv

    PFNGLVERTEXATTRIB4FPROC __glewVertexAttrib4f

    PFNGLVERTEXATTRIB4FVPROC __glewVertexAttrib4fv

    PFNGLVERTEXATTRIB4IVPROC __glewVertexAttrib4iv

    PFNGLVERTEXATTRIB4SPROC __glewVertexAttrib4s

    PFNGLVERTEXATTRIB4SVPROC __glewVertexAttrib4sv

    PFNGLVERTEXATTRIB4UBVPROC __glewVertexAttrib4ubv

    PFNGLVERTEXATTRIB4UIVPROC __glewVertexAttrib4uiv

    PFNGLVERTEXATTRIB4USVPROC __glewVertexAttrib4usv

    PFNGLVERTEXATTRIBPOINTERPROC __glewVertexAttribPointer

    PFNGLUNIFORMMATRIX2X3FVPROC __glewUniformMatrix2x3fv

    PFNGLUNIFORMMATRIX2X4FVPROC __glewUniformMatrix2x4fv

    PFNGLUNIFORMMATRIX3X2FVPROC __glewUniformMatrix3x2fv

    PFNGLUNIFORMMATRIX3X4FVPROC __glewUniformMatrix3x4fv

    PFNGLUNIFORMMATRIX4X2FVPROC __glewUniformMatrix4x2fv

    PFNGLUNIFORMMATRIX4X3FVPROC __glewUniformMatrix4x3fv

    PFNGLBEGINCONDITIONALRENDERPROC __glewBeginConditionalRender

    PFNGLBEGINTRANSFORMFEEDBACKPROC __glewBeginTransformFeedback

    PFNGLBINDFRAGDATALOCATIONPROC __glewBindFragDataLocation

    PFNGLCLAMPCOLORPROC __glewClampColor

    PFNGLCLEARBUFFERFIPROC __glewClearBufferfi

    PFNGLCLEARBUFFERFVPROC __glewClearBufferfv

    PFNGLCLEARBUFFERIVPROC __glewClearBufferiv

    PFNGLCLEARBUFFERUIVPROC __glewClearBufferuiv

    PFNGLCOLORMASKIPROC __glewColorMaski

    PFNGLDISABLEIPROC __glewDisablei

    PFNGLENABLEIPROC __glewEnablei

    PFNGLENDCONDITIONALRENDERPROC __glewEndConditionalRender

    PFNGLENDTRANSFORMFEEDBACKPROC __glewEndTransformFeedback

    PFNGLGETBOOLEANI_VPROC __glewGetBooleani_v

    PFNGLGETFRAGDATALOCATIONPROC __glewGetFragDataLocation

    PFNGLGETSTRINGIPROC __glewGetStringi

    PFNGLGETTEXPARAMETERIIVPROC __glewGetTexParameterIiv

    PFNGLGETTEXPARAMETERIUIVPROC __glewGetTexParameterIuiv

    PFNGLGETTRANSFORMFEEDBACKVARYINGPROC __glewGetTransformFeedbackVarying

    PFNGLGETUNIFORMUIVPROC __glewGetUniformuiv

    PFNGLGETVERTEXATTRIBIIVPROC __glewGetVertexAttribIiv

    PFNGLGETVERTEXATTRIBIUIVPROC __glewGetVertexAttribIuiv

    PFNGLISENABLEDIPROC __glewIsEnabledi

    PFNGLTEXPARAMETERIIVPROC __glewTexParameterIiv

    PFNGLTEXPARAMETERIUIVPROC __glewTexParameterIuiv

    PFNGLTRANSFORMFEEDBACKVARYINGSPROC __glewTransformFeedbackVaryings

    PFNGLUNIFORM1UIPROC __glewUniform1ui

    PFNGLUNIFORM1UIVPROC __glewUniform1uiv

    PFNGLUNIFORM2UIPROC __glewUniform2ui

    PFNGLUNIFORM2UIVPROC __glewUniform2uiv

    PFNGLUNIFORM3UIPROC __glewUniform3ui

    PFNGLUNIFORM3UIVPROC __glewUniform3uiv

    PFNGLUNIFORM4UIPROC __glewUniform4ui

    PFNGLUNIFORM4UIVPROC __glewUniform4uiv

    PFNGLVERTEXATTRIBI1IPROC __glewVertexAttribI1i

    PFNGLVERTEXATTRIBI1IVPROC __glewVertexAttribI1iv

    PFNGLVERTEXATTRIBI1UIPROC __glewVertexAttribI1ui

    PFNGLVERTEXATTRIBI1UIVPROC __glewVertexAttribI1uiv

    PFNGLVERTEXATTRIBI2IPROC __glewVertexAttribI2i

    PFNGLVERTEXATTRIBI2IVPROC __glewVertexAttribI2iv

    PFNGLVERTEXATTRIBI2UIPROC __glewVertexAttribI2ui

    PFNGLVERTEXATTRIBI2UIVPROC __glewVertexAttribI2uiv

    PFNGLVERTEXATTRIBI3IPROC __glewVertexAttribI3i

    PFNGLVERTEXATTRIBI3IVPROC __glewVertexAttribI3iv

    PFNGLVERTEXATTRIBI3UIPROC __glewVertexAttribI3ui

    PFNGLVERTEXATTRIBI3UIVPROC __glewVertexAttribI3uiv

    PFNGLVERTEXATTRIBI4BVPROC __glewVertexAttribI4bv

    PFNGLVERTEXATTRIBI4IPROC __glewVertexAttribI4i

    PFNGLVERTEXATTRIBI4IVPROC __glewVertexAttribI4iv

    PFNGLVERTEXATTRIBI4SVPROC __glewVertexAttribI4sv

    PFNGLVERTEXATTRIBI4UBVPROC __glewVertexAttribI4ubv

    PFNGLVERTEXATTRIBI4UIPROC __glewVertexAttribI4ui

    PFNGLVERTEXATTRIBI4UIVPROC __glewVertexAttribI4uiv

    PFNGLVERTEXATTRIBI4USVPROC __glewVertexAttribI4usv

    PFNGLVERTEXATTRIBIPOINTERPROC __glewVertexAttribIPointer

    PFNGLDRAWARRAYSINSTANCEDPROC __glewDrawArraysInstanced

    PFNGLDRAWELEMENTSINSTANCEDPROC __glewDrawElementsInstanced

    PFNGLPRIMITIVERESTARTINDEXPROC __glewPrimitiveRestartIndex

    PFNGLTEXBUFFERPROC __glewTexBuffer

    PFNGLFRAMEBUFFERTEXTUREPROC __glewFramebufferTexture

    PFNGLGETBUFFERPARAMETERI64VPROC __glewGetBufferParameteri64v

    PFNGLGETINTEGER64I_VPROC __glewGetInteger64i_v

    PFNGLVERTEXATTRIBDIVISORPROC __glewVertexAttribDivisor

    PFNGLBLENDEQUATIONSEPARATEIPROC __glewBlendEquationSeparatei

    PFNGLBLENDEQUATIONIPROC __glewBlendEquationi

    PFNGLBLENDFUNCSEPARATEIPROC __glewBlendFuncSeparatei

    PFNGLBLENDFUNCIPROC __glewBlendFunci

    PFNGLMINSAMPLESHADINGPROC __glewMinSampleShading

    PFNGLGETGRAPHICSRESETSTATUSPROC __glewGetGraphicsResetStatus

    PFNGLGETNCOMPRESSEDTEXIMAGEPROC __glewGetnCompressedTexImage

    PFNGLGETNTEXIMAGEPROC __glewGetnTexImage

    PFNGLGETNUNIFORMDVPROC __glewGetnUniformdv

    PFNGLMULTIDRAWARRAYSINDIRECTCOUNTPROC __glewMultiDrawArraysIndirectCount

    PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTPROC __glewMultiDrawElementsIndirectCount

    PFNGLSPECIALIZESHADERPROC __glewSpecializeShader

    PFNGLTBUFFERMASK3DFXPROC __glewTbufferMask3DFX

    PFNGLDEBUGMESSAGECALLBACKAMDPROC __glewDebugMessageCallbackAMD

    PFNGLDEBUGMESSAGEENABLEAMDPROC __glewDebugMessageEnableAMD

    PFNGLDEBUGMESSAGEINSERTAMDPROC __glewDebugMessageInsertAMD

    PFNGLGETDEBUGMESSAGELOGAMDPROC __glewGetDebugMessageLogAMD

    PFNGLBLENDEQUATIONINDEXEDAMDPROC __glewBlendEquationIndexedAMD

    PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC __glewBlendEquationSeparateIndexedAMD

    PFNGLBLENDFUNCINDEXEDAMDPROC __glewBlendFuncIndexedAMD

    PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC __glewBlendFuncSeparateIndexedAMD

    PFNGLFRAMEBUFFERSAMPLEPOSITIONSFVAMDPROC __glewFramebufferSamplePositionsfvAMD

    PFNGLGETFRAMEBUFFERPARAMETERFVAMDPROC __glewGetFramebufferParameterfvAMD

    PFNGLGETNAMEDFRAMEBUFFERPARAMETERFVAMDPROC __glewGetNamedFramebufferParameterfvAMD

    PFNGLNAMEDFRAMEBUFFERSAMPLEPOSITIONSFVAMDPROC __glewNamedFramebufferSamplePositionsfvAMD

    PFNGLVERTEXATTRIBPARAMETERIAMDPROC __glewVertexAttribParameteriAMD

    PFNGLMULTIDRAWARRAYSINDIRECTAMDPROC __glewMultiDrawArraysIndirectAMD

    PFNGLMULTIDRAWELEMENTSINDIRECTAMDPROC __glewMultiDrawElementsIndirectAMD

    PFNGLDELETENAMESAMDPROC __glewDeleteNamesAMD

    PFNGLGENNAMESAMDPROC __glewGenNamesAMD

    PFNGLISNAMEAMDPROC __glewIsNameAMD

    PFNGLQUERYOBJECTPARAMETERUIAMDPROC __glewQueryObjectParameteruiAMD

    PFNGLBEGINPERFMONITORAMDPROC __glewBeginPerfMonitorAMD

    PFNGLDELETEPERFMONITORSAMDPROC __glewDeletePerfMonitorsAMD

    PFNGLENDPERFMONITORAMDPROC __glewEndPerfMonitorAMD

    PFNGLGENPERFMONITORSAMDPROC __glewGenPerfMonitorsAMD

    PFNGLGETPERFMONITORCOUNTERDATAAMDPROC __glewGetPerfMonitorCounterDataAMD

    PFNGLGETPERFMONITORCOUNTERINFOAMDPROC __glewGetPerfMonitorCounterInfoAMD

    PFNGLGETPERFMONITORCOUNTERSTRINGAMDPROC __glewGetPerfMonitorCounterStringAMD

    PFNGLGETPERFMONITORCOUNTERSAMDPROC __glewGetPerfMonitorCountersAMD

    PFNGLGETPERFMONITORGROUPSTRINGAMDPROC __glewGetPerfMonitorGroupStringAMD

    PFNGLGETPERFMONITORGROUPSAMDPROC __glewGetPerfMonitorGroupsAMD

    PFNGLSELECTPERFMONITORCOUNTERSAMDPROC __glewSelectPerfMonitorCountersAMD

    PFNGLSETMULTISAMPLEFVAMDPROC __glewSetMultisamplefvAMD

    PFNGLTEXSTORAGESPARSEAMDPROC __glewTexStorageSparseAMD

    PFNGLTEXTURESTORAGESPARSEAMDPROC __glewTextureStorageSparseAMD

    PFNGLSTENCILOPVALUEAMDPROC __glewStencilOpValueAMD

    PFNGLTESSELLATIONFACTORAMDPROC __glewTessellationFactorAMD

    PFNGLTESSELLATIONMODEAMDPROC __glewTessellationModeAMD

    PFNGLBLITFRAMEBUFFERANGLEPROC __glewBlitFramebufferANGLE

    PFNGLRENDERBUFFERSTORAGEMULTISAMPLEANGLEPROC __glewRenderbufferStorageMultisampleANGLE

    PFNGLDRAWARRAYSINSTANCEDANGLEPROC __glewDrawArraysInstancedANGLE

    PFNGLDRAWELEMENTSINSTANCEDANGLEPROC __glewDrawElementsInstancedANGLE

    PFNGLVERTEXATTRIBDIVISORANGLEPROC __glewVertexAttribDivisorANGLE

    PFNGLBEGINQUERYANGLEPROC __glewBeginQueryANGLE

    PFNGLDELETEQUERIESANGLEPROC __glewDeleteQueriesANGLE

    PFNGLENDQUERYANGLEPROC __glewEndQueryANGLE

    PFNGLGENQUERIESANGLEPROC __glewGenQueriesANGLE

    PFNGLGETQUERYOBJECTI64VANGLEPROC __glewGetQueryObjecti64vANGLE

    PFNGLGETQUERYOBJECTIVANGLEPROC __glewGetQueryObjectivANGLE

    PFNGLGETQUERYOBJECTUI64VANGLEPROC __glewGetQueryObjectui64vANGLE

    PFNGLGETQUERYOBJECTUIVANGLEPROC __glewGetQueryObjectuivANGLE

    PFNGLGETQUERYIVANGLEPROC __glewGetQueryivANGLE

    PFNGLISQUERYANGLEPROC __glewIsQueryANGLE

    PFNGLQUERYCOUNTERANGLEPROC __glewQueryCounterANGLE

    PFNGLGETTRANSLATEDSHADERSOURCEANGLEPROC __glewGetTranslatedShaderSourceANGLE

    PFNGLCOPYTEXTURELEVELSAPPLEPROC __glewCopyTextureLevelsAPPLE

    PFNGLDRAWELEMENTARRAYAPPLEPROC __glewDrawElementArrayAPPLE

    PFNGLDRAWRANGEELEMENTARRAYAPPLEPROC __glewDrawRangeElementArrayAPPLE

    PFNGLELEMENTPOINTERAPPLEPROC __glewElementPointerAPPLE

    PFNGLMULTIDRAWELEMENTARRAYAPPLEPROC __glewMultiDrawElementArrayAPPLE

    PFNGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC __glewMultiDrawRangeElementArrayAPPLE

    PFNGLDELETEFENCESAPPLEPROC __glewDeleteFencesAPPLE

    PFNGLFINISHFENCEAPPLEPROC __glewFinishFenceAPPLE

    PFNGLFINISHOBJECTAPPLEPROC __glewFinishObjectAPPLE

    PFNGLGENFENCESAPPLEPROC __glewGenFencesAPPLE

    PFNGLISFENCEAPPLEPROC __glewIsFenceAPPLE

    PFNGLSETFENCEAPPLEPROC __glewSetFenceAPPLE

    PFNGLTESTFENCEAPPLEPROC __glewTestFenceAPPLE

    PFNGLTESTOBJECTAPPLEPROC __glewTestObjectAPPLE

    PFNGLBUFFERPARAMETERIAPPLEPROC __glewBufferParameteriAPPLE

    PFNGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC __glewFlushMappedBufferRangeAPPLE

    PFNGLRENDERBUFFERSTORAGEMULTISAMPLEAPPLEPROC __glewRenderbufferStorageMultisampleAPPLE

    PFNGLRESOLVEMULTISAMPLEFRAMEBUFFERAPPLEPROC __glewResolveMultisampleFramebufferAPPLE

    PFNGLGETOBJECTPARAMETERIVAPPLEPROC __glewGetObjectParameterivAPPLE

    PFNGLOBJECTPURGEABLEAPPLEPROC __glewObjectPurgeableAPPLE

    PFNGLOBJECTUNPURGEABLEAPPLEPROC __glewObjectUnpurgeableAPPLE

    PFNGLCLIENTWAITSYNCAPPLEPROC __glewClientWaitSyncAPPLE

    PFNGLDELETESYNCAPPLEPROC __glewDeleteSyncAPPLE

    PFNGLFENCESYNCAPPLEPROC __glewFenceSyncAPPLE

    PFNGLGETINTEGER64VAPPLEPROC __glewGetInteger64vAPPLE

    PFNGLGETSYNCIVAPPLEPROC __glewGetSyncivAPPLE

    PFNGLISSYNCAPPLEPROC __glewIsSyncAPPLE

    PFNGLWAITSYNCAPPLEPROC __glewWaitSyncAPPLE

    PFNGLGETTEXPARAMETERPOINTERVAPPLEPROC __glewGetTexParameterPointervAPPLE

    PFNGLTEXTURERANGEAPPLEPROC __glewTextureRangeAPPLE

    PFNGLBINDVERTEXARRAYAPPLEPROC __glewBindVertexArrayAPPLE

    PFNGLDELETEVERTEXARRAYSAPPLEPROC __glewDeleteVertexArraysAPPLE

    PFNGLGENVERTEXARRAYSAPPLEPROC __glewGenVertexArraysAPPLE

    PFNGLISVERTEXARRAYAPPLEPROC __glewIsVertexArrayAPPLE

    PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC __glewFlushVertexArrayRangeAPPLE

    PFNGLVERTEXARRAYPARAMETERIAPPLEPROC __glewVertexArrayParameteriAPPLE

    PFNGLVERTEXARRAYRANGEAPPLEPROC __glewVertexArrayRangeAPPLE

    PFNGLDISABLEVERTEXATTRIBAPPLEPROC __glewDisableVertexAttribAPPLE

    PFNGLENABLEVERTEXATTRIBAPPLEPROC __glewEnableVertexAttribAPPLE

    PFNGLISVERTEXATTRIBENABLEDAPPLEPROC __glewIsVertexAttribEnabledAPPLE

    PFNGLMAPVERTEXATTRIB1DAPPLEPROC __glewMapVertexAttrib1dAPPLE

    PFNGLMAPVERTEXATTRIB1FAPPLEPROC __glewMapVertexAttrib1fAPPLE

    PFNGLMAPVERTEXATTRIB2DAPPLEPROC __glewMapVertexAttrib2dAPPLE

    PFNGLMAPVERTEXATTRIB2FAPPLEPROC __glewMapVertexAttrib2fAPPLE

    PFNGLCLEARDEPTHFPROC __glewClearDepthf

    PFNGLDEPTHRANGEFPROC __glewDepthRangef

    PFNGLGETSHADERPRECISIONFORMATPROC __glewGetShaderPrecisionFormat

    PFNGLRELEASESHADERCOMPILERPROC __glewReleaseShaderCompiler

    PFNGLSHADERBINARYPROC __glewShaderBinary

    PFNGLMEMORYBARRIERBYREGIONPROC __glewMemoryBarrierByRegion

    PFNGLPRIMITIVEBOUNDINGBOXARBPROC __glewPrimitiveBoundingBoxARB

    PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC __glewDrawArraysInstancedBaseInstance

    PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC __glewDrawElementsInstancedBaseInstance

    PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC __glewDrawElementsInstancedBaseVertexBaseInstance

    PFNGLGETIMAGEHANDLEARBPROC __glewGetImageHandleARB

    PFNGLGETTEXTUREHANDLEARBPROC __glewGetTextureHandleARB

    PFNGLGETTEXTURESAMPLERHANDLEARBPROC __glewGetTextureSamplerHandleARB

    PFNGLGETVERTEXATTRIBLUI64VARBPROC __glewGetVertexAttribLui64vARB

    PFNGLISIMAGEHANDLERESIDENTARBPROC __glewIsImageHandleResidentARB

    PFNGLISTEXTUREHANDLERESIDENTARBPROC __glewIsTextureHandleResidentARB

    PFNGLMAKEIMAGEHANDLENONRESIDENTARBPROC __glewMakeImageHandleNonResidentARB

    PFNGLMAKEIMAGEHANDLERESIDENTARBPROC __glewMakeImageHandleResidentARB

    PFNGLMAKETEXTUREHANDLENONRESIDENTARBPROC __glewMakeTextureHandleNonResidentARB

    PFNGLMAKETEXTUREHANDLERESIDENTARBPROC __glewMakeTextureHandleResidentARB

    PFNGLPROGRAMUNIFORMHANDLEUI64ARBPROC __glewProgramUniformHandleui64ARB

    PFNGLPROGRAMUNIFORMHANDLEUI64VARBPROC __glewProgramUniformHandleui64vARB

    PFNGLUNIFORMHANDLEUI64ARBPROC __glewUniformHandleui64ARB

    PFNGLUNIFORMHANDLEUI64VARBPROC __glewUniformHandleui64vARB

    PFNGLVERTEXATTRIBL1UI64ARBPROC __glewVertexAttribL1ui64ARB

    PFNGLVERTEXATTRIBL1UI64VARBPROC __glewVertexAttribL1ui64vARB

    PFNGLBINDFRAGDATALOCATIONINDEXEDPROC __glewBindFragDataLocationIndexed

    PFNGLGETFRAGDATAINDEXPROC __glewGetFragDataIndex

    PFNGLBUFFERSTORAGEPROC __glewBufferStorage

    PFNGLCREATESYNCFROMCLEVENTARBPROC __glewCreateSyncFromCLeventARB

    PFNGLCLEARBUFFERDATAPROC __glewClearBufferData

    PFNGLCLEARBUFFERSUBDATAPROC __glewClearBufferSubData

    PFNGLCLEARNAMEDBUFFERDATAEXTPROC __glewClearNamedBufferDataEXT

    PFNGLCLEARNAMEDBUFFERSUBDATAEXTPROC __glewClearNamedBufferSubDataEXT

    PFNGLCLEARTEXIMAGEPROC __glewClearTexImage

    PFNGLCLEARTEXSUBIMAGEPROC __glewClearTexSubImage

    PFNGLCLIPCONTROLPROC __glewClipControl

    PFNGLCLAMPCOLORARBPROC __glewClampColorARB

    PFNGLDISPATCHCOMPUTEPROC __glewDispatchCompute

    PFNGLDISPATCHCOMPUTEINDIRECTPROC __glewDispatchComputeIndirect

    PFNGLDISPATCHCOMPUTEGROUPSIZEARBPROC __glewDispatchComputeGroupSizeARB

    PFNGLCOPYBUFFERSUBDATAPROC __glewCopyBufferSubData

    PFNGLCOPYIMAGESUBDATAPROC __glewCopyImageSubData

    PFNGLDEBUGMESSAGECALLBACKARBPROC __glewDebugMessageCallbackARB

    PFNGLDEBUGMESSAGECONTROLARBPROC __glewDebugMessageControlARB

    PFNGLDEBUGMESSAGEINSERTARBPROC __glewDebugMessageInsertARB

    PFNGLGETDEBUGMESSAGELOGARBPROC __glewGetDebugMessageLogARB

    PFNGLBINDTEXTUREUNITPROC __glewBindTextureUnit

    PFNGLBLITNAMEDFRAMEBUFFERPROC __glewBlitNamedFramebuffer

    PFNGLCHECKNAMEDFRAMEBUFFERSTATUSPROC __glewCheckNamedFramebufferStatus

    PFNGLCLEARNAMEDBUFFERDATAPROC __glewClearNamedBufferData

    PFNGLCLEARNAMEDBUFFERSUBDATAPROC __glewClearNamedBufferSubData

    PFNGLCLEARNAMEDFRAMEBUFFERFIPROC __glewClearNamedFramebufferfi

    PFNGLCLEARNAMEDFRAMEBUFFERFVPROC __glewClearNamedFramebufferfv

    PFNGLCLEARNAMEDFRAMEBUFFERIVPROC __glewClearNamedFramebufferiv

    PFNGLCLEARNAMEDFRAMEBUFFERUIVPROC __glewClearNamedFramebufferuiv

    PFNGLCOMPRESSEDTEXTURESUBIMAGE1DPROC __glewCompressedTextureSubImage1D

    PFNGLCOMPRESSEDTEXTURESUBIMAGE2DPROC __glewCompressedTextureSubImage2D

    PFNGLCOMPRESSEDTEXTURESUBIMAGE3DPROC __glewCompressedTextureSubImage3D

    PFNGLCOPYNAMEDBUFFERSUBDATAPROC __glewCopyNamedBufferSubData

    PFNGLCOPYTEXTURESUBIMAGE1DPROC __glewCopyTextureSubImage1D

    PFNGLCOPYTEXTURESUBIMAGE2DPROC __glewCopyTextureSubImage2D

    PFNGLCOPYTEXTURESUBIMAGE3DPROC __glewCopyTextureSubImage3D

    PFNGLCREATEBUFFERSPROC __glewCreateBuffers

    PFNGLCREATEFRAMEBUFFERSPROC __glewCreateFramebuffers

    PFNGLCREATEPROGRAMPIPELINESPROC __glewCreateProgramPipelines

    PFNGLCREATEQUERIESPROC __glewCreateQueries

    PFNGLCREATERENDERBUFFERSPROC __glewCreateRenderbuffers

    PFNGLCREATESAMPLERSPROC __glewCreateSamplers

    PFNGLCREATETEXTURESPROC __glewCreateTextures

    PFNGLCREATETRANSFORMFEEDBACKSPROC __glewCreateTransformFeedbacks

    PFNGLCREATEVERTEXARRAYSPROC __glewCreateVertexArrays

    PFNGLDISABLEVERTEXARRAYATTRIBPROC __glewDisableVertexArrayAttrib

    PFNGLENABLEVERTEXARRAYATTRIBPROC __glewEnableVertexArrayAttrib

    PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEPROC __glewFlushMappedNamedBufferRange

    PFNGLGENERATETEXTUREMIPMAPPROC __glewGenerateTextureMipmap

    PFNGLGETCOMPRESSEDTEXTUREIMAGEPROC __glewGetCompressedTextureImage

    PFNGLGETNAMEDBUFFERPARAMETERI64VPROC __glewGetNamedBufferParameteri64v

    PFNGLGETNAMEDBUFFERPARAMETERIVPROC __glewGetNamedBufferParameteriv

    PFNGLGETNAMEDBUFFERPOINTERVPROC __glewGetNamedBufferPointerv

    PFNGLGETNAMEDBUFFERSUBDATAPROC __glewGetNamedBufferSubData

    PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVPROC __glewGetNamedFramebufferAttachmentParameteriv

    PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVPROC __glewGetNamedFramebufferParameteriv

    PFNGLGETNAMEDRENDERBUFFERPARAMETERIVPROC __glewGetNamedRenderbufferParameteriv

    PFNGLGETQUERYBUFFEROBJECTI64VPROC __glewGetQueryBufferObjecti64v

    PFNGLGETQUERYBUFFEROBJECTIVPROC __glewGetQueryBufferObjectiv

    PFNGLGETQUERYBUFFEROBJECTUI64VPROC __glewGetQueryBufferObjectui64v

    PFNGLGETQUERYBUFFEROBJECTUIVPROC __glewGetQueryBufferObjectuiv

    PFNGLGETTEXTUREIMAGEPROC __glewGetTextureImage

    PFNGLGETTEXTURELEVELPARAMETERFVPROC __glewGetTextureLevelParameterfv

    PFNGLGETTEXTURELEVELPARAMETERIVPROC __glewGetTextureLevelParameteriv

    PFNGLGETTEXTUREPARAMETERIIVPROC __glewGetTextureParameterIiv

    PFNGLGETTEXTUREPARAMETERIUIVPROC __glewGetTextureParameterIuiv

    PFNGLGETTEXTUREPARAMETERFVPROC __glewGetTextureParameterfv

    PFNGLGETTEXTUREPARAMETERIVPROC __glewGetTextureParameteriv

    PFNGLGETTRANSFORMFEEDBACKI64_VPROC __glewGetTransformFeedbacki64_v

    PFNGLGETTRANSFORMFEEDBACKI_VPROC __glewGetTransformFeedbacki_v

    PFNGLGETTRANSFORMFEEDBACKIVPROC __glewGetTransformFeedbackiv

    PFNGLGETVERTEXARRAYINDEXED64IVPROC __glewGetVertexArrayIndexed64iv

    PFNGLGETVERTEXARRAYINDEXEDIVPROC __glewGetVertexArrayIndexediv

    PFNGLGETVERTEXARRAYIVPROC __glewGetVertexArrayiv

    PFNGLINVALIDATENAMEDFRAMEBUFFERDATAPROC __glewInvalidateNamedFramebufferData

    PFNGLINVALIDATENAMEDFRAMEBUFFERSUBDATAPROC __glewInvalidateNamedFramebufferSubData

    PFNGLMAPNAMEDBUFFERPROC __glewMapNamedBuffer

    PFNGLMAPNAMEDBUFFERRANGEPROC __glewMapNamedBufferRange

    PFNGLNAMEDBUFFERDATAPROC __glewNamedBufferData

    PFNGLNAMEDBUFFERSTORAGEPROC __glewNamedBufferStorage

    PFNGLNAMEDBUFFERSUBDATAPROC __glewNamedBufferSubData

    PFNGLNAMEDFRAMEBUFFERDRAWBUFFERPROC __glewNamedFramebufferDrawBuffer

    PFNGLNAMEDFRAMEBUFFERDRAWBUFFERSPROC __glewNamedFramebufferDrawBuffers

    PFNGLNAMEDFRAMEBUFFERPARAMETERIPROC __glewNamedFramebufferParameteri

    PFNGLNAMEDFRAMEBUFFERREADBUFFERPROC __glewNamedFramebufferReadBuffer

    PFNGLNAMEDFRAMEBUFFERRENDERBUFFERPROC __glewNamedFramebufferRenderbuffer

    PFNGLNAMEDFRAMEBUFFERTEXTUREPROC __glewNamedFramebufferTexture

    PFNGLNAMEDFRAMEBUFFERTEXTURELAYERPROC __glewNamedFramebufferTextureLayer

    PFNGLNAMEDRENDERBUFFERSTORAGEPROC __glewNamedRenderbufferStorage

    PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEPROC __glewNamedRenderbufferStorageMultisample

    PFNGLTEXTUREBUFFERPROC __glewTextureBuffer

    PFNGLTEXTUREBUFFERRANGEPROC __glewTextureBufferRange

    PFNGLTEXTUREPARAMETERIIVPROC __glewTextureParameterIiv

    PFNGLTEXTUREPARAMETERIUIVPROC __glewTextureParameterIuiv

    PFNGLTEXTUREPARAMETERFPROC __glewTextureParameterf

    PFNGLTEXTUREPARAMETERFVPROC __glewTextureParameterfv

    PFNGLTEXTUREPARAMETERIPROC __glewTextureParameteri

    PFNGLTEXTUREPARAMETERIVPROC __glewTextureParameteriv

    PFNGLTEXTURESTORAGE1DPROC __glewTextureStorage1D

    PFNGLTEXTURESTORAGE2DPROC __glewTextureStorage2D

    PFNGLTEXTURESTORAGE2DMULTISAMPLEPROC __glewTextureStorage2DMultisample

    PFNGLTEXTURESTORAGE3DPROC __glewTextureStorage3D

    PFNGLTEXTURESTORAGE3DMULTISAMPLEPROC __glewTextureStorage3DMultisample

    PFNGLTEXTURESUBIMAGE1DPROC __glewTextureSubImage1D

    PFNGLTEXTURESUBIMAGE2DPROC __glewTextureSubImage2D

    PFNGLTEXTURESUBIMAGE3DPROC __glewTextureSubImage3D

    PFNGLTRANSFORMFEEDBACKBUFFERBASEPROC __glewTransformFeedbackBufferBase

    PFNGLTRANSFORMFEEDBACKBUFFERRANGEPROC __glewTransformFeedbackBufferRange

    PFNGLUNMAPNAMEDBUFFERPROC __glewUnmapNamedBuffer

    PFNGLVERTEXARRAYATTRIBBINDINGPROC __glewVertexArrayAttribBinding

    PFNGLVERTEXARRAYATTRIBFORMATPROC __glewVertexArrayAttribFormat

    PFNGLVERTEXARRAYATTRIBIFORMATPROC __glewVertexArrayAttribIFormat

    PFNGLVERTEXARRAYATTRIBLFORMATPROC __glewVertexArrayAttribLFormat

    PFNGLVERTEXARRAYBINDINGDIVISORPROC __glewVertexArrayBindingDivisor

    PFNGLVERTEXARRAYELEMENTBUFFERPROC __glewVertexArrayElementBuffer

    PFNGLVERTEXARRAYVERTEXBUFFERPROC __glewVertexArrayVertexBuffer

    PFNGLVERTEXARRAYVERTEXBUFFERSPROC __glewVertexArrayVertexBuffers

    PFNGLDRAWBUFFERSARBPROC __glewDrawBuffersARB

    PFNGLBLENDEQUATIONSEPARATEIARBPROC __glewBlendEquationSeparateiARB

    PFNGLBLENDEQUATIONIARBPROC __glewBlendEquationiARB

    PFNGLBLENDFUNCSEPARATEIARBPROC __glewBlendFuncSeparateiARB

    PFNGLBLENDFUNCIARBPROC __glewBlendFunciARB

    PFNGLDRAWELEMENTSBASEVERTEXPROC __glewDrawElementsBaseVertex

    PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC __glewDrawElementsInstancedBaseVertex

    PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC __glewDrawRangeElementsBaseVertex

    PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC __glewMultiDrawElementsBaseVertex

    PFNGLDRAWARRAYSINDIRECTPROC __glewDrawArraysIndirect

    PFNGLDRAWELEMENTSINDIRECTPROC __glewDrawElementsIndirect

    PFNGLFRAMEBUFFERPARAMETERIPROC __glewFramebufferParameteri

    PFNGLGETFRAMEBUFFERPARAMETERIVPROC __glewGetFramebufferParameteriv

    PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVEXTPROC __glewGetNamedFramebufferParameterivEXT

    PFNGLNAMEDFRAMEBUFFERPARAMETERIEXTPROC __glewNamedFramebufferParameteriEXT

    PFNGLBINDFRAMEBUFFERPROC __glewBindFramebuffer

    PFNGLBINDRENDERBUFFERPROC __glewBindRenderbuffer

    PFNGLBLITFRAMEBUFFERPROC __glewBlitFramebuffer

    PFNGLCHECKFRAMEBUFFERSTATUSPROC __glewCheckFramebufferStatus

    PFNGLDELETEFRAMEBUFFERSPROC __glewDeleteFramebuffers

    PFNGLDELETERENDERBUFFERSPROC __glewDeleteRenderbuffers

    PFNGLFRAMEBUFFERRENDERBUFFERPROC __glewFramebufferRenderbuffer

    PFNGLFRAMEBUFFERTEXTURE1DPROC __glewFramebufferTexture1D

    PFNGLFRAMEBUFFERTEXTURE2DPROC __glewFramebufferTexture2D

    PFNGLFRAMEBUFFERTEXTURE3DPROC __glewFramebufferTexture3D

    PFNGLFRAMEBUFFERTEXTURELAYERPROC __glewFramebufferTextureLayer

    PFNGLGENFRAMEBUFFERSPROC __glewGenFramebuffers

    PFNGLGENRENDERBUFFERSPROC __glewGenRenderbuffers

    PFNGLGENERATEMIPMAPPROC __glewGenerateMipmap

    PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC __glewGetFramebufferAttachmentParameteriv

    PFNGLGETRENDERBUFFERPARAMETERIVPROC __glewGetRenderbufferParameteriv

    PFNGLISFRAMEBUFFERPROC __glewIsFramebuffer

    PFNGLISRENDERBUFFERPROC __glewIsRenderbuffer

    PFNGLRENDERBUFFERSTORAGEPROC __glewRenderbufferStorage

    PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC __glewRenderbufferStorageMultisample

    PFNGLFRAMEBUFFERTEXTUREARBPROC __glewFramebufferTextureARB

    PFNGLFRAMEBUFFERTEXTUREFACEARBPROC __glewFramebufferTextureFaceARB

    PFNGLFRAMEBUFFERTEXTURELAYERARBPROC __glewFramebufferTextureLayerARB

    PFNGLPROGRAMPARAMETERIARBPROC __glewProgramParameteriARB

    PFNGLGETPROGRAMBINARYPROC __glewGetProgramBinary

    PFNGLPROGRAMBINARYPROC __glewProgramBinary

    PFNGLPROGRAMPARAMETERIPROC __glewProgramParameteri

    PFNGLGETCOMPRESSEDTEXTURESUBIMAGEPROC __glewGetCompressedTextureSubImage

    PFNGLGETTEXTURESUBIMAGEPROC __glewGetTextureSubImage

    PFNGLSPECIALIZESHADERARBPROC __glewSpecializeShaderARB

    PFNGLGETUNIFORMDVPROC __glewGetUniformdv

    PFNGLUNIFORM1DPROC __glewUniform1d

    PFNGLUNIFORM1DVPROC __glewUniform1dv

    PFNGLUNIFORM2DPROC __glewUniform2d

    PFNGLUNIFORM2DVPROC __glewUniform2dv

    PFNGLUNIFORM3DPROC __glewUniform3d

    PFNGLUNIFORM3DVPROC __glewUniform3dv

    PFNGLUNIFORM4DPROC __glewUniform4d

    PFNGLUNIFORM4DVPROC __glewUniform4dv

    PFNGLUNIFORMMATRIX2DVPROC __glewUniformMatrix2dv

    PFNGLUNIFORMMATRIX2X3DVPROC __glewUniformMatrix2x3dv

    PFNGLUNIFORMMATRIX2X4DVPROC __glewUniformMatrix2x4dv

    PFNGLUNIFORMMATRIX3DVPROC __glewUniformMatrix3dv

    PFNGLUNIFORMMATRIX3X2DVPROC __glewUniformMatrix3x2dv

    PFNGLUNIFORMMATRIX3X4DVPROC __glewUniformMatrix3x4dv

    PFNGLUNIFORMMATRIX4DVPROC __glewUniformMatrix4dv

    PFNGLUNIFORMMATRIX4X2DVPROC __glewUniformMatrix4x2dv

    PFNGLUNIFORMMATRIX4X3DVPROC __glewUniformMatrix4x3dv

    PFNGLGETUNIFORMI64VARBPROC __glewGetUniformi64vARB

    PFNGLGETUNIFORMUI64VARBPROC __glewGetUniformui64vARB

    PFNGLGETNUNIFORMI64VARBPROC __glewGetnUniformi64vARB

    PFNGLGETNUNIFORMUI64VARBPROC __glewGetnUniformui64vARB

    PFNGLPROGRAMUNIFORM1I64ARBPROC __glewProgramUniform1i64ARB

    PFNGLPROGRAMUNIFORM1I64VARBPROC __glewProgramUniform1i64vARB

    PFNGLPROGRAMUNIFORM1UI64ARBPROC __glewProgramUniform1ui64ARB

    PFNGLPROGRAMUNIFORM1UI64VARBPROC __glewProgramUniform1ui64vARB

    PFNGLPROGRAMUNIFORM2I64ARBPROC __glewProgramUniform2i64ARB

    PFNGLPROGRAMUNIFORM2I64VARBPROC __glewProgramUniform2i64vARB

    PFNGLPROGRAMUNIFORM2UI64ARBPROC __glewProgramUniform2ui64ARB

    PFNGLPROGRAMUNIFORM2UI64VARBPROC __glewProgramUniform2ui64vARB

    PFNGLPROGRAMUNIFORM3I64ARBPROC __glewProgramUniform3i64ARB

    PFNGLPROGRAMUNIFORM3I64VARBPROC __glewProgramUniform3i64vARB

    PFNGLPROGRAMUNIFORM3UI64ARBPROC __glewProgramUniform3ui64ARB

    PFNGLPROGRAMUNIFORM3UI64VARBPROC __glewProgramUniform3ui64vARB

    PFNGLPROGRAMUNIFORM4I64ARBPROC __glewProgramUniform4i64ARB

    PFNGLPROGRAMUNIFORM4I64VARBPROC __glewProgramUniform4i64vARB

    PFNGLPROGRAMUNIFORM4UI64ARBPROC __glewProgramUniform4ui64ARB

    PFNGLPROGRAMUNIFORM4UI64VARBPROC __glewProgramUniform4ui64vARB

    PFNGLUNIFORM1I64ARBPROC __glewUniform1i64ARB

    PFNGLUNIFORM1I64VARBPROC __glewUniform1i64vARB

    PFNGLUNIFORM1UI64ARBPROC __glewUniform1ui64ARB

    PFNGLUNIFORM1UI64VARBPROC __glewUniform1ui64vARB

    PFNGLUNIFORM2I64ARBPROC __glewUniform2i64ARB

    PFNGLUNIFORM2I64VARBPROC __glewUniform2i64vARB

    PFNGLUNIFORM2UI64ARBPROC __glewUniform2ui64ARB

    PFNGLUNIFORM2UI64VARBPROC __glewUniform2ui64vARB

    PFNGLUNIFORM3I64ARBPROC __glewUniform3i64ARB

    PFNGLUNIFORM3I64VARBPROC __glewUniform3i64vARB

    PFNGLUNIFORM3UI64ARBPROC __glewUniform3ui64ARB

    PFNGLUNIFORM3UI64VARBPROC __glewUniform3ui64vARB

    PFNGLUNIFORM4I64ARBPROC __glewUniform4i64ARB

    PFNGLUNIFORM4I64VARBPROC __glewUniform4i64vARB

    PFNGLUNIFORM4UI64ARBPROC __glewUniform4ui64ARB

    PFNGLUNIFORM4UI64VARBPROC __glewUniform4ui64vARB

    PFNGLCOLORSUBTABLEPROC __glewColorSubTable

    PFNGLCOLORTABLEPROC __glewColorTable

    PFNGLCOLORTABLEPARAMETERFVPROC __glewColorTableParameterfv

    PFNGLCOLORTABLEPARAMETERIVPROC __glewColorTableParameteriv

    PFNGLCONVOLUTIONFILTER1DPROC __glewConvolutionFilter1D

    PFNGLCONVOLUTIONFILTER2DPROC __glewConvolutionFilter2D

    PFNGLCONVOLUTIONPARAMETERFPROC __glewConvolutionParameterf

    PFNGLCONVOLUTIONPARAMETERFVPROC __glewConvolutionParameterfv

    PFNGLCONVOLUTIONPARAMETERIPROC __glewConvolutionParameteri

    PFNGLCONVOLUTIONPARAMETERIVPROC __glewConvolutionParameteriv

    PFNGLCOPYCOLORSUBTABLEPROC __glewCopyColorSubTable

    PFNGLCOPYCOLORTABLEPROC __glewCopyColorTable

    PFNGLCOPYCONVOLUTIONFILTER1DPROC __glewCopyConvolutionFilter1D

    PFNGLCOPYCONVOLUTIONFILTER2DPROC __glewCopyConvolutionFilter2D

    PFNGLGETCOLORTABLEPROC __glewGetColorTable

    PFNGLGETCOLORTABLEPARAMETERFVPROC __glewGetColorTableParameterfv

    PFNGLGETCOLORTABLEPARAMETERIVPROC __glewGetColorTableParameteriv

    PFNGLGETCONVOLUTIONFILTERPROC __glewGetConvolutionFilter

    PFNGLGETCONVOLUTIONPARAMETERFVPROC __glewGetConvolutionParameterfv

    PFNGLGETCONVOLUTIONPARAMETERIVPROC __glewGetConvolutionParameteriv

    PFNGLGETHISTOGRAMPROC __glewGetHistogram

    PFNGLGETHISTOGRAMPARAMETERFVPROC __glewGetHistogramParameterfv

    PFNGLGETHISTOGRAMPARAMETERIVPROC __glewGetHistogramParameteriv

    PFNGLGETMINMAXPROC __glewGetMinmax

    PFNGLGETMINMAXPARAMETERFVPROC __glewGetMinmaxParameterfv

    PFNGLGETMINMAXPARAMETERIVPROC __glewGetMinmaxParameteriv

    PFNGLGETSEPARABLEFILTERPROC __glewGetSeparableFilter

    PFNGLHISTOGRAMPROC __glewHistogram

    PFNGLMINMAXPROC __glewMinmax

    PFNGLRESETHISTOGRAMPROC __glewResetHistogram

    PFNGLRESETMINMAXPROC __glewResetMinmax

    PFNGLSEPARABLEFILTER2DPROC __glewSeparableFilter2D

    PFNGLMULTIDRAWARRAYSINDIRECTCOUNTARBPROC __glewMultiDrawArraysIndirectCountARB

    PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTARBPROC __glewMultiDrawElementsIndirectCountARB

    PFNGLDRAWARRAYSINSTANCEDARBPROC __glewDrawArraysInstancedARB

    PFNGLDRAWELEMENTSINSTANCEDARBPROC __glewDrawElementsInstancedARB

    PFNGLVERTEXATTRIBDIVISORARBPROC __glewVertexAttribDivisorARB

    PFNGLGETINTERNALFORMATIVPROC __glewGetInternalformativ

    PFNGLGETINTERNALFORMATI64VPROC __glewGetInternalformati64v

    PFNGLINVALIDATEBUFFERDATAPROC __glewInvalidateBufferData

    PFNGLINVALIDATEBUFFERSUBDATAPROC __glewInvalidateBufferSubData

    PFNGLINVALIDATEFRAMEBUFFERPROC __glewInvalidateFramebuffer

    PFNGLINVALIDATESUBFRAMEBUFFERPROC __glewInvalidateSubFramebuffer

    PFNGLINVALIDATETEXIMAGEPROC __glewInvalidateTexImage

    PFNGLINVALIDATETEXSUBIMAGEPROC __glewInvalidateTexSubImage

    PFNGLFLUSHMAPPEDBUFFERRANGEPROC __glewFlushMappedBufferRange

    PFNGLMAPBUFFERRANGEPROC __glewMapBufferRange

    PFNGLCURRENTPALETTEMATRIXARBPROC __glewCurrentPaletteMatrixARB

    PFNGLMATRIXINDEXPOINTERARBPROC __glewMatrixIndexPointerARB

    PFNGLMATRIXINDEXUBVARBPROC __glewMatrixIndexubvARB

    PFNGLMATRIXINDEXUIVARBPROC __glewMatrixIndexuivARB

    PFNGLMATRIXINDEXUSVARBPROC __glewMatrixIndexusvARB

    PFNGLBINDBUFFERSBASEPROC __glewBindBuffersBase

    PFNGLBINDBUFFERSRANGEPROC __glewBindBuffersRange

    PFNGLBINDIMAGETEXTURESPROC __glewBindImageTextures

    PFNGLBINDSAMPLERSPROC __glewBindSamplers

    PFNGLBINDTEXTURESPROC __glewBindTextures

    PFNGLBINDVERTEXBUFFERSPROC __glewBindVertexBuffers

    PFNGLMULTIDRAWARRAYSINDIRECTPROC __glewMultiDrawArraysIndirect

    PFNGLMULTIDRAWELEMENTSINDIRECTPROC __glewMultiDrawElementsIndirect

    PFNGLSAMPLECOVERAGEARBPROC __glewSampleCoverageARB

    PFNGLACTIVETEXTUREARBPROC __glewActiveTextureARB

    PFNGLCLIENTACTIVETEXTUREARBPROC __glewClientActiveTextureARB

    PFNGLMULTITEXCOORD1DARBPROC __glewMultiTexCoord1dARB

    PFNGLMULTITEXCOORD1DVARBPROC __glewMultiTexCoord1dvARB

    PFNGLMULTITEXCOORD1FARBPROC __glewMultiTexCoord1fARB

    PFNGLMULTITEXCOORD1FVARBPROC __glewMultiTexCoord1fvARB

    PFNGLMULTITEXCOORD1IARBPROC __glewMultiTexCoord1iARB

    PFNGLMULTITEXCOORD1IVARBPROC __glewMultiTexCoord1ivARB

    PFNGLMULTITEXCOORD1SARBPROC __glewMultiTexCoord1sARB

    PFNGLMULTITEXCOORD1SVARBPROC __glewMultiTexCoord1svARB

    PFNGLMULTITEXCOORD2DARBPROC __glewMultiTexCoord2dARB

    PFNGLMULTITEXCOORD2DVARBPROC __glewMultiTexCoord2dvARB

    PFNGLMULTITEXCOORD2FARBPROC __glewMultiTexCoord2fARB

    PFNGLMULTITEXCOORD2FVARBPROC __glewMultiTexCoord2fvARB

    PFNGLMULTITEXCOORD2IARBPROC __glewMultiTexCoord2iARB

    PFNGLMULTITEXCOORD2IVARBPROC __glewMultiTexCoord2ivARB

    PFNGLMULTITEXCOORD2SARBPROC __glewMultiTexCoord2sARB

    PFNGLMULTITEXCOORD2SVARBPROC __glewMultiTexCoord2svARB

    PFNGLMULTITEXCOORD3DARBPROC __glewMultiTexCoord3dARB

    PFNGLMULTITEXCOORD3DVARBPROC __glewMultiTexCoord3dvARB

    PFNGLMULTITEXCOORD3FARBPROC __glewMultiTexCoord3fARB

    PFNGLMULTITEXCOORD3FVARBPROC __glewMultiTexCoord3fvARB

    PFNGLMULTITEXCOORD3IARBPROC __glewMultiTexCoord3iARB

    PFNGLMULTITEXCOORD3IVARBPROC __glewMultiTexCoord3ivARB

    PFNGLMULTITEXCOORD3SARBPROC __glewMultiTexCoord3sARB

    PFNGLMULTITEXCOORD3SVARBPROC __glewMultiTexCoord3svARB

    PFNGLMULTITEXCOORD4DARBPROC __glewMultiTexCoord4dARB

    PFNGLMULTITEXCOORD4DVARBPROC __glewMultiTexCoord4dvARB

    PFNGLMULTITEXCOORD4FARBPROC __glewMultiTexCoord4fARB

    PFNGLMULTITEXCOORD4FVARBPROC __glewMultiTexCoord4fvARB

    PFNGLMULTITEXCOORD4IARBPROC __glewMultiTexCoord4iARB

    PFNGLMULTITEXCOORD4IVARBPROC __glewMultiTexCoord4ivARB

    PFNGLMULTITEXCOORD4SARBPROC __glewMultiTexCoord4sARB

    PFNGLMULTITEXCOORD4SVARBPROC __glewMultiTexCoord4svARB

    PFNGLBEGINQUERYARBPROC __glewBeginQueryARB

    PFNGLDELETEQUERIESARBPROC __glewDeleteQueriesARB

    PFNGLENDQUERYARBPROC __glewEndQueryARB

    PFNGLGENQUERIESARBPROC __glewGenQueriesARB

    PFNGLGETQUERYOBJECTIVARBPROC __glewGetQueryObjectivARB

    PFNGLGETQUERYOBJECTUIVARBPROC __glewGetQueryObjectuivARB

    PFNGLGETQUERYIVARBPROC __glewGetQueryivARB

    PFNGLISQUERYARBPROC __glewIsQueryARB

    PFNGLMAXSHADERCOMPILERTHREADSARBPROC __glewMaxShaderCompilerThreadsARB

    PFNGLPOINTPARAMETERFARBPROC __glewPointParameterfARB

    PFNGLPOINTPARAMETERFVARBPROC __glewPointParameterfvARB

    PFNGLPOLYGONOFFSETCLAMPPROC __glewPolygonOffsetClamp

    PFNGLGETPROGRAMINTERFACEIVPROC __glewGetProgramInterfaceiv

    PFNGLGETPROGRAMRESOURCEINDEXPROC __glewGetProgramResourceIndex

    PFNGLGETPROGRAMRESOURCELOCATIONPROC __glewGetProgramResourceLocation

    PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC __glewGetProgramResourceLocationIndex

    PFNGLGETPROGRAMRESOURCENAMEPROC __glewGetProgramResourceName

    PFNGLGETPROGRAMRESOURCEIVPROC __glewGetProgramResourceiv

    PFNGLPROVOKINGVERTEXPROC __glewProvokingVertex

    PFNGLGETGRAPHICSRESETSTATUSARBPROC __glewGetGraphicsResetStatusARB

    PFNGLGETNCOLORTABLEARBPROC __glewGetnColorTableARB

    PFNGLGETNCOMPRESSEDTEXIMAGEARBPROC __glewGetnCompressedTexImageARB

    PFNGLGETNCONVOLUTIONFILTERARBPROC __glewGetnConvolutionFilterARB

    PFNGLGETNHISTOGRAMARBPROC __glewGetnHistogramARB

    PFNGLGETNMAPDVARBPROC __glewGetnMapdvARB

    PFNGLGETNMAPFVARBPROC __glewGetnMapfvARB

    PFNGLGETNMAPIVARBPROC __glewGetnMapivARB

    PFNGLGETNMINMAXARBPROC __glewGetnMinmaxARB

    PFNGLGETNPIXELMAPFVARBPROC __glewGetnPixelMapfvARB

    PFNGLGETNPIXELMAPUIVARBPROC __glewGetnPixelMapuivARB

    PFNGLGETNPIXELMAPUSVARBPROC __glewGetnPixelMapusvARB

    PFNGLGETNPOLYGONSTIPPLEARBPROC __glewGetnPolygonStippleARB

    PFNGLGETNSEPARABLEFILTERARBPROC __glewGetnSeparableFilterARB

    PFNGLGETNTEXIMAGEARBPROC __glewGetnTexImageARB

    PFNGLGETNUNIFORMDVARBPROC __glewGetnUniformdvARB

    PFNGLGETNUNIFORMFVARBPROC __glewGetnUniformfvARB

    PFNGLGETNUNIFORMIVARBPROC __glewGetnUniformivARB

    PFNGLGETNUNIFORMUIVARBPROC __glewGetnUniformuivARB

    PFNGLREADNPIXELSARBPROC __glewReadnPixelsARB

    PFNGLFRAMEBUFFERSAMPLELOCATIONSFVARBPROC __glewFramebufferSampleLocationsfvARB

    PFNGLNAMEDFRAMEBUFFERSAMPLELOCATIONSFVARBPROC __glewNamedFramebufferSampleLocationsfvARB

    PFNGLMINSAMPLESHADINGARBPROC __glewMinSampleShadingARB

    PFNGLBINDSAMPLERPROC __glewBindSampler

    PFNGLDELETESAMPLERSPROC __glewDeleteSamplers

    PFNGLGENSAMPLERSPROC __glewGenSamplers

    PFNGLGETSAMPLERPARAMETERIIVPROC __glewGetSamplerParameterIiv

    PFNGLGETSAMPLERPARAMETERIUIVPROC __glewGetSamplerParameterIuiv

    PFNGLGETSAMPLERPARAMETERFVPROC __glewGetSamplerParameterfv

    PFNGLGETSAMPLERPARAMETERIVPROC __glewGetSamplerParameteriv

    PFNGLISSAMPLERPROC __glewIsSampler

    PFNGLSAMPLERPARAMETERIIVPROC __glewSamplerParameterIiv

    PFNGLSAMPLERPARAMETERIUIVPROC __glewSamplerParameterIuiv

    PFNGLSAMPLERPARAMETERFPROC __glewSamplerParameterf

    PFNGLSAMPLERPARAMETERFVPROC __glewSamplerParameterfv

    PFNGLSAMPLERPARAMETERIPROC __glewSamplerParameteri

    PFNGLSAMPLERPARAMETERIVPROC __glewSamplerParameteriv

    PFNGLACTIVESHADERPROGRAMPROC __glewActiveShaderProgram

    PFNGLBINDPROGRAMPIPELINEPROC __glewBindProgramPipeline

    PFNGLCREATESHADERPROGRAMVPROC __glewCreateShaderProgramv

    PFNGLDELETEPROGRAMPIPELINESPROC __glewDeleteProgramPipelines

    PFNGLGENPROGRAMPIPELINESPROC __glewGenProgramPipelines

    PFNGLGETPROGRAMPIPELINEINFOLOGPROC __glewGetProgramPipelineInfoLog

    PFNGLGETPROGRAMPIPELINEIVPROC __glewGetProgramPipelineiv

    PFNGLISPROGRAMPIPELINEPROC __glewIsProgramPipeline

    PFNGLPROGRAMUNIFORM1DPROC __glewProgramUniform1d

    PFNGLPROGRAMUNIFORM1DVPROC __glewProgramUniform1dv

    PFNGLPROGRAMUNIFORM1FPROC __glewProgramUniform1f

    PFNGLPROGRAMUNIFORM1FVPROC __glewProgramUniform1fv

    PFNGLPROGRAMUNIFORM1IPROC __glewProgramUniform1i

    PFNGLPROGRAMUNIFORM1IVPROC __glewProgramUniform1iv

    PFNGLPROGRAMUNIFORM1UIPROC __glewProgramUniform1ui

    PFNGLPROGRAMUNIFORM1UIVPROC __glewProgramUniform1uiv

    PFNGLPROGRAMUNIFORM2DPROC __glewProgramUniform2d

    PFNGLPROGRAMUNIFORM2DVPROC __glewProgramUniform2dv

    PFNGLPROGRAMUNIFORM2FPROC __glewProgramUniform2f

    PFNGLPROGRAMUNIFORM2FVPROC __glewProgramUniform2fv

    PFNGLPROGRAMUNIFORM2IPROC __glewProgramUniform2i

    PFNGLPROGRAMUNIFORM2IVPROC __glewProgramUniform2iv

    PFNGLPROGRAMUNIFORM2UIPROC __glewProgramUniform2ui

    PFNGLPROGRAMUNIFORM2UIVPROC __glewProgramUniform2uiv

    PFNGLPROGRAMUNIFORM3DPROC __glewProgramUniform3d

    PFNGLPROGRAMUNIFORM3DVPROC __glewProgramUniform3dv

    PFNGLPROGRAMUNIFORM3FPROC __glewProgramUniform3f

    PFNGLPROGRAMUNIFORM3FVPROC __glewProgramUniform3fv

    PFNGLPROGRAMUNIFORM3IPROC __glewProgramUniform3i

    PFNGLPROGRAMUNIFORM3IVPROC __glewProgramUniform3iv

    PFNGLPROGRAMUNIFORM3UIPROC __glewProgramUniform3ui

    PFNGLPROGRAMUNIFORM3UIVPROC __glewProgramUniform3uiv

    PFNGLPROGRAMUNIFORM4DPROC __glewProgramUniform4d

    PFNGLPROGRAMUNIFORM4DVPROC __glewProgramUniform4dv

    PFNGLPROGRAMUNIFORM4FPROC __glewProgramUniform4f

    PFNGLPROGRAMUNIFORM4FVPROC __glewProgramUniform4fv

    PFNGLPROGRAMUNIFORM4IPROC __glewProgramUniform4i

    PFNGLPROGRAMUNIFORM4IVPROC __glewProgramUniform4iv

    PFNGLPROGRAMUNIFORM4UIPROC __glewProgramUniform4ui

    PFNGLPROGRAMUNIFORM4UIVPROC __glewProgramUniform4uiv

    PFNGLPROGRAMUNIFORMMATRIX2DVPROC __glewProgramUniformMatrix2dv

    PFNGLPROGRAMUNIFORMMATRIX2FVPROC __glewProgramUniformMatrix2fv

    PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC __glewProgramUniformMatrix2x3dv

    PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC __glewProgramUniformMatrix2x3fv

    PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC __glewProgramUniformMatrix2x4dv

    PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC __glewProgramUniformMatrix2x4fv

    PFNGLPROGRAMUNIFORMMATRIX3DVPROC __glewProgramUniformMatrix3dv

    PFNGLPROGRAMUNIFORMMATRIX3FVPROC __glewProgramUniformMatrix3fv

    PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC __glewProgramUniformMatrix3x2dv

    PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC __glewProgramUniformMatrix3x2fv

    PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC __glewProgramUniformMatrix3x4dv

    PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC __glewProgramUniformMatrix3x4fv

    PFNGLPROGRAMUNIFORMMATRIX4DVPROC __glewProgramUniformMatrix4dv

    PFNGLPROGRAMUNIFORMMATRIX4FVPROC __glewProgramUniformMatrix4fv

    PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC __glewProgramUniformMatrix4x2dv

    PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC __glewProgramUniformMatrix4x2fv

    PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC __glewProgramUniformMatrix4x3dv

    PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC __glewProgramUniformMatrix4x3fv

    PFNGLUSEPROGRAMSTAGESPROC __glewUseProgramStages

    PFNGLVALIDATEPROGRAMPIPELINEPROC __glewValidateProgramPipeline

    PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC __glewGetActiveAtomicCounterBufferiv

    PFNGLBINDIMAGETEXTUREPROC __glewBindImageTexture

    PFNGLMEMORYBARRIERPROC __glewMemoryBarrier

    PFNGLATTACHOBJECTARBPROC __glewAttachObjectARB

    PFNGLCOMPILESHADERARBPROC __glewCompileShaderARB

    PFNGLCREATEPROGRAMOBJECTARBPROC __glewCreateProgramObjectARB

    PFNGLCREATESHADEROBJECTARBPROC __glewCreateShaderObjectARB

    PFNGLDELETEOBJECTARBPROC __glewDeleteObjectARB

    PFNGLDETACHOBJECTARBPROC __glewDetachObjectARB

    PFNGLGETACTIVEUNIFORMARBPROC __glewGetActiveUniformARB

    PFNGLGETATTACHEDOBJECTSARBPROC __glewGetAttachedObjectsARB

    PFNGLGETHANDLEARBPROC __glewGetHandleARB

    PFNGLGETINFOLOGARBPROC __glewGetInfoLogARB

    PFNGLGETOBJECTPARAMETERFVARBPROC __glewGetObjectParameterfvARB

    PFNGLGETOBJECTPARAMETERIVARBPROC __glewGetObjectParameterivARB

    PFNGLGETSHADERSOURCEARBPROC __glewGetShaderSourceARB

    PFNGLGETUNIFORMLOCATIONARBPROC __glewGetUniformLocationARB

    PFNGLGETUNIFORMFVARBPROC __glewGetUniformfvARB

    PFNGLGETUNIFORMIVARBPROC __glewGetUniformivARB

    PFNGLLINKPROGRAMARBPROC __glewLinkProgramARB

    PFNGLSHADERSOURCEARBPROC __glewShaderSourceARB

    PFNGLUNIFORM1FARBPROC __glewUniform1fARB

    PFNGLUNIFORM1FVARBPROC __glewUniform1fvARB

    PFNGLUNIFORM1IARBPROC __glewUniform1iARB

    PFNGLUNIFORM1IVARBPROC __glewUniform1ivARB

    PFNGLUNIFORM2FARBPROC __glewUniform2fARB

    PFNGLUNIFORM2FVARBPROC __glewUniform2fvARB

    PFNGLUNIFORM2IARBPROC __glewUniform2iARB

    PFNGLUNIFORM2IVARBPROC __glewUniform2ivARB

    PFNGLUNIFORM3FARBPROC __glewUniform3fARB

    PFNGLUNIFORM3FVARBPROC __glewUniform3fvARB

    PFNGLUNIFORM3IARBPROC __glewUniform3iARB

    PFNGLUNIFORM3IVARBPROC __glewUniform3ivARB

    PFNGLUNIFORM4FARBPROC __glewUniform4fARB

    PFNGLUNIFORM4FVARBPROC __glewUniform4fvARB

    PFNGLUNIFORM4IARBPROC __glewUniform4iARB

    PFNGLUNIFORM4IVARBPROC __glewUniform4ivARB

    PFNGLUNIFORMMATRIX2FVARBPROC __glewUniformMatrix2fvARB

    PFNGLUNIFORMMATRIX3FVARBPROC __glewUniformMatrix3fvARB

    PFNGLUNIFORMMATRIX4FVARBPROC __glewUniformMatrix4fvARB

    PFNGLUSEPROGRAMOBJECTARBPROC __glewUseProgramObjectARB

    PFNGLVALIDATEPROGRAMARBPROC __glewValidateProgramARB

    PFNGLSHADERSTORAGEBLOCKBINDINGPROC __glewShaderStorageBlockBinding

    PFNGLGETACTIVESUBROUTINENAMEPROC __glewGetActiveSubroutineName

    PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC __glewGetActiveSubroutineUniformName

    PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC __glewGetActiveSubroutineUniformiv

    PFNGLGETPROGRAMSTAGEIVPROC __glewGetProgramStageiv

    PFNGLGETSUBROUTINEINDEXPROC __glewGetSubroutineIndex

    PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC __glewGetSubroutineUniformLocation

    PFNGLGETUNIFORMSUBROUTINEUIVPROC __glewGetUniformSubroutineuiv

    PFNGLUNIFORMSUBROUTINESUIVPROC __glewUniformSubroutinesuiv

    PFNGLCOMPILESHADERINCLUDEARBPROC __glewCompileShaderIncludeARB

    PFNGLDELETENAMEDSTRINGARBPROC __glewDeleteNamedStringARB

    PFNGLGETNAMEDSTRINGARBPROC __glewGetNamedStringARB

    PFNGLGETNAMEDSTRINGIVARBPROC __glewGetNamedStringivARB

    PFNGLISNAMEDSTRINGARBPROC __glewIsNamedStringARB

    PFNGLNAMEDSTRINGARBPROC __glewNamedStringARB

    PFNGLBUFFERPAGECOMMITMENTARBPROC __glewBufferPageCommitmentARB

    PFNGLTEXPAGECOMMITMENTARBPROC __glewTexPageCommitmentARB

    PFNGLCLIENTWAITSYNCPROC __glewClientWaitSync

    PFNGLDELETESYNCPROC __glewDeleteSync

    PFNGLFENCESYNCPROC __glewFenceSync

    PFNGLGETINTEGER64VPROC __glewGetInteger64v

    PFNGLGETSYNCIVPROC __glewGetSynciv

    PFNGLISSYNCPROC __glewIsSync

    PFNGLWAITSYNCPROC __glewWaitSync

    PFNGLPATCHPARAMETERFVPROC __glewPatchParameterfv

    PFNGLPATCHPARAMETERIPROC __glewPatchParameteri

    PFNGLTEXTUREBARRIERPROC __glewTextureBarrier

    PFNGLTEXBUFFERARBPROC __glewTexBufferARB

    PFNGLTEXBUFFERRANGEPROC __glewTexBufferRange

    PFNGLTEXTUREBUFFERRANGEEXTPROC __glewTextureBufferRangeEXT

    PFNGLCOMPRESSEDTEXIMAGE1DARBPROC __glewCompressedTexImage1DARB

    PFNGLCOMPRESSEDTEXIMAGE2DARBPROC __glewCompressedTexImage2DARB

    PFNGLCOMPRESSEDTEXIMAGE3DARBPROC __glewCompressedTexImage3DARB

    PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC __glewCompressedTexSubImage1DARB

    PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC __glewCompressedTexSubImage2DARB

    PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC __glewCompressedTexSubImage3DARB

    PFNGLGETCOMPRESSEDTEXIMAGEARBPROC __glewGetCompressedTexImageARB

    PFNGLGETMULTISAMPLEFVPROC __glewGetMultisamplefv

    PFNGLSAMPLEMASKIPROC __glewSampleMaski

    PFNGLTEXIMAGE2DMULTISAMPLEPROC __glewTexImage2DMultisample

    PFNGLTEXIMAGE3DMULTISAMPLEPROC __glewTexImage3DMultisample

    PFNGLTEXSTORAGE1DPROC __glewTexStorage1D

    PFNGLTEXSTORAGE2DPROC __glewTexStorage2D

    PFNGLTEXSTORAGE3DPROC __glewTexStorage3D

    PFNGLTEXSTORAGE2DMULTISAMPLEPROC __glewTexStorage2DMultisample

    PFNGLTEXSTORAGE3DMULTISAMPLEPROC __glewTexStorage3DMultisample

    PFNGLTEXTURESTORAGE2DMULTISAMPLEEXTPROC __glewTextureStorage2DMultisampleEXT

    PFNGLTEXTURESTORAGE3DMULTISAMPLEEXTPROC __glewTextureStorage3DMultisampleEXT

    PFNGLTEXTUREVIEWPROC __glewTextureView

    PFNGLGETQUERYOBJECTI64VPROC __glewGetQueryObjecti64v

    PFNGLGETQUERYOBJECTUI64VPROC __glewGetQueryObjectui64v

    PFNGLQUERYCOUNTERPROC __glewQueryCounter

    PFNGLBINDTRANSFORMFEEDBACKPROC __glewBindTransformFeedback

    PFNGLDELETETRANSFORMFEEDBACKSPROC __glewDeleteTransformFeedbacks

    PFNGLDRAWTRANSFORMFEEDBACKPROC __glewDrawTransformFeedback

    PFNGLGENTRANSFORMFEEDBACKSPROC __glewGenTransformFeedbacks

    PFNGLISTRANSFORMFEEDBACKPROC __glewIsTransformFeedback

    PFNGLPAUSETRANSFORMFEEDBACKPROC __glewPauseTransformFeedback

    PFNGLRESUMETRANSFORMFEEDBACKPROC __glewResumeTransformFeedback

    PFNGLBEGINQUERYINDEXEDPROC __glewBeginQueryIndexed

    PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC __glewDrawTransformFeedbackStream

    PFNGLENDQUERYINDEXEDPROC __glewEndQueryIndexed

    PFNGLGETQUERYINDEXEDIVPROC __glewGetQueryIndexediv

    PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC __glewDrawTransformFeedbackInstanced

    PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC __glewDrawTransformFeedbackStreamInstanced

    PFNGLLOADTRANSPOSEMATRIXDARBPROC __glewLoadTransposeMatrixdARB

    PFNGLLOADTRANSPOSEMATRIXFARBPROC __glewLoadTransposeMatrixfARB

    PFNGLMULTTRANSPOSEMATRIXDARBPROC __glewMultTransposeMatrixdARB

    PFNGLMULTTRANSPOSEMATRIXFARBPROC __glewMultTransposeMatrixfARB

    PFNGLBINDBUFFERBASEPROC __glewBindBufferBase

    PFNGLBINDBUFFERRANGEPROC __glewBindBufferRange

    PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC __glewGetActiveUniformBlockName

    PFNGLGETACTIVEUNIFORMBLOCKIVPROC __glewGetActiveUniformBlockiv

    PFNGLGETACTIVEUNIFORMNAMEPROC __glewGetActiveUniformName

    PFNGLGETACTIVEUNIFORMSIVPROC __glewGetActiveUniformsiv

    PFNGLGETINTEGERI_VPROC __glewGetIntegeri_v

    PFNGLGETUNIFORMBLOCKINDEXPROC __glewGetUniformBlockIndex

    PFNGLGETUNIFORMINDICESPROC __glewGetUniformIndices

    PFNGLUNIFORMBLOCKBINDINGPROC __glewUniformBlockBinding

    PFNGLBINDVERTEXARRAYPROC __glewBindVertexArray

    PFNGLDELETEVERTEXARRAYSPROC __glewDeleteVertexArrays

    PFNGLGENVERTEXARRAYSPROC __glewGenVertexArrays

    PFNGLISVERTEXARRAYPROC __glewIsVertexArray

    PFNGLGETVERTEXATTRIBLDVPROC __glewGetVertexAttribLdv

    PFNGLVERTEXATTRIBL1DPROC __glewVertexAttribL1d

    PFNGLVERTEXATTRIBL1DVPROC __glewVertexAttribL1dv

    PFNGLVERTEXATTRIBL2DPROC __glewVertexAttribL2d

    PFNGLVERTEXATTRIBL2DVPROC __glewVertexAttribL2dv

    PFNGLVERTEXATTRIBL3DPROC __glewVertexAttribL3d

    PFNGLVERTEXATTRIBL3DVPROC __glewVertexAttribL3dv

    PFNGLVERTEXATTRIBL4DPROC __glewVertexAttribL4d

    PFNGLVERTEXATTRIBL4DVPROC __glewVertexAttribL4dv

    PFNGLVERTEXATTRIBLPOINTERPROC __glewVertexAttribLPointer

    PFNGLBINDVERTEXBUFFERPROC __glewBindVertexBuffer

    PFNGLVERTEXARRAYBINDVERTEXBUFFEREXTPROC __glewVertexArrayBindVertexBufferEXT

    PFNGLVERTEXARRAYVERTEXATTRIBBINDINGEXTPROC __glewVertexArrayVertexAttribBindingEXT

    PFNGLVERTEXARRAYVERTEXATTRIBFORMATEXTPROC __glewVertexArrayVertexAttribFormatEXT

    PFNGLVERTEXARRAYVERTEXATTRIBIFORMATEXTPROC __glewVertexArrayVertexAttribIFormatEXT

    PFNGLVERTEXARRAYVERTEXATTRIBLFORMATEXTPROC __glewVertexArrayVertexAttribLFormatEXT

    PFNGLVERTEXARRAYVERTEXBINDINGDIVISOREXTPROC __glewVertexArrayVertexBindingDivisorEXT

    PFNGLVERTEXATTRIBBINDINGPROC __glewVertexAttribBinding

    PFNGLVERTEXATTRIBFORMATPROC __glewVertexAttribFormat

    PFNGLVERTEXATTRIBIFORMATPROC __glewVertexAttribIFormat

    PFNGLVERTEXATTRIBLFORMATPROC __glewVertexAttribLFormat

    PFNGLVERTEXBINDINGDIVISORPROC __glewVertexBindingDivisor

    PFNGLVERTEXBLENDARBPROC __glewVertexBlendARB

    PFNGLWEIGHTPOINTERARBPROC __glewWeightPointerARB

    PFNGLWEIGHTBVARBPROC __glewWeightbvARB

    PFNGLWEIGHTDVARBPROC __glewWeightdvARB

    PFNGLWEIGHTFVARBPROC __glewWeightfvARB

    PFNGLWEIGHTIVARBPROC __glewWeightivARB

    PFNGLWEIGHTSVARBPROC __glewWeightsvARB

    PFNGLWEIGHTUBVARBPROC __glewWeightubvARB

    PFNGLWEIGHTUIVARBPROC __glewWeightuivARB

    PFNGLWEIGHTUSVARBPROC __glewWeightusvARB

    PFNGLBINDBUFFERARBPROC __glewBindBufferARB

    PFNGLBUFFERDATAARBPROC __glewBufferDataARB

    PFNGLBUFFERSUBDATAARBPROC __glewBufferSubDataARB

    PFNGLDELETEBUFFERSARBPROC __glewDeleteBuffersARB

    PFNGLGENBUFFERSARBPROC __glewGenBuffersARB

    PFNGLGETBUFFERPARAMETERIVARBPROC __glewGetBufferParameterivARB

    PFNGLGETBUFFERPOINTERVARBPROC __glewGetBufferPointervARB

    PFNGLGETBUFFERSUBDATAARBPROC __glewGetBufferSubDataARB

    PFNGLISBUFFERARBPROC __glewIsBufferARB

    PFNGLMAPBUFFERARBPROC __glewMapBufferARB

    PFNGLUNMAPBUFFERARBPROC __glewUnmapBufferARB

    PFNGLBINDPROGRAMARBPROC __glewBindProgramARB

    PFNGLDELETEPROGRAMSARBPROC __glewDeleteProgramsARB

    PFNGLDISABLEVERTEXATTRIBARRAYARBPROC __glewDisableVertexAttribArrayARB

    PFNGLENABLEVERTEXATTRIBARRAYARBPROC __glewEnableVertexAttribArrayARB

    PFNGLGENPROGRAMSARBPROC __glewGenProgramsARB

    PFNGLGETPROGRAMENVPARAMETERDVARBPROC __glewGetProgramEnvParameterdvARB

    PFNGLGETPROGRAMENVPARAMETERFVARBPROC __glewGetProgramEnvParameterfvARB

    PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC __glewGetProgramLocalParameterdvARB

    PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC __glewGetProgramLocalParameterfvARB

    PFNGLGETPROGRAMSTRINGARBPROC __glewGetProgramStringARB

    PFNGLGETPROGRAMIVARBPROC __glewGetProgramivARB

    PFNGLGETVERTEXATTRIBPOINTERVARBPROC __glewGetVertexAttribPointervARB

    PFNGLGETVERTEXATTRIBDVARBPROC __glewGetVertexAttribdvARB

    PFNGLGETVERTEXATTRIBFVARBPROC __glewGetVertexAttribfvARB

    PFNGLGETVERTEXATTRIBIVARBPROC __glewGetVertexAttribivARB

    PFNGLISPROGRAMARBPROC __glewIsProgramARB

    PFNGLPROGRAMENVPARAMETER4DARBPROC __glewProgramEnvParameter4dARB

    PFNGLPROGRAMENVPARAMETER4DVARBPROC __glewProgramEnvParameter4dvARB

    PFNGLPROGRAMENVPARAMETER4FARBPROC __glewProgramEnvParameter4fARB

    PFNGLPROGRAMENVPARAMETER4FVARBPROC __glewProgramEnvParameter4fvARB

    PFNGLPROGRAMLOCALPARAMETER4DARBPROC __glewProgramLocalParameter4dARB

    PFNGLPROGRAMLOCALPARAMETER4DVARBPROC __glewProgramLocalParameter4dvARB

    PFNGLPROGRAMLOCALPARAMETER4FARBPROC __glewProgramLocalParameter4fARB

    PFNGLPROGRAMLOCALPARAMETER4FVARBPROC __glewProgramLocalParameter4fvARB

    PFNGLPROGRAMSTRINGARBPROC __glewProgramStringARB

    PFNGLVERTEXATTRIB1DARBPROC __glewVertexAttrib1dARB

    PFNGLVERTEXATTRIB1DVARBPROC __glewVertexAttrib1dvARB

    PFNGLVERTEXATTRIB1FARBPROC __glewVertexAttrib1fARB

    PFNGLVERTEXATTRIB1FVARBPROC __glewVertexAttrib1fvARB

    PFNGLVERTEXATTRIB1SARBPROC __glewVertexAttrib1sARB

    PFNGLVERTEXATTRIB1SVARBPROC __glewVertexAttrib1svARB

    PFNGLVERTEXATTRIB2DARBPROC __glewVertexAttrib2dARB

    PFNGLVERTEXATTRIB2DVARBPROC __glewVertexAttrib2dvARB

    PFNGLVERTEXATTRIB2FARBPROC __glewVertexAttrib2fARB

    PFNGLVERTEXATTRIB2FVARBPROC __glewVertexAttrib2fvARB

    PFNGLVERTEXATTRIB2SARBPROC __glewVertexAttrib2sARB

    PFNGLVERTEXATTRIB2SVARBPROC __glewVertexAttrib2svARB

    PFNGLVERTEXATTRIB3DARBPROC __glewVertexAttrib3dARB

    PFNGLVERTEXATTRIB3DVARBPROC __glewVertexAttrib3dvARB

    PFNGLVERTEXATTRIB3FARBPROC __glewVertexAttrib3fARB

    PFNGLVERTEXATTRIB3FVARBPROC __glewVertexAttrib3fvARB

    PFNGLVERTEXATTRIB3SARBPROC __glewVertexAttrib3sARB

    PFNGLVERTEXATTRIB3SVARBPROC __glewVertexAttrib3svARB

    PFNGLVERTEXATTRIB4NBVARBPROC __glewVertexAttrib4NbvARB

    PFNGLVERTEXATTRIB4NIVARBPROC __glewVertexAttrib4NivARB

    PFNGLVERTEXATTRIB4NSVARBPROC __glewVertexAttrib4NsvARB

    PFNGLVERTEXATTRIB4NUBARBPROC __glewVertexAttrib4NubARB

    PFNGLVERTEXATTRIB4NUBVARBPROC __glewVertexAttrib4NubvARB

    PFNGLVERTEXATTRIB4NUIVARBPROC __glewVertexAttrib4NuivARB

    PFNGLVERTEXATTRIB4NUSVARBPROC __glewVertexAttrib4NusvARB

    PFNGLVERTEXATTRIB4BVARBPROC __glewVertexAttrib4bvARB

    PFNGLVERTEXATTRIB4DARBPROC __glewVertexAttrib4dARB

    PFNGLVERTEXATTRIB4DVARBPROC __glewVertexAttrib4dvARB

    PFNGLVERTEXATTRIB4FARBPROC __glewVertexAttrib4fARB

    PFNGLVERTEXATTRIB4FVARBPROC __glewVertexAttrib4fvARB

    PFNGLVERTEXATTRIB4IVARBPROC __glewVertexAttrib4ivARB

    PFNGLVERTEXATTRIB4SARBPROC __glewVertexAttrib4sARB

    PFNGLVERTEXATTRIB4SVARBPROC __glewVertexAttrib4svARB

    PFNGLVERTEXATTRIB4UBVARBPROC __glewVertexAttrib4ubvARB

    PFNGLVERTEXATTRIB4UIVARBPROC __glewVertexAttrib4uivARB

    PFNGLVERTEXATTRIB4USVARBPROC __glewVertexAttrib4usvARB

    PFNGLVERTEXATTRIBPOINTERARBPROC __glewVertexAttribPointerARB

    PFNGLBINDATTRIBLOCATIONARBPROC __glewBindAttribLocationARB

    PFNGLGETACTIVEATTRIBARBPROC __glewGetActiveAttribARB

    PFNGLGETATTRIBLOCATIONARBPROC __glewGetAttribLocationARB

    PFNGLCOLORP3UIPROC __glewColorP3ui

    PFNGLCOLORP3UIVPROC __glewColorP3uiv

    PFNGLCOLORP4UIPROC __glewColorP4ui

    PFNGLCOLORP4UIVPROC __glewColorP4uiv

    PFNGLMULTITEXCOORDP1UIPROC __glewMultiTexCoordP1ui

    PFNGLMULTITEXCOORDP1UIVPROC __glewMultiTexCoordP1uiv

    PFNGLMULTITEXCOORDP2UIPROC __glewMultiTexCoordP2ui

    PFNGLMULTITEXCOORDP2UIVPROC __glewMultiTexCoordP2uiv

    PFNGLMULTITEXCOORDP3UIPROC __glewMultiTexCoordP3ui

    PFNGLMULTITEXCOORDP3UIVPROC __glewMultiTexCoordP3uiv

    PFNGLMULTITEXCOORDP4UIPROC __glewMultiTexCoordP4ui

    PFNGLMULTITEXCOORDP4UIVPROC __glewMultiTexCoordP4uiv

    PFNGLNORMALP3UIPROC __glewNormalP3ui

    PFNGLNORMALP3UIVPROC __glewNormalP3uiv

    PFNGLSECONDARYCOLORP3UIPROC __glewSecondaryColorP3ui

    PFNGLSECONDARYCOLORP3UIVPROC __glewSecondaryColorP3uiv

    PFNGLTEXCOORDP1UIPROC __glewTexCoordP1ui

    PFNGLTEXCOORDP1UIVPROC __glewTexCoordP1uiv

    PFNGLTEXCOORDP2UIPROC __glewTexCoordP2ui

    PFNGLTEXCOORDP2UIVPROC __glewTexCoordP2uiv

    PFNGLTEXCOORDP3UIPROC __glewTexCoordP3ui

    PFNGLTEXCOORDP3UIVPROC __glewTexCoordP3uiv

    PFNGLTEXCOORDP4UIPROC __glewTexCoordP4ui

    PFNGLTEXCOORDP4UIVPROC __glewTexCoordP4uiv

    PFNGLVERTEXATTRIBP1UIPROC __glewVertexAttribP1ui

    PFNGLVERTEXATTRIBP1UIVPROC __glewVertexAttribP1uiv

    PFNGLVERTEXATTRIBP2UIPROC __glewVertexAttribP2ui

    PFNGLVERTEXATTRIBP2UIVPROC __glewVertexAttribP2uiv

    PFNGLVERTEXATTRIBP3UIPROC __glewVertexAttribP3ui

    PFNGLVERTEXATTRIBP3UIVPROC __glewVertexAttribP3uiv

    PFNGLVERTEXATTRIBP4UIPROC __glewVertexAttribP4ui

    PFNGLVERTEXATTRIBP4UIVPROC __glewVertexAttribP4uiv

    PFNGLVERTEXP2UIPROC __glewVertexP2ui

    PFNGLVERTEXP2UIVPROC __glewVertexP2uiv

    PFNGLVERTEXP3UIPROC __glewVertexP3ui

    PFNGLVERTEXP3UIVPROC __glewVertexP3uiv

    PFNGLVERTEXP4UIPROC __glewVertexP4ui

    PFNGLVERTEXP4UIVPROC __glewVertexP4uiv

    PFNGLDEPTHRANGEARRAYVPROC __glewDepthRangeArrayv

    PFNGLDEPTHRANGEINDEXEDPROC __glewDepthRangeIndexed

    PFNGLGETDOUBLEI_VPROC __glewGetDoublei_v

    PFNGLGETFLOATI_VPROC __glewGetFloati_v

    PFNGLSCISSORARRAYVPROC __glewScissorArrayv

    PFNGLSCISSORINDEXEDPROC __glewScissorIndexed

    PFNGLSCISSORINDEXEDVPROC __glewScissorIndexedv

    PFNGLVIEWPORTARRAYVPROC __glewViewportArrayv

    PFNGLVIEWPORTINDEXEDFPROC __glewViewportIndexedf

    PFNGLVIEWPORTINDEXEDFVPROC __glewViewportIndexedfv

    PFNGLWINDOWPOS2DARBPROC __glewWindowPos2dARB

    PFNGLWINDOWPOS2DVARBPROC __glewWindowPos2dvARB

    PFNGLWINDOWPOS2FARBPROC __glewWindowPos2fARB

    PFNGLWINDOWPOS2FVARBPROC __glewWindowPos2fvARB

    PFNGLWINDOWPOS2IARBPROC __glewWindowPos2iARB

    PFNGLWINDOWPOS2IVARBPROC __glewWindowPos2ivARB

    PFNGLWINDOWPOS2SARBPROC __glewWindowPos2sARB

    PFNGLWINDOWPOS2SVARBPROC __glewWindowPos2svARB

    PFNGLWINDOWPOS3DARBPROC __glewWindowPos3dARB

    PFNGLWINDOWPOS3DVARBPROC __glewWindowPos3dvARB

    PFNGLWINDOWPOS3FARBPROC __glewWindowPos3fARB

    PFNGLWINDOWPOS3FVARBPROC __glewWindowPos3fvARB

    PFNGLWINDOWPOS3IARBPROC __glewWindowPos3iARB

    PFNGLWINDOWPOS3IVARBPROC __glewWindowPos3ivARB

    PFNGLWINDOWPOS3SARBPROC __glewWindowPos3sARB

    PFNGLWINDOWPOS3SVARBPROC __glewWindowPos3svARB

    PFNGLDRAWBUFFERSATIPROC __glewDrawBuffersATI

    PFNGLDRAWELEMENTARRAYATIPROC __glewDrawElementArrayATI

    PFNGLDRAWRANGEELEMENTARRAYATIPROC __glewDrawRangeElementArrayATI

    PFNGLELEMENTPOINTERATIPROC __glewElementPointerATI

    PFNGLGETTEXBUMPPARAMETERFVATIPROC __glewGetTexBumpParameterfvATI

    PFNGLGETTEXBUMPPARAMETERIVATIPROC __glewGetTexBumpParameterivATI

    PFNGLTEXBUMPPARAMETERFVATIPROC __glewTexBumpParameterfvATI

    PFNGLTEXBUMPPARAMETERIVATIPROC __glewTexBumpParameterivATI

    PFNGLALPHAFRAGMENTOP1ATIPROC __glewAlphaFragmentOp1ATI

    PFNGLALPHAFRAGMENTOP2ATIPROC __glewAlphaFragmentOp2ATI

    PFNGLALPHAFRAGMENTOP3ATIPROC __glewAlphaFragmentOp3ATI

    PFNGLBEGINFRAGMENTSHADERATIPROC __glewBeginFragmentShaderATI

    PFNGLBINDFRAGMENTSHADERATIPROC __glewBindFragmentShaderATI

    PFNGLCOLORFRAGMENTOP1ATIPROC __glewColorFragmentOp1ATI

    PFNGLCOLORFRAGMENTOP2ATIPROC __glewColorFragmentOp2ATI

    PFNGLCOLORFRAGMENTOP3ATIPROC __glewColorFragmentOp3ATI

    PFNGLDELETEFRAGMENTSHADERATIPROC __glewDeleteFragmentShaderATI

    PFNGLENDFRAGMENTSHADERATIPROC __glewEndFragmentShaderATI

    PFNGLGENFRAGMENTSHADERSATIPROC __glewGenFragmentShadersATI

    PFNGLPASSTEXCOORDATIPROC __glewPassTexCoordATI

    PFNGLSAMPLEMAPATIPROC __glewSampleMapATI

    PFNGLSETFRAGMENTSHADERCONSTANTATIPROC __glewSetFragmentShaderConstantATI

    PFNGLMAPOBJECTBUFFERATIPROC __glewMapObjectBufferATI

    PFNGLUNMAPOBJECTBUFFERATIPROC __glewUnmapObjectBufferATI

    PFNGLPNTRIANGLESFATIPROC __glewPNTrianglesfATI

    PFNGLPNTRIANGLESIATIPROC __glewPNTrianglesiATI

    PFNGLSTENCILFUNCSEPARATEATIPROC __glewStencilFuncSeparateATI

    PFNGLSTENCILOPSEPARATEATIPROC __glewStencilOpSeparateATI

    PFNGLARRAYOBJECTATIPROC __glewArrayObjectATI

    PFNGLFREEOBJECTBUFFERATIPROC __glewFreeObjectBufferATI

    PFNGLGETARRAYOBJECTFVATIPROC __glewGetArrayObjectfvATI

    PFNGLGETARRAYOBJECTIVATIPROC __glewGetArrayObjectivATI

    PFNGLGETOBJECTBUFFERFVATIPROC __glewGetObjectBufferfvATI

    PFNGLGETOBJECTBUFFERIVATIPROC __glewGetObjectBufferivATI

    PFNGLGETVARIANTARRAYOBJECTFVATIPROC __glewGetVariantArrayObjectfvATI

    PFNGLGETVARIANTARRAYOBJECTIVATIPROC __glewGetVariantArrayObjectivATI

    PFNGLISOBJECTBUFFERATIPROC __glewIsObjectBufferATI

    PFNGLNEWOBJECTBUFFERATIPROC __glewNewObjectBufferATI

    PFNGLUPDATEOBJECTBUFFERATIPROC __glewUpdateObjectBufferATI

    PFNGLVARIANTARRAYOBJECTATIPROC __glewVariantArrayObjectATI

    PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC __glewGetVertexAttribArrayObjectfvATI

    PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC __glewGetVertexAttribArrayObjectivATI

    PFNGLVERTEXATTRIBARRAYOBJECTATIPROC __glewVertexAttribArrayObjectATI

    PFNGLCLIENTACTIVEVERTEXSTREAMATIPROC __glewClientActiveVertexStreamATI

    PFNGLNORMALSTREAM3BATIPROC __glewNormalStream3bATI

    PFNGLNORMALSTREAM3BVATIPROC __glewNormalStream3bvATI

    PFNGLNORMALSTREAM3DATIPROC __glewNormalStream3dATI

    PFNGLNORMALSTREAM3DVATIPROC __glewNormalStream3dvATI

    PFNGLNORMALSTREAM3FATIPROC __glewNormalStream3fATI

    PFNGLNORMALSTREAM3FVATIPROC __glewNormalStream3fvATI

    PFNGLNORMALSTREAM3IATIPROC __glewNormalStream3iATI

    PFNGLNORMALSTREAM3IVATIPROC __glewNormalStream3ivATI

    PFNGLNORMALSTREAM3SATIPROC __glewNormalStream3sATI

    PFNGLNORMALSTREAM3SVATIPROC __glewNormalStream3svATI

    PFNGLVERTEXBLENDENVFATIPROC __glewVertexBlendEnvfATI

    PFNGLVERTEXBLENDENVIATIPROC __glewVertexBlendEnviATI

    PFNGLVERTEXSTREAM1DATIPROC __glewVertexStream1dATI

    PFNGLVERTEXSTREAM1DVATIPROC __glewVertexStream1dvATI

    PFNGLVERTEXSTREAM1FATIPROC __glewVertexStream1fATI

    PFNGLVERTEXSTREAM1FVATIPROC __glewVertexStream1fvATI

    PFNGLVERTEXSTREAM1IATIPROC __glewVertexStream1iATI

    PFNGLVERTEXSTREAM1IVATIPROC __glewVertexStream1ivATI

    PFNGLVERTEXSTREAM1SATIPROC __glewVertexStream1sATI

    PFNGLVERTEXSTREAM1SVATIPROC __glewVertexStream1svATI

    PFNGLVERTEXSTREAM2DATIPROC __glewVertexStream2dATI

    PFNGLVERTEXSTREAM2DVATIPROC __glewVertexStream2dvATI

    PFNGLVERTEXSTREAM2FATIPROC __glewVertexStream2fATI

    PFNGLVERTEXSTREAM2FVATIPROC __glewVertexStream2fvATI

    PFNGLVERTEXSTREAM2IATIPROC __glewVertexStream2iATI

    PFNGLVERTEXSTREAM2IVATIPROC __glewVertexStream2ivATI

    PFNGLVERTEXSTREAM2SATIPROC __glewVertexStream2sATI

    PFNGLVERTEXSTREAM2SVATIPROC __glewVertexStream2svATI

    PFNGLVERTEXSTREAM3DATIPROC __glewVertexStream3dATI

    PFNGLVERTEXSTREAM3DVATIPROC __glewVertexStream3dvATI

    PFNGLVERTEXSTREAM3FATIPROC __glewVertexStream3fATI

    PFNGLVERTEXSTREAM3FVATIPROC __glewVertexStream3fvATI

    PFNGLVERTEXSTREAM3IATIPROC __glewVertexStream3iATI

    PFNGLVERTEXSTREAM3IVATIPROC __glewVertexStream3ivATI

    PFNGLVERTEXSTREAM3SATIPROC __glewVertexStream3sATI

    PFNGLVERTEXSTREAM3SVATIPROC __glewVertexStream3svATI

    PFNGLVERTEXSTREAM4DATIPROC __glewVertexStream4dATI

    PFNGLVERTEXSTREAM4DVATIPROC __glewVertexStream4dvATI

    PFNGLVERTEXSTREAM4FATIPROC __glewVertexStream4fATI

    PFNGLVERTEXSTREAM4FVATIPROC __glewVertexStream4fvATI

    PFNGLVERTEXSTREAM4IATIPROC __glewVertexStream4iATI

    PFNGLVERTEXSTREAM4IVATIPROC __glewVertexStream4ivATI

    PFNGLVERTEXSTREAM4SATIPROC __glewVertexStream4sATI

    PFNGLVERTEXSTREAM4SVATIPROC __glewVertexStream4svATI

    PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEEXTPROC __glewDrawArraysInstancedBaseInstanceEXT

    PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEEXTPROC __glewDrawElementsInstancedBaseInstanceEXT

    PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEEXTPROC __glewDrawElementsInstancedBaseVertexBaseInstanceEXT

    PFNGLGETUNIFORMBUFFERSIZEEXTPROC __glewGetUniformBufferSizeEXT

    PFNGLGETUNIFORMOFFSETEXTPROC __glewGetUniformOffsetEXT

    PFNGLUNIFORMBUFFEREXTPROC __glewUniformBufferEXT

    PFNGLBLENDCOLOREXTPROC __glewBlendColorEXT

    PFNGLBLENDEQUATIONSEPARATEEXTPROC __glewBlendEquationSeparateEXT

    PFNGLBINDFRAGDATALOCATIONINDEXEDEXTPROC __glewBindFragDataLocationIndexedEXT

    PFNGLGETFRAGDATAINDEXEXTPROC __glewGetFragDataIndexEXT

    PFNGLGETPROGRAMRESOURCELOCATIONINDEXEXTPROC __glewGetProgramResourceLocationIndexEXT

    PFNGLBLENDFUNCSEPARATEEXTPROC __glewBlendFuncSeparateEXT

    PFNGLBLENDEQUATIONEXTPROC __glewBlendEquationEXT

    PFNGLBUFFERSTORAGEEXTPROC __glewBufferStorageEXT

    PFNGLNAMEDBUFFERSTORAGEEXTPROC __glewNamedBufferStorageEXT

    PFNGLCLEARTEXIMAGEEXTPROC __glewClearTexImageEXT

    PFNGLCLEARTEXSUBIMAGEEXTPROC __glewClearTexSubImageEXT

    PFNGLCOLORSUBTABLEEXTPROC __glewColorSubTableEXT

    PFNGLCOPYCOLORSUBTABLEEXTPROC __glewCopyColorSubTableEXT

    PFNGLLOCKARRAYSEXTPROC __glewLockArraysEXT

    PFNGLUNLOCKARRAYSEXTPROC __glewUnlockArraysEXT

    PFNGLCONVOLUTIONFILTER1DEXTPROC __glewConvolutionFilter1DEXT

    PFNGLCONVOLUTIONFILTER2DEXTPROC __glewConvolutionFilter2DEXT

    PFNGLCONVOLUTIONPARAMETERFEXTPROC __glewConvolutionParameterfEXT

    PFNGLCONVOLUTIONPARAMETERFVEXTPROC __glewConvolutionParameterfvEXT

    PFNGLCONVOLUTIONPARAMETERIEXTPROC __glewConvolutionParameteriEXT

    PFNGLCONVOLUTIONPARAMETERIVEXTPROC __glewConvolutionParameterivEXT

    PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC __glewCopyConvolutionFilter1DEXT

    PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC __glewCopyConvolutionFilter2DEXT

    PFNGLGETCONVOLUTIONFILTEREXTPROC __glewGetConvolutionFilterEXT

    PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC __glewGetConvolutionParameterfvEXT

    PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC __glewGetConvolutionParameterivEXT

    PFNGLGETSEPARABLEFILTEREXTPROC __glewGetSeparableFilterEXT

    PFNGLSEPARABLEFILTER2DEXTPROC __glewSeparableFilter2DEXT

    PFNGLBINORMALPOINTEREXTPROC __glewBinormalPointerEXT

    PFNGLTANGENTPOINTEREXTPROC __glewTangentPointerEXT

    PFNGLCOPYIMAGESUBDATAEXTPROC __glewCopyImageSubDataEXT

    PFNGLCOPYTEXIMAGE1DEXTPROC __glewCopyTexImage1DEXT

    PFNGLCOPYTEXIMAGE2DEXTPROC __glewCopyTexImage2DEXT

    PFNGLCOPYTEXSUBIMAGE1DEXTPROC __glewCopyTexSubImage1DEXT

    PFNGLCOPYTEXSUBIMAGE2DEXTPROC __glewCopyTexSubImage2DEXT

    PFNGLCOPYTEXSUBIMAGE3DEXTPROC __glewCopyTexSubImage3DEXT

    PFNGLCULLPARAMETERDVEXTPROC __glewCullParameterdvEXT

    PFNGLCULLPARAMETERFVEXTPROC __glewCullParameterfvEXT

    PFNGLGETOBJECTLABELEXTPROC __glewGetObjectLabelEXT

    PFNGLLABELOBJECTEXTPROC __glewLabelObjectEXT

    PFNGLINSERTEVENTMARKEREXTPROC __glewInsertEventMarkerEXT

    PFNGLPOPGROUPMARKEREXTPROC __glewPopGroupMarkerEXT

    PFNGLPUSHGROUPMARKEREXTPROC __glewPushGroupMarkerEXT

    PFNGLDEPTHBOUNDSEXTPROC __glewDepthBoundsEXT

    PFNGLBINDMULTITEXTUREEXTPROC __glewBindMultiTextureEXT

    PFNGLCHECKNAMEDFRAMEBUFFERSTATUSEXTPROC __glewCheckNamedFramebufferStatusEXT

    PFNGLCLIENTATTRIBDEFAULTEXTPROC __glewClientAttribDefaultEXT

    PFNGLCOMPRESSEDMULTITEXIMAGE1DEXTPROC __glewCompressedMultiTexImage1DEXT

    PFNGLCOMPRESSEDMULTITEXIMAGE2DEXTPROC __glewCompressedMultiTexImage2DEXT

    PFNGLCOMPRESSEDMULTITEXIMAGE3DEXTPROC __glewCompressedMultiTexImage3DEXT

    PFNGLCOMPRESSEDMULTITEXSUBIMAGE1DEXTPROC __glewCompressedMultiTexSubImage1DEXT

    PFNGLCOMPRESSEDMULTITEXSUBIMAGE2DEXTPROC __glewCompressedMultiTexSubImage2DEXT

    PFNGLCOMPRESSEDMULTITEXSUBIMAGE3DEXTPROC __glewCompressedMultiTexSubImage3DEXT

    PFNGLCOMPRESSEDTEXTUREIMAGE1DEXTPROC __glewCompressedTextureImage1DEXT

    PFNGLCOMPRESSEDTEXTUREIMAGE2DEXTPROC __glewCompressedTextureImage2DEXT

    PFNGLCOMPRESSEDTEXTUREIMAGE3DEXTPROC __glewCompressedTextureImage3DEXT

    PFNGLCOMPRESSEDTEXTURESUBIMAGE1DEXTPROC __glewCompressedTextureSubImage1DEXT

    PFNGLCOMPRESSEDTEXTURESUBIMAGE2DEXTPROC __glewCompressedTextureSubImage2DEXT

    PFNGLCOMPRESSEDTEXTURESUBIMAGE3DEXTPROC __glewCompressedTextureSubImage3DEXT

    PFNGLCOPYMULTITEXIMAGE1DEXTPROC __glewCopyMultiTexImage1DEXT

    PFNGLCOPYMULTITEXIMAGE2DEXTPROC __glewCopyMultiTexImage2DEXT

    PFNGLCOPYMULTITEXSUBIMAGE1DEXTPROC __glewCopyMultiTexSubImage1DEXT

    PFNGLCOPYMULTITEXSUBIMAGE2DEXTPROC __glewCopyMultiTexSubImage2DEXT

    PFNGLCOPYMULTITEXSUBIMAGE3DEXTPROC __glewCopyMultiTexSubImage3DEXT

    PFNGLCOPYTEXTUREIMAGE1DEXTPROC __glewCopyTextureImage1DEXT

    PFNGLCOPYTEXTUREIMAGE2DEXTPROC __glewCopyTextureImage2DEXT

    PFNGLCOPYTEXTURESUBIMAGE1DEXTPROC __glewCopyTextureSubImage1DEXT

    PFNGLCOPYTEXTURESUBIMAGE2DEXTPROC __glewCopyTextureSubImage2DEXT

    PFNGLCOPYTEXTURESUBIMAGE3DEXTPROC __glewCopyTextureSubImage3DEXT

    PFNGLDISABLECLIENTSTATEINDEXEDEXTPROC __glewDisableClientStateIndexedEXT

    PFNGLDISABLECLIENTSTATEIEXTPROC __glewDisableClientStateiEXT

    PFNGLDISABLEVERTEXARRAYATTRIBEXTPROC __glewDisableVertexArrayAttribEXT

    PFNGLDISABLEVERTEXARRAYEXTPROC __glewDisableVertexArrayEXT

    PFNGLENABLECLIENTSTATEINDEXEDEXTPROC __glewEnableClientStateIndexedEXT

    PFNGLENABLECLIENTSTATEIEXTPROC __glewEnableClientStateiEXT

    PFNGLENABLEVERTEXARRAYATTRIBEXTPROC __glewEnableVertexArrayAttribEXT

    PFNGLENABLEVERTEXARRAYEXTPROC __glewEnableVertexArrayEXT

    PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEEXTPROC __glewFlushMappedNamedBufferRangeEXT

    PFNGLFRAMEBUFFERDRAWBUFFEREXTPROC __glewFramebufferDrawBufferEXT

    PFNGLFRAMEBUFFERDRAWBUFFERSEXTPROC __glewFramebufferDrawBuffersEXT

    PFNGLFRAMEBUFFERREADBUFFEREXTPROC __glewFramebufferReadBufferEXT

    PFNGLGENERATEMULTITEXMIPMAPEXTPROC __glewGenerateMultiTexMipmapEXT

    PFNGLGENERATETEXTUREMIPMAPEXTPROC __glewGenerateTextureMipmapEXT

    PFNGLGETCOMPRESSEDMULTITEXIMAGEEXTPROC __glewGetCompressedMultiTexImageEXT

    PFNGLGETCOMPRESSEDTEXTUREIMAGEEXTPROC __glewGetCompressedTextureImageEXT

    PFNGLGETDOUBLEINDEXEDVEXTPROC __glewGetDoubleIndexedvEXT

    PFNGLGETDOUBLEI_VEXTPROC __glewGetDoublei_vEXT

    PFNGLGETFLOATINDEXEDVEXTPROC __glewGetFloatIndexedvEXT

    PFNGLGETFLOATI_VEXTPROC __glewGetFloati_vEXT

    PFNGLGETFRAMEBUFFERPARAMETERIVEXTPROC __glewGetFramebufferParameterivEXT

    PFNGLGETMULTITEXENVFVEXTPROC __glewGetMultiTexEnvfvEXT

    PFNGLGETMULTITEXENVIVEXTPROC __glewGetMultiTexEnvivEXT

    PFNGLGETMULTITEXGENDVEXTPROC __glewGetMultiTexGendvEXT

    PFNGLGETMULTITEXGENFVEXTPROC __glewGetMultiTexGenfvEXT

    PFNGLGETMULTITEXGENIVEXTPROC __glewGetMultiTexGenivEXT

    PFNGLGETMULTITEXIMAGEEXTPROC __glewGetMultiTexImageEXT

    PFNGLGETMULTITEXLEVELPARAMETERFVEXTPROC __glewGetMultiTexLevelParameterfvEXT

    PFNGLGETMULTITEXLEVELPARAMETERIVEXTPROC __glewGetMultiTexLevelParameterivEXT

    PFNGLGETMULTITEXPARAMETERIIVEXTPROC __glewGetMultiTexParameterIivEXT

    PFNGLGETMULTITEXPARAMETERIUIVEXTPROC __glewGetMultiTexParameterIuivEXT

    PFNGLGETMULTITEXPARAMETERFVEXTPROC __glewGetMultiTexParameterfvEXT

    PFNGLGETMULTITEXPARAMETERIVEXTPROC __glewGetMultiTexParameterivEXT

    PFNGLGETNAMEDBUFFERPARAMETERIVEXTPROC __glewGetNamedBufferParameterivEXT

    PFNGLGETNAMEDBUFFERPOINTERVEXTPROC __glewGetNamedBufferPointervEXT

    PFNGLGETNAMEDBUFFERSUBDATAEXTPROC __glewGetNamedBufferSubDataEXT

    PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC __glewGetNamedFramebufferAttachmentParameterivEXT

    PFNGLGETNAMEDPROGRAMLOCALPARAMETERIIVEXTPROC __glewGetNamedProgramLocalParameterIivEXT

    PFNGLGETNAMEDPROGRAMLOCALPARAMETERIUIVEXTPROC __glewGetNamedProgramLocalParameterIuivEXT

    PFNGLGETNAMEDPROGRAMLOCALPARAMETERDVEXTPROC __glewGetNamedProgramLocalParameterdvEXT

    PFNGLGETNAMEDPROGRAMLOCALPARAMETERFVEXTPROC __glewGetNamedProgramLocalParameterfvEXT

    PFNGLGETNAMEDPROGRAMSTRINGEXTPROC __glewGetNamedProgramStringEXT

    PFNGLGETNAMEDPROGRAMIVEXTPROC __glewGetNamedProgramivEXT

    PFNGLGETNAMEDRENDERBUFFERPARAMETERIVEXTPROC __glewGetNamedRenderbufferParameterivEXT

    PFNGLGETPOINTERINDEXEDVEXTPROC __glewGetPointerIndexedvEXT

    PFNGLGETPOINTERI_VEXTPROC __glewGetPointeri_vEXT

    PFNGLGETTEXTUREIMAGEEXTPROC __glewGetTextureImageEXT

    PFNGLGETTEXTURELEVELPARAMETERFVEXTPROC __glewGetTextureLevelParameterfvEXT

    PFNGLGETTEXTURELEVELPARAMETERIVEXTPROC __glewGetTextureLevelParameterivEXT

    PFNGLGETTEXTUREPARAMETERIIVEXTPROC __glewGetTextureParameterIivEXT

    PFNGLGETTEXTUREPARAMETERIUIVEXTPROC __glewGetTextureParameterIuivEXT

    PFNGLGETTEXTUREPARAMETERFVEXTPROC __glewGetTextureParameterfvEXT

    PFNGLGETTEXTUREPARAMETERIVEXTPROC __glewGetTextureParameterivEXT

    PFNGLGETVERTEXARRAYINTEGERI_VEXTPROC __glewGetVertexArrayIntegeri_vEXT

    PFNGLGETVERTEXARRAYINTEGERVEXTPROC __glewGetVertexArrayIntegervEXT

    PFNGLGETVERTEXARRAYPOINTERI_VEXTPROC __glewGetVertexArrayPointeri_vEXT

    PFNGLGETVERTEXARRAYPOINTERVEXTPROC __glewGetVertexArrayPointervEXT

    PFNGLMAPNAMEDBUFFEREXTPROC __glewMapNamedBufferEXT

    PFNGLMAPNAMEDBUFFERRANGEEXTPROC __glewMapNamedBufferRangeEXT

    PFNGLMATRIXFRUSTUMEXTPROC __glewMatrixFrustumEXT

    PFNGLMATRIXLOADIDENTITYEXTPROC __glewMatrixLoadIdentityEXT

    PFNGLMATRIXLOADTRANSPOSEDEXTPROC __glewMatrixLoadTransposedEXT

    PFNGLMATRIXLOADTRANSPOSEFEXTPROC __glewMatrixLoadTransposefEXT

    PFNGLMATRIXLOADDEXTPROC __glewMatrixLoaddEXT

    PFNGLMATRIXLOADFEXTPROC __glewMatrixLoadfEXT

    PFNGLMATRIXMULTTRANSPOSEDEXTPROC __glewMatrixMultTransposedEXT

    PFNGLMATRIXMULTTRANSPOSEFEXTPROC __glewMatrixMultTransposefEXT

    PFNGLMATRIXMULTDEXTPROC __glewMatrixMultdEXT

    PFNGLMATRIXMULTFEXTPROC __glewMatrixMultfEXT

    PFNGLMATRIXORTHOEXTPROC __glewMatrixOrthoEXT

    PFNGLMATRIXPOPEXTPROC __glewMatrixPopEXT

    PFNGLMATRIXPUSHEXTPROC __glewMatrixPushEXT

    PFNGLMATRIXROTATEDEXTPROC __glewMatrixRotatedEXT

    PFNGLMATRIXROTATEFEXTPROC __glewMatrixRotatefEXT

    PFNGLMATRIXSCALEDEXTPROC __glewMatrixScaledEXT

    PFNGLMATRIXSCALEFEXTPROC __glewMatrixScalefEXT

    PFNGLMATRIXTRANSLATEDEXTPROC __glewMatrixTranslatedEXT

    PFNGLMATRIXTRANSLATEFEXTPROC __glewMatrixTranslatefEXT

    PFNGLMULTITEXBUFFEREXTPROC __glewMultiTexBufferEXT

    PFNGLMULTITEXCOORDPOINTEREXTPROC __glewMultiTexCoordPointerEXT

    PFNGLMULTITEXENVFEXTPROC __glewMultiTexEnvfEXT

    PFNGLMULTITEXENVFVEXTPROC __glewMultiTexEnvfvEXT

    PFNGLMULTITEXENVIEXTPROC __glewMultiTexEnviEXT

    PFNGLMULTITEXENVIVEXTPROC __glewMultiTexEnvivEXT

    PFNGLMULTITEXGENDEXTPROC __glewMultiTexGendEXT

    PFNGLMULTITEXGENDVEXTPROC __glewMultiTexGendvEXT

    PFNGLMULTITEXGENFEXTPROC __glewMultiTexGenfEXT

    PFNGLMULTITEXGENFVEXTPROC __glewMultiTexGenfvEXT

    PFNGLMULTITEXGENIEXTPROC __glewMultiTexGeniEXT

    PFNGLMULTITEXGENIVEXTPROC __glewMultiTexGenivEXT

    PFNGLMULTITEXIMAGE1DEXTPROC __glewMultiTexImage1DEXT

    PFNGLMULTITEXIMAGE2DEXTPROC __glewMultiTexImage2DEXT

    PFNGLMULTITEXIMAGE3DEXTPROC __glewMultiTexImage3DEXT

    PFNGLMULTITEXPARAMETERIIVEXTPROC __glewMultiTexParameterIivEXT

    PFNGLMULTITEXPARAMETERIUIVEXTPROC __glewMultiTexParameterIuivEXT

    PFNGLMULTITEXPARAMETERFEXTPROC __glewMultiTexParameterfEXT

    PFNGLMULTITEXPARAMETERFVEXTPROC __glewMultiTexParameterfvEXT

    PFNGLMULTITEXPARAMETERIEXTPROC __glewMultiTexParameteriEXT

    PFNGLMULTITEXPARAMETERIVEXTPROC __glewMultiTexParameterivEXT

    PFNGLMULTITEXRENDERBUFFEREXTPROC __glewMultiTexRenderbufferEXT

    PFNGLMULTITEXSUBIMAGE1DEXTPROC __glewMultiTexSubImage1DEXT

    PFNGLMULTITEXSUBIMAGE2DEXTPROC __glewMultiTexSubImage2DEXT

    PFNGLMULTITEXSUBIMAGE3DEXTPROC __glewMultiTexSubImage3DEXT

    PFNGLNAMEDBUFFERDATAEXTPROC __glewNamedBufferDataEXT

    PFNGLNAMEDBUFFERSUBDATAEXTPROC __glewNamedBufferSubDataEXT

    PFNGLNAMEDCOPYBUFFERSUBDATAEXTPROC __glewNamedCopyBufferSubDataEXT

    PFNGLNAMEDFRAMEBUFFERRENDERBUFFEREXTPROC __glewNamedFramebufferRenderbufferEXT

    PFNGLNAMEDFRAMEBUFFERTEXTURE1DEXTPROC __glewNamedFramebufferTexture1DEXT

    PFNGLNAMEDFRAMEBUFFERTEXTURE2DEXTPROC __glewNamedFramebufferTexture2DEXT

    PFNGLNAMEDFRAMEBUFFERTEXTURE3DEXTPROC __glewNamedFramebufferTexture3DEXT

    PFNGLNAMEDFRAMEBUFFERTEXTUREEXTPROC __glewNamedFramebufferTextureEXT

    PFNGLNAMEDFRAMEBUFFERTEXTUREFACEEXTPROC __glewNamedFramebufferTextureFaceEXT

    PFNGLNAMEDFRAMEBUFFERTEXTURELAYEREXTPROC __glewNamedFramebufferTextureLayerEXT

    PFNGLNAMEDPROGRAMLOCALPARAMETER4DEXTPROC __glewNamedProgramLocalParameter4dEXT

    PFNGLNAMEDPROGRAMLOCALPARAMETER4DVEXTPROC __glewNamedProgramLocalParameter4dvEXT

    PFNGLNAMEDPROGRAMLOCALPARAMETER4FEXTPROC __glewNamedProgramLocalParameter4fEXT

    PFNGLNAMEDPROGRAMLOCALPARAMETER4FVEXTPROC __glewNamedProgramLocalParameter4fvEXT

    PFNGLNAMEDPROGRAMLOCALPARAMETERI4IEXTPROC __glewNamedProgramLocalParameterI4iEXT

    PFNGLNAMEDPROGRAMLOCALPARAMETERI4IVEXTPROC __glewNamedProgramLocalParameterI4ivEXT

    PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIEXTPROC __glewNamedProgramLocalParameterI4uiEXT

    PFNGLNAMEDPROGRAMLOCALPARAMETERI4UIVEXTPROC __glewNamedProgramLocalParameterI4uivEXT

    PFNGLNAMEDPROGRAMLOCALPARAMETERS4FVEXTPROC __glewNamedProgramLocalParameters4fvEXT

    PFNGLNAMEDPROGRAMLOCALPARAMETERSI4IVEXTPROC __glewNamedProgramLocalParametersI4ivEXT

    PFNGLNAMEDPROGRAMLOCALPARAMETERSI4UIVEXTPROC __glewNamedProgramLocalParametersI4uivEXT

    PFNGLNAMEDPROGRAMSTRINGEXTPROC __glewNamedProgramStringEXT

    PFNGLNAMEDRENDERBUFFERSTORAGEEXTPROC __glewNamedRenderbufferStorageEXT

    PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLECOVERAGEEXTPROC __glewNamedRenderbufferStorageMultisampleCoverageEXT

    PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC __glewNamedRenderbufferStorageMultisampleEXT

    PFNGLPROGRAMUNIFORM1FEXTPROC __glewProgramUniform1fEXT

    PFNGLPROGRAMUNIFORM1FVEXTPROC __glewProgramUniform1fvEXT

    PFNGLPROGRAMUNIFORM1IEXTPROC __glewProgramUniform1iEXT

    PFNGLPROGRAMUNIFORM1IVEXTPROC __glewProgramUniform1ivEXT

    PFNGLPROGRAMUNIFORM1UIEXTPROC __glewProgramUniform1uiEXT

    PFNGLPROGRAMUNIFORM1UIVEXTPROC __glewProgramUniform1uivEXT

    PFNGLPROGRAMUNIFORM2FEXTPROC __glewProgramUniform2fEXT

    PFNGLPROGRAMUNIFORM2FVEXTPROC __glewProgramUniform2fvEXT

    PFNGLPROGRAMUNIFORM2IEXTPROC __glewProgramUniform2iEXT

    PFNGLPROGRAMUNIFORM2IVEXTPROC __glewProgramUniform2ivEXT

    PFNGLPROGRAMUNIFORM2UIEXTPROC __glewProgramUniform2uiEXT

    PFNGLPROGRAMUNIFORM2UIVEXTPROC __glewProgramUniform2uivEXT

    PFNGLPROGRAMUNIFORM3FEXTPROC __glewProgramUniform3fEXT

    PFNGLPROGRAMUNIFORM3FVEXTPROC __glewProgramUniform3fvEXT

    PFNGLPROGRAMUNIFORM3IEXTPROC __glewProgramUniform3iEXT

    PFNGLPROGRAMUNIFORM3IVEXTPROC __glewProgramUniform3ivEXT

    PFNGLPROGRAMUNIFORM3UIEXTPROC __glewProgramUniform3uiEXT

    PFNGLPROGRAMUNIFORM3UIVEXTPROC __glewProgramUniform3uivEXT

    PFNGLPROGRAMUNIFORM4FEXTPROC __glewProgramUniform4fEXT

    PFNGLPROGRAMUNIFORM4FVEXTPROC __glewProgramUniform4fvEXT

    PFNGLPROGRAMUNIFORM4IEXTPROC __glewProgramUniform4iEXT

    PFNGLPROGRAMUNIFORM4IVEXTPROC __glewProgramUniform4ivEXT

    PFNGLPROGRAMUNIFORM4UIEXTPROC __glewProgramUniform4uiEXT

    PFNGLPROGRAMUNIFORM4UIVEXTPROC __glewProgramUniform4uivEXT

    PFNGLPROGRAMUNIFORMMATRIX2FVEXTPROC __glewProgramUniformMatrix2fvEXT

    PFNGLPROGRAMUNIFORMMATRIX2X3FVEXTPROC __glewProgramUniformMatrix2x3fvEXT

    PFNGLPROGRAMUNIFORMMATRIX2X4FVEXTPROC __glewProgramUniformMatrix2x4fvEXT

    PFNGLPROGRAMUNIFORMMATRIX3FVEXTPROC __glewProgramUniformMatrix3fvEXT

    PFNGLPROGRAMUNIFORMMATRIX3X2FVEXTPROC __glewProgramUniformMatrix3x2fvEXT

    PFNGLPROGRAMUNIFORMMATRIX3X4FVEXTPROC __glewProgramUniformMatrix3x4fvEXT

    PFNGLPROGRAMUNIFORMMATRIX4FVEXTPROC __glewProgramUniformMatrix4fvEXT

    PFNGLPROGRAMUNIFORMMATRIX4X2FVEXTPROC __glewProgramUniformMatrix4x2fvEXT

    PFNGLPROGRAMUNIFORMMATRIX4X3FVEXTPROC __glewProgramUniformMatrix4x3fvEXT

    PFNGLPUSHCLIENTATTRIBDEFAULTEXTPROC __glewPushClientAttribDefaultEXT

    PFNGLTEXTUREBUFFEREXTPROC __glewTextureBufferEXT

    PFNGLTEXTUREIMAGE1DEXTPROC __glewTextureImage1DEXT

    PFNGLTEXTUREIMAGE2DEXTPROC __glewTextureImage2DEXT

    PFNGLTEXTUREIMAGE3DEXTPROC __glewTextureImage3DEXT

    PFNGLTEXTUREPARAMETERIIVEXTPROC __glewTextureParameterIivEXT

    PFNGLTEXTUREPARAMETERIUIVEXTPROC __glewTextureParameterIuivEXT

    PFNGLTEXTUREPARAMETERFEXTPROC __glewTextureParameterfEXT

    PFNGLTEXTUREPARAMETERFVEXTPROC __glewTextureParameterfvEXT

    PFNGLTEXTUREPARAMETERIEXTPROC __glewTextureParameteriEXT

    PFNGLTEXTUREPARAMETERIVEXTPROC __glewTextureParameterivEXT

    PFNGLTEXTURERENDERBUFFEREXTPROC __glewTextureRenderbufferEXT

    PFNGLTEXTURESUBIMAGE1DEXTPROC __glewTextureSubImage1DEXT

    PFNGLTEXTURESUBIMAGE2DEXTPROC __glewTextureSubImage2DEXT

    PFNGLTEXTURESUBIMAGE3DEXTPROC __glewTextureSubImage3DEXT

    PFNGLUNMAPNAMEDBUFFEREXTPROC __glewUnmapNamedBufferEXT

    PFNGLVERTEXARRAYCOLOROFFSETEXTPROC __glewVertexArrayColorOffsetEXT

    PFNGLVERTEXARRAYEDGEFLAGOFFSETEXTPROC __glewVertexArrayEdgeFlagOffsetEXT

    PFNGLVERTEXARRAYFOGCOORDOFFSETEXTPROC __glewVertexArrayFogCoordOffsetEXT

    PFNGLVERTEXARRAYINDEXOFFSETEXTPROC __glewVertexArrayIndexOffsetEXT

    PFNGLVERTEXARRAYMULTITEXCOORDOFFSETEXTPROC __glewVertexArrayMultiTexCoordOffsetEXT

    PFNGLVERTEXARRAYNORMALOFFSETEXTPROC __glewVertexArrayNormalOffsetEXT

    PFNGLVERTEXARRAYSECONDARYCOLOROFFSETEXTPROC __glewVertexArraySecondaryColorOffsetEXT

    PFNGLVERTEXARRAYTEXCOORDOFFSETEXTPROC __glewVertexArrayTexCoordOffsetEXT

    PFNGLVERTEXARRAYVERTEXATTRIBDIVISOREXTPROC __glewVertexArrayVertexAttribDivisorEXT

    PFNGLVERTEXARRAYVERTEXATTRIBIOFFSETEXTPROC __glewVertexArrayVertexAttribIOffsetEXT

    PFNGLVERTEXARRAYVERTEXATTRIBOFFSETEXTPROC __glewVertexArrayVertexAttribOffsetEXT

    PFNGLVERTEXARRAYVERTEXOFFSETEXTPROC __glewVertexArrayVertexOffsetEXT

    PFNGLDISCARDFRAMEBUFFEREXTPROC __glewDiscardFramebufferEXT

    PFNGLDRAWBUFFERSEXTPROC __glewDrawBuffersEXT

    PFNGLCOLORMASKINDEXEDEXTPROC __glewColorMaskIndexedEXT

    PFNGLDISABLEINDEXEDEXTPROC __glewDisableIndexedEXT

    PFNGLENABLEINDEXEDEXTPROC __glewEnableIndexedEXT

    PFNGLGETBOOLEANINDEXEDVEXTPROC __glewGetBooleanIndexedvEXT

    PFNGLGETINTEGERINDEXEDVEXTPROC __glewGetIntegerIndexedvEXT

    PFNGLISENABLEDINDEXEDEXTPROC __glewIsEnabledIndexedEXT

    PFNGLBLENDEQUATIONSEPARATEIEXTPROC __glewBlendEquationSeparateiEXT

    PFNGLBLENDEQUATIONIEXTPROC __glewBlendEquationiEXT

    PFNGLBLENDFUNCSEPARATEIEXTPROC __glewBlendFuncSeparateiEXT

    PFNGLBLENDFUNCIEXTPROC __glewBlendFunciEXT

    PFNGLCOLORMASKIEXTPROC __glewColorMaskiEXT

    PFNGLDISABLEIEXTPROC __glewDisableiEXT

    PFNGLENABLEIEXTPROC __glewEnableiEXT

    PFNGLISENABLEDIEXTPROC __glewIsEnablediEXT

    PFNGLDRAWELEMENTSBASEVERTEXEXTPROC __glewDrawElementsBaseVertexEXT

    PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXEXTPROC __glewDrawElementsInstancedBaseVertexEXT

    PFNGLDRAWRANGEELEMENTSBASEVERTEXEXTPROC __glewDrawRangeElementsBaseVertexEXT

    PFNGLMULTIDRAWELEMENTSBASEVERTEXEXTPROC __glewMultiDrawElementsBaseVertexEXT

    PFNGLDRAWARRAYSINSTANCEDEXTPROC __glewDrawArraysInstancedEXT

    PFNGLDRAWELEMENTSINSTANCEDEXTPROC __glewDrawElementsInstancedEXT

    PFNGLDRAWRANGEELEMENTSEXTPROC __glewDrawRangeElementsEXT

    PFNGLBUFFERSTORAGEEXTERNALEXTPROC __glewBufferStorageExternalEXT

    PFNGLNAMEDBUFFERSTORAGEEXTERNALEXTPROC __glewNamedBufferStorageExternalEXT

    PFNGLFOGCOORDPOINTEREXTPROC __glewFogCoordPointerEXT

    PFNGLFOGCOORDDEXTPROC __glewFogCoorddEXT

    PFNGLFOGCOORDDVEXTPROC __glewFogCoorddvEXT

    PFNGLFOGCOORDFEXTPROC __glewFogCoordfEXT

    PFNGLFOGCOORDFVEXTPROC __glewFogCoordfvEXT

    PFNGLFRAGMENTCOLORMATERIALEXTPROC __glewFragmentColorMaterialEXT

    PFNGLFRAGMENTLIGHTMODELFEXTPROC __glewFragmentLightModelfEXT

    PFNGLFRAGMENTLIGHTMODELFVEXTPROC __glewFragmentLightModelfvEXT

    PFNGLFRAGMENTLIGHTMODELIEXTPROC __glewFragmentLightModeliEXT

    PFNGLFRAGMENTLIGHTMODELIVEXTPROC __glewFragmentLightModelivEXT

    PFNGLFRAGMENTLIGHTFEXTPROC __glewFragmentLightfEXT

    PFNGLFRAGMENTLIGHTFVEXTPROC __glewFragmentLightfvEXT

    PFNGLFRAGMENTLIGHTIEXTPROC __glewFragmentLightiEXT

    PFNGLFRAGMENTLIGHTIVEXTPROC __glewFragmentLightivEXT

    PFNGLFRAGMENTMATERIALFEXTPROC __glewFragmentMaterialfEXT

    PFNGLFRAGMENTMATERIALFVEXTPROC __glewFragmentMaterialfvEXT

    PFNGLFRAGMENTMATERIALIEXTPROC __glewFragmentMaterialiEXT

    PFNGLFRAGMENTMATERIALIVEXTPROC __glewFragmentMaterialivEXT

    PFNGLGETFRAGMENTLIGHTFVEXTPROC __glewGetFragmentLightfvEXT

    PFNGLGETFRAGMENTLIGHTIVEXTPROC __glewGetFragmentLightivEXT

    PFNGLGETFRAGMENTMATERIALFVEXTPROC __glewGetFragmentMaterialfvEXT

    PFNGLGETFRAGMENTMATERIALIVEXTPROC __glewGetFragmentMaterialivEXT

    PFNGLLIGHTENVIEXTPROC __glewLightEnviEXT

    PFNGLBLITFRAMEBUFFEREXTPROC __glewBlitFramebufferEXT

    PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC __glewRenderbufferStorageMultisampleEXT

    PFNGLBINDFRAMEBUFFEREXTPROC __glewBindFramebufferEXT

    PFNGLBINDRENDERBUFFEREXTPROC __glewBindRenderbufferEXT

    PFNGLCHECKFRAMEBUFFERSTATUSEXTPROC __glewCheckFramebufferStatusEXT

    PFNGLDELETEFRAMEBUFFERSEXTPROC __glewDeleteFramebuffersEXT

    PFNGLDELETERENDERBUFFERSEXTPROC __glewDeleteRenderbuffersEXT

    PFNGLFRAMEBUFFERRENDERBUFFEREXTPROC __glewFramebufferRenderbufferEXT

    PFNGLFRAMEBUFFERTEXTURE1DEXTPROC __glewFramebufferTexture1DEXT

    PFNGLFRAMEBUFFERTEXTURE2DEXTPROC __glewFramebufferTexture2DEXT

    PFNGLFRAMEBUFFERTEXTURE3DEXTPROC __glewFramebufferTexture3DEXT

    PFNGLGENFRAMEBUFFERSEXTPROC __glewGenFramebuffersEXT

    PFNGLGENRENDERBUFFERSEXTPROC __glewGenRenderbuffersEXT

    PFNGLGENERATEMIPMAPEXTPROC __glewGenerateMipmapEXT

    PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC __glewGetFramebufferAttachmentParameterivEXT

    PFNGLGETRENDERBUFFERPARAMETERIVEXTPROC __glewGetRenderbufferParameterivEXT

    PFNGLISFRAMEBUFFEREXTPROC __glewIsFramebufferEXT

    PFNGLISRENDERBUFFEREXTPROC __glewIsRenderbufferEXT

    PFNGLRENDERBUFFERSTORAGEEXTPROC __glewRenderbufferStorageEXT

    PFNGLFRAMEBUFFERTEXTUREEXTPROC __glewFramebufferTextureEXT

    PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC __glewFramebufferTextureFaceEXT

    PFNGLPROGRAMPARAMETERIEXTPROC __glewProgramParameteriEXT

    PFNGLPROGRAMENVPARAMETERS4FVEXTPROC __glewProgramEnvParameters4fvEXT

    PFNGLPROGRAMLOCALPARAMETERS4FVEXTPROC __glewProgramLocalParameters4fvEXT

    PFNGLBINDFRAGDATALOCATIONEXTPROC __glewBindFragDataLocationEXT

    PFNGLGETFRAGDATALOCATIONEXTPROC __glewGetFragDataLocationEXT

    PFNGLGETUNIFORMUIVEXTPROC __glewGetUniformuivEXT

    PFNGLGETVERTEXATTRIBIIVEXTPROC __glewGetVertexAttribIivEXT

    PFNGLGETVERTEXATTRIBIUIVEXTPROC __glewGetVertexAttribIuivEXT

    PFNGLUNIFORM1UIEXTPROC __glewUniform1uiEXT

    PFNGLUNIFORM1UIVEXTPROC __glewUniform1uivEXT

    PFNGLUNIFORM2UIEXTPROC __glewUniform2uiEXT

    PFNGLUNIFORM2UIVEXTPROC __glewUniform2uivEXT

    PFNGLUNIFORM3UIEXTPROC __glewUniform3uiEXT

    PFNGLUNIFORM3UIVEXTPROC __glewUniform3uivEXT

    PFNGLUNIFORM4UIEXTPROC __glewUniform4uiEXT

    PFNGLUNIFORM4UIVEXTPROC __glewUniform4uivEXT

    PFNGLVERTEXATTRIBI1IEXTPROC __glewVertexAttribI1iEXT

    PFNGLVERTEXATTRIBI1IVEXTPROC __glewVertexAttribI1ivEXT

    PFNGLVERTEXATTRIBI1UIEXTPROC __glewVertexAttribI1uiEXT

    PFNGLVERTEXATTRIBI1UIVEXTPROC __glewVertexAttribI1uivEXT

    PFNGLVERTEXATTRIBI2IEXTPROC __glewVertexAttribI2iEXT

    PFNGLVERTEXATTRIBI2IVEXTPROC __glewVertexAttribI2ivEXT

    PFNGLVERTEXATTRIBI2UIEXTPROC __glewVertexAttribI2uiEXT

    PFNGLVERTEXATTRIBI2UIVEXTPROC __glewVertexAttribI2uivEXT

    PFNGLVERTEXATTRIBI3IEXTPROC __glewVertexAttribI3iEXT

    PFNGLVERTEXATTRIBI3IVEXTPROC __glewVertexAttribI3ivEXT

    PFNGLVERTEXATTRIBI3UIEXTPROC __glewVertexAttribI3uiEXT

    PFNGLVERTEXATTRIBI3UIVEXTPROC __glewVertexAttribI3uivEXT

    PFNGLVERTEXATTRIBI4BVEXTPROC __glewVertexAttribI4bvEXT

    PFNGLVERTEXATTRIBI4IEXTPROC __glewVertexAttribI4iEXT

    PFNGLVERTEXATTRIBI4IVEXTPROC __glewVertexAttribI4ivEXT

    PFNGLVERTEXATTRIBI4SVEXTPROC __glewVertexAttribI4svEXT

    PFNGLVERTEXATTRIBI4UBVEXTPROC __glewVertexAttribI4ubvEXT

    PFNGLVERTEXATTRIBI4UIEXTPROC __glewVertexAttribI4uiEXT

    PFNGLVERTEXATTRIBI4UIVEXTPROC __glewVertexAttribI4uivEXT

    PFNGLVERTEXATTRIBI4USVEXTPROC __glewVertexAttribI4usvEXT

    PFNGLVERTEXATTRIBIPOINTEREXTPROC __glewVertexAttribIPointerEXT

    PFNGLGETHISTOGRAMEXTPROC __glewGetHistogramEXT

    PFNGLGETHISTOGRAMPARAMETERFVEXTPROC __glewGetHistogramParameterfvEXT

    PFNGLGETHISTOGRAMPARAMETERIVEXTPROC __glewGetHistogramParameterivEXT

    PFNGLGETMINMAXEXTPROC __glewGetMinmaxEXT

    PFNGLGETMINMAXPARAMETERFVEXTPROC __glewGetMinmaxParameterfvEXT

    PFNGLGETMINMAXPARAMETERIVEXTPROC __glewGetMinmaxParameterivEXT

    PFNGLHISTOGRAMEXTPROC __glewHistogramEXT

    PFNGLMINMAXEXTPROC __glewMinmaxEXT

    PFNGLRESETHISTOGRAMEXTPROC __glewResetHistogramEXT

    PFNGLRESETMINMAXEXTPROC __glewResetMinmaxEXT

    PFNGLINDEXFUNCEXTPROC __glewIndexFuncEXT

    PFNGLINDEXMATERIALEXTPROC __glewIndexMaterialEXT

    PFNGLVERTEXATTRIBDIVISOREXTPROC __glewVertexAttribDivisorEXT

    PFNGLAPPLYTEXTUREEXTPROC __glewApplyTextureEXT

    PFNGLTEXTURELIGHTEXTPROC __glewTextureLightEXT

    PFNGLTEXTUREMATERIALEXTPROC __glewTextureMaterialEXT

    PFNGLFLUSHMAPPEDBUFFERRANGEEXTPROC __glewFlushMappedBufferRangeEXT

    PFNGLMAPBUFFERRANGEEXTPROC __glewMapBufferRangeEXT

    PFNGLBUFFERSTORAGEMEMEXTPROC __glewBufferStorageMemEXT

    PFNGLCREATEMEMORYOBJECTSEXTPROC __glewCreateMemoryObjectsEXT

    PFNGLDELETEMEMORYOBJECTSEXTPROC __glewDeleteMemoryObjectsEXT

    PFNGLGETMEMORYOBJECTPARAMETERIVEXTPROC __glewGetMemoryObjectParameterivEXT

    PFNGLGETUNSIGNEDBYTEI_VEXTPROC __glewGetUnsignedBytei_vEXT

    PFNGLGETUNSIGNEDBYTEVEXTPROC __glewGetUnsignedBytevEXT

    PFNGLISMEMORYOBJECTEXTPROC __glewIsMemoryObjectEXT

    PFNGLMEMORYOBJECTPARAMETERIVEXTPROC __glewMemoryObjectParameterivEXT

    PFNGLNAMEDBUFFERSTORAGEMEMEXTPROC __glewNamedBufferStorageMemEXT

    PFNGLTEXSTORAGEMEM1DEXTPROC __glewTexStorageMem1DEXT

    PFNGLTEXSTORAGEMEM2DEXTPROC __glewTexStorageMem2DEXT

    PFNGLTEXSTORAGEMEM2DMULTISAMPLEEXTPROC __glewTexStorageMem2DMultisampleEXT

    PFNGLTEXSTORAGEMEM3DEXTPROC __glewTexStorageMem3DEXT

    PFNGLTEXSTORAGEMEM3DMULTISAMPLEEXTPROC __glewTexStorageMem3DMultisampleEXT

    PFNGLTEXTURESTORAGEMEM1DEXTPROC __glewTextureStorageMem1DEXT

    PFNGLTEXTURESTORAGEMEM2DEXTPROC __glewTextureStorageMem2DEXT

    PFNGLTEXTURESTORAGEMEM2DMULTISAMPLEEXTPROC __glewTextureStorageMem2DMultisampleEXT

    PFNGLTEXTURESTORAGEMEM3DEXTPROC __glewTextureStorageMem3DEXT

    PFNGLTEXTURESTORAGEMEM3DMULTISAMPLEEXTPROC __glewTextureStorageMem3DMultisampleEXT

    PFNGLIMPORTMEMORYFDEXTPROC __glewImportMemoryFdEXT

    PFNGLIMPORTMEMORYWIN32HANDLEEXTPROC __glewImportMemoryWin32HandleEXT

    PFNGLIMPORTMEMORYWIN32NAMEEXTPROC __glewImportMemoryWin32NameEXT

    PFNGLMULTIDRAWARRAYSEXTPROC __glewMultiDrawArraysEXT

    PFNGLMULTIDRAWELEMENTSEXTPROC __glewMultiDrawElementsEXT

    PFNGLMULTIDRAWARRAYSINDIRECTEXTPROC __glewMultiDrawArraysIndirectEXT

    PFNGLMULTIDRAWELEMENTSINDIRECTEXTPROC __glewMultiDrawElementsIndirectEXT

    PFNGLSAMPLEMASKEXTPROC __glewSampleMaskEXT

    PFNGLSAMPLEPATTERNEXTPROC __glewSamplePatternEXT

    PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEEXTPROC __glewFramebufferTexture2DMultisampleEXT

    PFNGLDRAWBUFFERSINDEXEDEXTPROC __glewDrawBuffersIndexedEXT

    PFNGLGETINTEGERI_VEXTPROC __glewGetIntegeri_vEXT

    PFNGLREADBUFFERINDEXEDEXTPROC __glewReadBufferIndexedEXT

    PFNGLCOLORTABLEEXTPROC __glewColorTableEXT

    PFNGLGETCOLORTABLEEXTPROC __glewGetColorTableEXT

    PFNGLGETCOLORTABLEPARAMETERFVEXTPROC __glewGetColorTableParameterfvEXT

    PFNGLGETCOLORTABLEPARAMETERIVEXTPROC __glewGetColorTableParameterivEXT

    PFNGLGETPIXELTRANSFORMPARAMETERFVEXTPROC __glewGetPixelTransformParameterfvEXT

    PFNGLGETPIXELTRANSFORMPARAMETERIVEXTPROC __glewGetPixelTransformParameterivEXT

    PFNGLPIXELTRANSFORMPARAMETERFEXTPROC __glewPixelTransformParameterfEXT

    PFNGLPIXELTRANSFORMPARAMETERFVEXTPROC __glewPixelTransformParameterfvEXT

    PFNGLPIXELTRANSFORMPARAMETERIEXTPROC __glewPixelTransformParameteriEXT

    PFNGLPIXELTRANSFORMPARAMETERIVEXTPROC __glewPixelTransformParameterivEXT

    PFNGLPOINTPARAMETERFEXTPROC __glewPointParameterfEXT

    PFNGLPOINTPARAMETERFVEXTPROC __glewPointParameterfvEXT

    PFNGLPOLYGONOFFSETEXTPROC __glewPolygonOffsetEXT

    PFNGLPOLYGONOFFSETCLAMPEXTPROC __glewPolygonOffsetClampEXT

    PFNGLPROVOKINGVERTEXEXTPROC __glewProvokingVertexEXT

    PFNGLCOVERAGEMODULATIONNVPROC __glewCoverageModulationNV

    PFNGLCOVERAGEMODULATIONTABLENVPROC __glewCoverageModulationTableNV

    PFNGLGETCOVERAGEMODULATIONTABLENVPROC __glewGetCoverageModulationTableNV

    PFNGLRASTERSAMPLESEXTPROC __glewRasterSamplesEXT

    PFNGLBEGINSCENEEXTPROC __glewBeginSceneEXT

    PFNGLENDSCENEEXTPROC __glewEndSceneEXT

    PFNGLSECONDARYCOLOR3BEXTPROC __glewSecondaryColor3bEXT

    PFNGLSECONDARYCOLOR3BVEXTPROC __glewSecondaryColor3bvEXT

    PFNGLSECONDARYCOLOR3DEXTPROC __glewSecondaryColor3dEXT

    PFNGLSECONDARYCOLOR3DVEXTPROC __glewSecondaryColor3dvEXT

    PFNGLSECONDARYCOLOR3FEXTPROC __glewSecondaryColor3fEXT

    PFNGLSECONDARYCOLOR3FVEXTPROC __glewSecondaryColor3fvEXT

    PFNGLSECONDARYCOLOR3IEXTPROC __glewSecondaryColor3iEXT

    PFNGLSECONDARYCOLOR3IVEXTPROC __glewSecondaryColor3ivEXT

    PFNGLSECONDARYCOLOR3SEXTPROC __glewSecondaryColor3sEXT

    PFNGLSECONDARYCOLOR3SVEXTPROC __glewSecondaryColor3svEXT

    PFNGLSECONDARYCOLOR3UBEXTPROC __glewSecondaryColor3ubEXT

    PFNGLSECONDARYCOLOR3UBVEXTPROC __glewSecondaryColor3ubvEXT

    PFNGLSECONDARYCOLOR3UIEXTPROC __glewSecondaryColor3uiEXT

    PFNGLSECONDARYCOLOR3UIVEXTPROC __glewSecondaryColor3uivEXT

    PFNGLSECONDARYCOLOR3USEXTPROC __glewSecondaryColor3usEXT

    PFNGLSECONDARYCOLOR3USVEXTPROC __glewSecondaryColor3usvEXT

    PFNGLSECONDARYCOLORPOINTEREXTPROC __glewSecondaryColorPointerEXT

    PFNGLDELETESEMAPHORESEXTPROC __glewDeleteSemaphoresEXT

    PFNGLGENSEMAPHORESEXTPROC __glewGenSemaphoresEXT

    PFNGLGETSEMAPHOREPARAMETERUI64VEXTPROC __glewGetSemaphoreParameterui64vEXT

    PFNGLISSEMAPHOREEXTPROC __glewIsSemaphoreEXT

    PFNGLSEMAPHOREPARAMETERUI64VEXTPROC __glewSemaphoreParameterui64vEXT

    PFNGLSIGNALSEMAPHOREEXTPROC __glewSignalSemaphoreEXT

    PFNGLWAITSEMAPHOREEXTPROC __glewWaitSemaphoreEXT

    PFNGLIMPORTSEMAPHOREFDEXTPROC __glewImportSemaphoreFdEXT

    PFNGLIMPORTSEMAPHOREWIN32HANDLEEXTPROC __glewImportSemaphoreWin32HandleEXT

    PFNGLIMPORTSEMAPHOREWIN32NAMEEXTPROC __glewImportSemaphoreWin32NameEXT

    PFNGLACTIVEPROGRAMEXTPROC __glewActiveProgramEXT

    PFNGLCREATESHADERPROGRAMEXTPROC __glewCreateShaderProgramEXT

    PFNGLUSESHADERPROGRAMEXTPROC __glewUseShaderProgramEXT

    PFNGLBINDIMAGETEXTUREEXTPROC __glewBindImageTextureEXT

    PFNGLMEMORYBARRIEREXTPROC __glewMemoryBarrierEXT

    PFNGLCLEARPIXELLOCALSTORAGEUIEXTPROC __glewClearPixelLocalStorageuiEXT

    PFNGLFRAMEBUFFERPIXELLOCALSTORAGESIZEEXTPROC __glewFramebufferPixelLocalStorageSizeEXT

    PFNGLGETFRAMEBUFFERPIXELLOCALSTORAGESIZEEXTPROC __glewGetFramebufferPixelLocalStorageSizeEXT

    PFNGLTEXPAGECOMMITMENTEXTPROC __glewTexPageCommitmentEXT

    PFNGLTEXTUREPAGECOMMITMENTEXTPROC __glewTexturePageCommitmentEXT

    PFNGLACTIVESTENCILFACEEXTPROC __glewActiveStencilFaceEXT

    PFNGLTEXSUBIMAGE1DEXTPROC __glewTexSubImage1DEXT

    PFNGLTEXSUBIMAGE2DEXTPROC __glewTexSubImage2DEXT

    PFNGLTEXSUBIMAGE3DEXTPROC __glewTexSubImage3DEXT

    PFNGLTEXIMAGE3DEXTPROC __glewTexImage3DEXT

    PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC __glewFramebufferTextureLayerEXT

    PFNGLTEXBUFFEREXTPROC __glewTexBufferEXT

    PFNGLCLEARCOLORIIEXTPROC __glewClearColorIiEXT

    PFNGLCLEARCOLORIUIEXTPROC __glewClearColorIuiEXT

    PFNGLGETTEXPARAMETERIIVEXTPROC __glewGetTexParameterIivEXT

    PFNGLGETTEXPARAMETERIUIVEXTPROC __glewGetTexParameterIuivEXT

    PFNGLTEXPARAMETERIIVEXTPROC __glewTexParameterIivEXT

    PFNGLTEXPARAMETERIUIVEXTPROC __glewTexParameterIuivEXT

    PFNGLARETEXTURESRESIDENTEXTPROC __glewAreTexturesResidentEXT

    PFNGLBINDTEXTUREEXTPROC __glewBindTextureEXT

    PFNGLDELETETEXTURESEXTPROC __glewDeleteTexturesEXT

    PFNGLGENTEXTURESEXTPROC __glewGenTexturesEXT

    PFNGLISTEXTUREEXTPROC __glewIsTextureEXT

    PFNGLPRIORITIZETEXTURESEXTPROC __glewPrioritizeTexturesEXT

    PFNGLTEXTURENORMALEXTPROC __glewTextureNormalEXT

    PFNGLTEXSTORAGE1DEXTPROC __glewTexStorage1DEXT

    PFNGLTEXSTORAGE2DEXTPROC __glewTexStorage2DEXT

    PFNGLTEXSTORAGE3DEXTPROC __glewTexStorage3DEXT

    PFNGLTEXTURESTORAGE1DEXTPROC __glewTextureStorage1DEXT

    PFNGLTEXTURESTORAGE2DEXTPROC __glewTextureStorage2DEXT

    PFNGLTEXTURESTORAGE3DEXTPROC __glewTextureStorage3DEXT

    PFNGLTEXTUREVIEWEXTPROC __glewTextureViewEXT

    PFNGLGETQUERYOBJECTI64VEXTPROC __glewGetQueryObjecti64vEXT

    PFNGLGETQUERYOBJECTUI64VEXTPROC __glewGetQueryObjectui64vEXT

    PFNGLBEGINTRANSFORMFEEDBACKEXTPROC __glewBeginTransformFeedbackEXT

    PFNGLBINDBUFFERBASEEXTPROC __glewBindBufferBaseEXT

    PFNGLBINDBUFFEROFFSETEXTPROC __glewBindBufferOffsetEXT

    PFNGLBINDBUFFERRANGEEXTPROC __glewBindBufferRangeEXT

    PFNGLENDTRANSFORMFEEDBACKEXTPROC __glewEndTransformFeedbackEXT

    PFNGLGETTRANSFORMFEEDBACKVARYINGEXTPROC __glewGetTransformFeedbackVaryingEXT

    PFNGLTRANSFORMFEEDBACKVARYINGSEXTPROC __glewTransformFeedbackVaryingsEXT

    PFNGLARRAYELEMENTEXTPROC __glewArrayElementEXT

    PFNGLCOLORPOINTEREXTPROC __glewColorPointerEXT

    PFNGLDRAWARRAYSEXTPROC __glewDrawArraysEXT

    PFNGLEDGEFLAGPOINTEREXTPROC __glewEdgeFlagPointerEXT

    PFNGLINDEXPOINTEREXTPROC __glewIndexPointerEXT

    PFNGLNORMALPOINTEREXTPROC __glewNormalPointerEXT

    PFNGLTEXCOORDPOINTEREXTPROC __glewTexCoordPointerEXT

    PFNGLVERTEXPOINTEREXTPROC __glewVertexPointerEXT

    PFNGLBINDARRAYSETEXTPROC __glewBindArraySetEXT

    PFNGLCREATEARRAYSETEXTPROC __glewCreateArraySetExt

    PFNGLDELETEARRAYSETSEXTPROC __glewDeleteArraySetsEXT

    PFNGLGETVERTEXATTRIBLDVEXTPROC __glewGetVertexAttribLdvEXT

    PFNGLVERTEXARRAYVERTEXATTRIBLOFFSETEXTPROC __glewVertexArrayVertexAttribLOffsetEXT

    PFNGLVERTEXATTRIBL1DEXTPROC __glewVertexAttribL1dEXT

    PFNGLVERTEXATTRIBL1DVEXTPROC __glewVertexAttribL1dvEXT

    PFNGLVERTEXATTRIBL2DEXTPROC __glewVertexAttribL2dEXT

    PFNGLVERTEXATTRIBL2DVEXTPROC __glewVertexAttribL2dvEXT

    PFNGLVERTEXATTRIBL3DEXTPROC __glewVertexAttribL3dEXT

    PFNGLVERTEXATTRIBL3DVEXTPROC __glewVertexAttribL3dvEXT

    PFNGLVERTEXATTRIBL4DEXTPROC __glewVertexAttribL4dEXT

    PFNGLVERTEXATTRIBL4DVEXTPROC __glewVertexAttribL4dvEXT

    PFNGLVERTEXATTRIBLPOINTEREXTPROC __glewVertexAttribLPointerEXT

    PFNGLBEGINVERTEXSHADEREXTPROC __glewBeginVertexShaderEXT

    PFNGLBINDLIGHTPARAMETEREXTPROC __glewBindLightParameterEXT

    PFNGLBINDMATERIALPARAMETEREXTPROC __glewBindMaterialParameterEXT

    PFNGLBINDPARAMETEREXTPROC __glewBindParameterEXT

    PFNGLBINDTEXGENPARAMETEREXTPROC __glewBindTexGenParameterEXT

    PFNGLBINDTEXTUREUNITPARAMETEREXTPROC __glewBindTextureUnitParameterEXT

    PFNGLBINDVERTEXSHADEREXTPROC __glewBindVertexShaderEXT

    PFNGLDELETEVERTEXSHADEREXTPROC __glewDeleteVertexShaderEXT

    PFNGLDISABLEVARIANTCLIENTSTATEEXTPROC __glewDisableVariantClientStateEXT

    PFNGLENABLEVARIANTCLIENTSTATEEXTPROC __glewEnableVariantClientStateEXT

    PFNGLENDVERTEXSHADEREXTPROC __glewEndVertexShaderEXT

    PFNGLEXTRACTCOMPONENTEXTPROC __glewExtractComponentEXT

    PFNGLGENSYMBOLSEXTPROC __glewGenSymbolsEXT

    PFNGLGENVERTEXSHADERSEXTPROC __glewGenVertexShadersEXT

    PFNGLGETINVARIANTBOOLEANVEXTPROC __glewGetInvariantBooleanvEXT

    PFNGLGETINVARIANTFLOATVEXTPROC __glewGetInvariantFloatvEXT

    PFNGLGETINVARIANTINTEGERVEXTPROC __glewGetInvariantIntegervEXT

    PFNGLGETLOCALCONSTANTBOOLEANVEXTPROC __glewGetLocalConstantBooleanvEXT

    PFNGLGETLOCALCONSTANTFLOATVEXTPROC __glewGetLocalConstantFloatvEXT

    PFNGLGETLOCALCONSTANTINTEGERVEXTPROC __glewGetLocalConstantIntegervEXT

    PFNGLGETVARIANTBOOLEANVEXTPROC __glewGetVariantBooleanvEXT

    PFNGLGETVARIANTFLOATVEXTPROC __glewGetVariantFloatvEXT

    PFNGLGETVARIANTINTEGERVEXTPROC __glewGetVariantIntegervEXT

    PFNGLGETVARIANTPOINTERVEXTPROC __glewGetVariantPointervEXT

    PFNGLINSERTCOMPONENTEXTPROC __glewInsertComponentEXT

    PFNGLISVARIANTENABLEDEXTPROC __glewIsVariantEnabledEXT

    PFNGLSETINVARIANTEXTPROC __glewSetInvariantEXT

    PFNGLSETLOCALCONSTANTEXTPROC __glewSetLocalConstantEXT

    PFNGLSHADEROP1EXTPROC __glewShaderOp1EXT

    PFNGLSHADEROP2EXTPROC __glewShaderOp2EXT

    PFNGLSHADEROP3EXTPROC __glewShaderOp3EXT

    PFNGLSWIZZLEEXTPROC __glewSwizzleEXT

    PFNGLVARIANTPOINTEREXTPROC __glewVariantPointerEXT

    PFNGLVARIANTBVEXTPROC __glewVariantbvEXT

    PFNGLVARIANTDVEXTPROC __glewVariantdvEXT

    PFNGLVARIANTFVEXTPROC __glewVariantfvEXT

    PFNGLVARIANTIVEXTPROC __glewVariantivEXT

    PFNGLVARIANTSVEXTPROC __glewVariantsvEXT

    PFNGLVARIANTUBVEXTPROC __glewVariantubvEXT

    PFNGLVARIANTUIVEXTPROC __glewVariantuivEXT

    PFNGLVARIANTUSVEXTPROC __glewVariantusvEXT

    PFNGLWRITEMASKEXTPROC __glewWriteMaskEXT

    PFNGLVERTEXWEIGHTPOINTEREXTPROC __glewVertexWeightPointerEXT

    PFNGLVERTEXWEIGHTFEXTPROC __glewVertexWeightfEXT

    PFNGLVERTEXWEIGHTFVEXTPROC __glewVertexWeightfvEXT

    PFNGLACQUIREKEYEDMUTEXWIN32EXTPROC __glewAcquireKeyedMutexWin32EXT

    PFNGLRELEASEKEYEDMUTEXWIN32EXTPROC __glewReleaseKeyedMutexWin32EXT

    PFNGLWINDOWRECTANGLESEXTPROC __glewWindowRectanglesEXT

    PFNGLIMPORTSYNCEXTPROC __glewImportSyncEXT

    PFNGLFRAMETERMINATORGREMEDYPROC __glewFrameTerminatorGREMEDY

    PFNGLSTRINGMARKERGREMEDYPROC __glewStringMarkerGREMEDY

    PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC __glewGetImageTransformParameterfvHP

    PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC __glewGetImageTransformParameterivHP

    PFNGLIMAGETRANSFORMPARAMETERFHPPROC __glewImageTransformParameterfHP

    PFNGLIMAGETRANSFORMPARAMETERFVHPPROC __glewImageTransformParameterfvHP

    PFNGLIMAGETRANSFORMPARAMETERIHPPROC __glewImageTransformParameteriHP

    PFNGLIMAGETRANSFORMPARAMETERIVHPPROC __glewImageTransformParameterivHP

    PFNGLMULTIMODEDRAWARRAYSIBMPROC __glewMultiModeDrawArraysIBM

    PFNGLMULTIMODEDRAWELEMENTSIBMPROC __glewMultiModeDrawElementsIBM

    PFNGLCOLORPOINTERLISTIBMPROC __glewColorPointerListIBM

    PFNGLEDGEFLAGPOINTERLISTIBMPROC __glewEdgeFlagPointerListIBM

    PFNGLFOGCOORDPOINTERLISTIBMPROC __glewFogCoordPointerListIBM

    PFNGLINDEXPOINTERLISTIBMPROC __glewIndexPointerListIBM

    PFNGLNORMALPOINTERLISTIBMPROC __glewNormalPointerListIBM

    PFNGLSECONDARYCOLORPOINTERLISTIBMPROC __glewSecondaryColorPointerListIBM

    PFNGLTEXCOORDPOINTERLISTIBMPROC __glewTexCoordPointerListIBM

    PFNGLVERTEXPOINTERLISTIBMPROC __glewVertexPointerListIBM

    PFNGLMAPTEXTURE2DINTELPROC __glewMapTexture2DINTEL

    PFNGLSYNCTEXTUREINTELPROC __glewSyncTextureINTEL

    PFNGLUNMAPTEXTURE2DINTELPROC __glewUnmapTexture2DINTEL

    PFNGLCOLORPOINTERVINTELPROC __glewColorPointervINTEL

    PFNGLNORMALPOINTERVINTELPROC __glewNormalPointervINTEL

    PFNGLTEXCOORDPOINTERVINTELPROC __glewTexCoordPointervINTEL

    PFNGLVERTEXPOINTERVINTELPROC __glewVertexPointervINTEL

    PFNGLBEGINPERFQUERYINTELPROC __glewBeginPerfQueryINTEL

    PFNGLCREATEPERFQUERYINTELPROC __glewCreatePerfQueryINTEL

    PFNGLDELETEPERFQUERYINTELPROC __glewDeletePerfQueryINTEL

    PFNGLENDPERFQUERYINTELPROC __glewEndPerfQueryINTEL

    PFNGLGETFIRSTPERFQUERYIDINTELPROC __glewGetFirstPerfQueryIdINTEL

    PFNGLGETNEXTPERFQUERYIDINTELPROC __glewGetNextPerfQueryIdINTEL

    PFNGLGETPERFCOUNTERINFOINTELPROC __glewGetPerfCounterInfoINTEL

    PFNGLGETPERFQUERYDATAINTELPROC __glewGetPerfQueryDataINTEL

    PFNGLGETPERFQUERYIDBYNAMEINTELPROC __glewGetPerfQueryIdByNameINTEL

    PFNGLGETPERFQUERYINFOINTELPROC __glewGetPerfQueryInfoINTEL

    PFNGLTEXSCISSORFUNCINTELPROC __glewTexScissorFuncINTEL

    PFNGLTEXSCISSORINTELPROC __glewTexScissorINTEL

    PFNGLBLENDBARRIERKHRPROC __glewBlendBarrierKHR

    PFNGLDEBUGMESSAGECALLBACKPROC __glewDebugMessageCallback

    PFNGLDEBUGMESSAGECONTROLPROC __glewDebugMessageControl

    PFNGLDEBUGMESSAGEINSERTPROC __glewDebugMessageInsert

    PFNGLGETDEBUGMESSAGELOGPROC __glewGetDebugMessageLog

    PFNGLGETOBJECTLABELPROC __glewGetObjectLabel

    PFNGLGETOBJECTPTRLABELPROC __glewGetObjectPtrLabel

    PFNGLOBJECTLABELPROC __glewObjectLabel

    PFNGLOBJECTPTRLABELPROC __glewObjectPtrLabel

    PFNGLPOPDEBUGGROUPPROC __glewPopDebugGroup

    PFNGLPUSHDEBUGGROUPPROC __glewPushDebugGroup

    PFNGLMAXSHADERCOMPILERTHREADSKHRPROC __glewMaxShaderCompilerThreadsKHR

    PFNGLGETNUNIFORMFVPROC __glewGetnUniformfv

    PFNGLGETNUNIFORMIVPROC __glewGetnUniformiv

    PFNGLGETNUNIFORMUIVPROC __glewGetnUniformuiv

    PFNGLREADNPIXELSPROC __glewReadnPixels

    PFNGLBUFFERREGIONENABLEDPROC __glewBufferRegionEnabled

    PFNGLDELETEBUFFERREGIONPROC __glewDeleteBufferRegion

    PFNGLDRAWBUFFERREGIONPROC __glewDrawBufferRegion

    PFNGLNEWBUFFERREGIONPROC __glewNewBufferRegion

    PFNGLREADBUFFERREGIONPROC __glewReadBufferRegion

    PFNGLRESIZEBUFFERSMESAPROC __glewResizeBuffersMESA

    PFNGLWINDOWPOS2DMESAPROC __glewWindowPos2dMESA

    PFNGLWINDOWPOS2DVMESAPROC __glewWindowPos2dvMESA

    PFNGLWINDOWPOS2FMESAPROC __glewWindowPos2fMESA

    PFNGLWINDOWPOS2FVMESAPROC __glewWindowPos2fvMESA

    PFNGLWINDOWPOS2IMESAPROC __glewWindowPos2iMESA

    PFNGLWINDOWPOS2IVMESAPROC __glewWindowPos2ivMESA

    PFNGLWINDOWPOS2SMESAPROC __glewWindowPos2sMESA

    PFNGLWINDOWPOS2SVMESAPROC __glewWindowPos2svMESA

    PFNGLWINDOWPOS3DMESAPROC __glewWindowPos3dMESA

    PFNGLWINDOWPOS3DVMESAPROC __glewWindowPos3dvMESA

    PFNGLWINDOWPOS3FMESAPROC __glewWindowPos3fMESA

    PFNGLWINDOWPOS3FVMESAPROC __glewWindowPos3fvMESA

    PFNGLWINDOWPOS3IMESAPROC __glewWindowPos3iMESA

    PFNGLWINDOWPOS3IVMESAPROC __glewWindowPos3ivMESA

    PFNGLWINDOWPOS3SMESAPROC __glewWindowPos3sMESA

    PFNGLWINDOWPOS3SVMESAPROC __glewWindowPos3svMESA

    PFNGLWINDOWPOS4DMESAPROC __glewWindowPos4dMESA

    PFNGLWINDOWPOS4DVMESAPROC __glewWindowPos4dvMESA

    PFNGLWINDOWPOS4FMESAPROC __glewWindowPos4fMESA

    PFNGLWINDOWPOS4FVMESAPROC __glewWindowPos4fvMESA

    PFNGLWINDOWPOS4IMESAPROC __glewWindowPos4iMESA

    PFNGLWINDOWPOS4IVMESAPROC __glewWindowPos4ivMESA

    PFNGLWINDOWPOS4SMESAPROC __glewWindowPos4sMESA

    PFNGLWINDOWPOS4SVMESAPROC __glewWindowPos4svMESA

    PFNGLBEGINCONDITIONALRENDERNVXPROC __glewBeginConditionalRenderNVX

    PFNGLENDCONDITIONALRENDERNVXPROC __glewEndConditionalRenderNVX

    PFNGLLGPUCOPYIMAGESUBDATANVXPROC __glewLGPUCopyImageSubDataNVX

    PFNGLLGPUINTERLOCKNVXPROC __glewLGPUInterlockNVX

    PFNGLLGPUNAMEDBUFFERSUBDATANVXPROC __glewLGPUNamedBufferSubDataNVX

    PFNGLSTEREOPARAMETERFNVPROC __glewStereoParameterfNV

    PFNGLSTEREOPARAMETERINVPROC __glewStereoParameteriNV

    PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSNVPROC __glewMultiDrawArraysIndirectBindlessNV

    PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSNVPROC __glewMultiDrawElementsIndirectBindlessNV

    PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSCOUNTNVPROC __glewMultiDrawArraysIndirectBindlessCountNV

    PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSCOUNTNVPROC __glewMultiDrawElementsIndirectBindlessCountNV

    PFNGLGETIMAGEHANDLENVPROC __glewGetImageHandleNV

    PFNGLGETTEXTUREHANDLENVPROC __glewGetTextureHandleNV

    PFNGLGETTEXTURESAMPLERHANDLENVPROC __glewGetTextureSamplerHandleNV

    PFNGLISIMAGEHANDLERESIDENTNVPROC __glewIsImageHandleResidentNV

    PFNGLISTEXTUREHANDLERESIDENTNVPROC __glewIsTextureHandleResidentNV

    PFNGLMAKEIMAGEHANDLENONRESIDENTNVPROC __glewMakeImageHandleNonResidentNV

    PFNGLMAKEIMAGEHANDLERESIDENTNVPROC __glewMakeImageHandleResidentNV

    PFNGLMAKETEXTUREHANDLENONRESIDENTNVPROC __glewMakeTextureHandleNonResidentNV

    PFNGLMAKETEXTUREHANDLERESIDENTNVPROC __glewMakeTextureHandleResidentNV

    PFNGLPROGRAMUNIFORMHANDLEUI64NVPROC __glewProgramUniformHandleui64NV

    PFNGLPROGRAMUNIFORMHANDLEUI64VNVPROC __glewProgramUniformHandleui64vNV

    PFNGLUNIFORMHANDLEUI64NVPROC __glewUniformHandleui64NV

    PFNGLUNIFORMHANDLEUI64VNVPROC __glewUniformHandleui64vNV

    PFNGLBLENDBARRIERNVPROC __glewBlendBarrierNV

    PFNGLBLENDPARAMETERINVPROC __glewBlendParameteriNV

    PFNGLVIEWPORTPOSITIONWSCALENVPROC __glewViewportPositionWScaleNV

    PFNGLCALLCOMMANDLISTNVPROC __glewCallCommandListNV

    PFNGLCOMMANDLISTSEGMENTSNVPROC __glewCommandListSegmentsNV

    PFNGLCOMPILECOMMANDLISTNVPROC __glewCompileCommandListNV

    PFNGLCREATECOMMANDLISTSNVPROC __glewCreateCommandListsNV

    PFNGLCREATESTATESNVPROC __glewCreateStatesNV

    PFNGLDELETECOMMANDLISTSNVPROC __glewDeleteCommandListsNV

    PFNGLDELETESTATESNVPROC __glewDeleteStatesNV

    PFNGLDRAWCOMMANDSADDRESSNVPROC __glewDrawCommandsAddressNV

    PFNGLDRAWCOMMANDSNVPROC __glewDrawCommandsNV

    PFNGLDRAWCOMMANDSSTATESADDRESSNVPROC __glewDrawCommandsStatesAddressNV

    PFNGLDRAWCOMMANDSSTATESNVPROC __glewDrawCommandsStatesNV

    PFNGLGETCOMMANDHEADERNVPROC __glewGetCommandHeaderNV

    PFNGLGETSTAGEINDEXNVPROC __glewGetStageIndexNV

    PFNGLISCOMMANDLISTNVPROC __glewIsCommandListNV

    PFNGLISSTATENVPROC __glewIsStateNV

    PFNGLLISTDRAWCOMMANDSSTATESCLIENTNVPROC __glewListDrawCommandsStatesClientNV

    PFNGLSTATECAPTURENVPROC __glewStateCaptureNV

    PFNGLBEGINCONDITIONALRENDERNVPROC __glewBeginConditionalRenderNV

    PFNGLENDCONDITIONALRENDERNVPROC __glewEndConditionalRenderNV

    PFNGLSUBPIXELPRECISIONBIASNVPROC __glewSubpixelPrecisionBiasNV

    PFNGLCONSERVATIVERASTERPARAMETERFNVPROC __glewConservativeRasterParameterfNV

    PFNGLCONSERVATIVERASTERPARAMETERINVPROC __glewConservativeRasterParameteriNV

    PFNGLCOPYBUFFERSUBDATANVPROC __glewCopyBufferSubDataNV

    PFNGLCOPYIMAGESUBDATANVPROC __glewCopyImageSubDataNV

    PFNGLCLEARDEPTHDNVPROC __glewClearDepthdNV

    PFNGLDEPTHBOUNDSDNVPROC __glewDepthBoundsdNV

    PFNGLDEPTHRANGEDNVPROC __glewDepthRangedNV

    PFNGLDRAWBUFFERSNVPROC __glewDrawBuffersNV

    PFNGLDRAWARRAYSINSTANCEDNVPROC __glewDrawArraysInstancedNV

    PFNGLDRAWELEMENTSINSTANCEDNVPROC __glewDrawElementsInstancedNV

    PFNGLDRAWTEXTURENVPROC __glewDrawTextureNV

    PFNGLDRAWVKIMAGENVPROC __glewDrawVkImageNV

    PFNGLGETVKPROCADDRNVPROC __glewGetVkProcAddrNV

    PFNGLSIGNALVKFENCENVPROC __glewSignalVkFenceNV

    PFNGLSIGNALVKSEMAPHORENVPROC __glewSignalVkSemaphoreNV

    PFNGLWAITVKSEMAPHORENVPROC __glewWaitVkSemaphoreNV

    PFNGLEVALMAPSNVPROC __glewEvalMapsNV

    PFNGLGETMAPATTRIBPARAMETERFVNVPROC __glewGetMapAttribParameterfvNV

    PFNGLGETMAPATTRIBPARAMETERIVNVPROC __glewGetMapAttribParameterivNV

    PFNGLGETMAPCONTROLPOINTSNVPROC __glewGetMapControlPointsNV

    PFNGLGETMAPPARAMETERFVNVPROC __glewGetMapParameterfvNV

    PFNGLGETMAPPARAMETERIVNVPROC __glewGetMapParameterivNV

    PFNGLMAPCONTROLPOINTSNVPROC __glewMapControlPointsNV

    PFNGLMAPPARAMETERFVNVPROC __glewMapParameterfvNV

    PFNGLMAPPARAMETERIVNVPROC __glewMapParameterivNV

    PFNGLGETMULTISAMPLEFVNVPROC __glewGetMultisamplefvNV

    PFNGLSAMPLEMASKINDEXEDNVPROC __glewSampleMaskIndexedNV

    PFNGLTEXRENDERBUFFERNVPROC __glewTexRenderbufferNV

    PFNGLDELETEFENCESNVPROC __glewDeleteFencesNV

    PFNGLFINISHFENCENVPROC __glewFinishFenceNV

    PFNGLGENFENCESNVPROC __glewGenFencesNV

    PFNGLGETFENCEIVNVPROC __glewGetFenceivNV

    PFNGLISFENCENVPROC __glewIsFenceNV

    PFNGLSETFENCENVPROC __glewSetFenceNV

    PFNGLTESTFENCENVPROC __glewTestFenceNV

    PFNGLFRAGMENTCOVERAGECOLORNVPROC __glewFragmentCoverageColorNV

    PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC __glewGetProgramNamedParameterdvNV

    PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC __glewGetProgramNamedParameterfvNV

    PFNGLPROGRAMNAMEDPARAMETER4DNVPROC __glewProgramNamedParameter4dNV

    PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC __glewProgramNamedParameter4dvNV

    PFNGLPROGRAMNAMEDPARAMETER4FNVPROC __glewProgramNamedParameter4fNV

    PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC __glewProgramNamedParameter4fvNV

    PFNGLBLITFRAMEBUFFERNVPROC __glewBlitFramebufferNV

    PFNGLRENDERBUFFERSTORAGEMULTISAMPLENVPROC __glewRenderbufferStorageMultisampleNV

    PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC __glewRenderbufferStorageMultisampleCoverageNV

    PFNGLPROGRAMVERTEXLIMITNVPROC __glewProgramVertexLimitNV

    PFNGLMULTICASTBARRIERNVPROC __glewMulticastBarrierNV

    PFNGLMULTICASTBLITFRAMEBUFFERNVPROC __glewMulticastBlitFramebufferNV

    PFNGLMULTICASTBUFFERSUBDATANVPROC __glewMulticastBufferSubDataNV

    PFNGLMULTICASTCOPYBUFFERSUBDATANVPROC __glewMulticastCopyBufferSubDataNV

    PFNGLMULTICASTCOPYIMAGESUBDATANVPROC __glewMulticastCopyImageSubDataNV

    PFNGLMULTICASTFRAMEBUFFERSAMPLELOCATIONSFVNVPROC __glewMulticastFramebufferSampleLocationsfvNV

    PFNGLMULTICASTGETQUERYOBJECTI64VNVPROC __glewMulticastGetQueryObjecti64vNV

    PFNGLMULTICASTGETQUERYOBJECTIVNVPROC __glewMulticastGetQueryObjectivNV

    PFNGLMULTICASTGETQUERYOBJECTUI64VNVPROC __glewMulticastGetQueryObjectui64vNV

    PFNGLMULTICASTGETQUERYOBJECTUIVNVPROC __glewMulticastGetQueryObjectuivNV

    PFNGLMULTICASTWAITSYNCNVPROC __glewMulticastWaitSyncNV

    PFNGLRENDERGPUMASKNVPROC __glewRenderGpuMaskNV

    PFNGLPROGRAMENVPARAMETERI4INVPROC __glewProgramEnvParameterI4iNV

    PFNGLPROGRAMENVPARAMETERI4IVNVPROC __glewProgramEnvParameterI4ivNV

    PFNGLPROGRAMENVPARAMETERI4UINVPROC __glewProgramEnvParameterI4uiNV

    PFNGLPROGRAMENVPARAMETERI4UIVNVPROC __glewProgramEnvParameterI4uivNV

    PFNGLPROGRAMENVPARAMETERSI4IVNVPROC __glewProgramEnvParametersI4ivNV

    PFNGLPROGRAMENVPARAMETERSI4UIVNVPROC __glewProgramEnvParametersI4uivNV

    PFNGLPROGRAMLOCALPARAMETERI4INVPROC __glewProgramLocalParameterI4iNV

    PFNGLPROGRAMLOCALPARAMETERI4IVNVPROC __glewProgramLocalParameterI4ivNV

    PFNGLPROGRAMLOCALPARAMETERI4UINVPROC __glewProgramLocalParameterI4uiNV

    PFNGLPROGRAMLOCALPARAMETERI4UIVNVPROC __glewProgramLocalParameterI4uivNV

    PFNGLPROGRAMLOCALPARAMETERSI4IVNVPROC __glewProgramLocalParametersI4ivNV

    PFNGLPROGRAMLOCALPARAMETERSI4UIVNVPROC __glewProgramLocalParametersI4uivNV

    PFNGLGETUNIFORMI64VNVPROC __glewGetUniformi64vNV

    PFNGLGETUNIFORMUI64VNVPROC __glewGetUniformui64vNV

    PFNGLPROGRAMUNIFORM1I64NVPROC __glewProgramUniform1i64NV

    PFNGLPROGRAMUNIFORM1I64VNVPROC __glewProgramUniform1i64vNV

    PFNGLPROGRAMUNIFORM1UI64NVPROC __glewProgramUniform1ui64NV

    PFNGLPROGRAMUNIFORM1UI64VNVPROC __glewProgramUniform1ui64vNV

    PFNGLPROGRAMUNIFORM2I64NVPROC __glewProgramUniform2i64NV

    PFNGLPROGRAMUNIFORM2I64VNVPROC __glewProgramUniform2i64vNV

    PFNGLPROGRAMUNIFORM2UI64NVPROC __glewProgramUniform2ui64NV

    PFNGLPROGRAMUNIFORM2UI64VNVPROC __glewProgramUniform2ui64vNV

    PFNGLPROGRAMUNIFORM3I64NVPROC __glewProgramUniform3i64NV

    PFNGLPROGRAMUNIFORM3I64VNVPROC __glewProgramUniform3i64vNV

    PFNGLPROGRAMUNIFORM3UI64NVPROC __glewProgramUniform3ui64NV

    PFNGLPROGRAMUNIFORM3UI64VNVPROC __glewProgramUniform3ui64vNV

    PFNGLPROGRAMUNIFORM4I64NVPROC __glewProgramUniform4i64NV

    PFNGLPROGRAMUNIFORM4I64VNVPROC __glewProgramUniform4i64vNV

    PFNGLPROGRAMUNIFORM4UI64NVPROC __glewProgramUniform4ui64NV

    PFNGLPROGRAMUNIFORM4UI64VNVPROC __glewProgramUniform4ui64vNV

    PFNGLUNIFORM1I64NVPROC __glewUniform1i64NV

    PFNGLUNIFORM1I64VNVPROC __glewUniform1i64vNV

    PFNGLUNIFORM1UI64NVPROC __glewUniform1ui64NV

    PFNGLUNIFORM1UI64VNVPROC __glewUniform1ui64vNV

    PFNGLUNIFORM2I64NVPROC __glewUniform2i64NV

    PFNGLUNIFORM2I64VNVPROC __glewUniform2i64vNV

    PFNGLUNIFORM2UI64NVPROC __glewUniform2ui64NV

    PFNGLUNIFORM2UI64VNVPROC __glewUniform2ui64vNV

    PFNGLUNIFORM3I64NVPROC __glewUniform3i64NV

    PFNGLUNIFORM3I64VNVPROC __glewUniform3i64vNV

    PFNGLUNIFORM3UI64NVPROC __glewUniform3ui64NV

    PFNGLUNIFORM3UI64VNVPROC __glewUniform3ui64vNV

    PFNGLUNIFORM4I64NVPROC __glewUniform4i64NV

    PFNGLUNIFORM4I64VNVPROC __glewUniform4i64vNV

    PFNGLUNIFORM4UI64NVPROC __glewUniform4ui64NV

    PFNGLUNIFORM4UI64VNVPROC __glewUniform4ui64vNV

    PFNGLCOLOR3HNVPROC __glewColor3hNV

    PFNGLCOLOR3HVNVPROC __glewColor3hvNV

    PFNGLCOLOR4HNVPROC __glewColor4hNV

    PFNGLCOLOR4HVNVPROC __glewColor4hvNV

    PFNGLFOGCOORDHNVPROC __glewFogCoordhNV

    PFNGLFOGCOORDHVNVPROC __glewFogCoordhvNV

    PFNGLMULTITEXCOORD1HNVPROC __glewMultiTexCoord1hNV

    PFNGLMULTITEXCOORD1HVNVPROC __glewMultiTexCoord1hvNV

    PFNGLMULTITEXCOORD2HNVPROC __glewMultiTexCoord2hNV

    PFNGLMULTITEXCOORD2HVNVPROC __glewMultiTexCoord2hvNV

    PFNGLMULTITEXCOORD3HNVPROC __glewMultiTexCoord3hNV

    PFNGLMULTITEXCOORD3HVNVPROC __glewMultiTexCoord3hvNV

    PFNGLMULTITEXCOORD4HNVPROC __glewMultiTexCoord4hNV

    PFNGLMULTITEXCOORD4HVNVPROC __glewMultiTexCoord4hvNV

    PFNGLNORMAL3HNVPROC __glewNormal3hNV

    PFNGLNORMAL3HVNVPROC __glewNormal3hvNV

    PFNGLSECONDARYCOLOR3HNVPROC __glewSecondaryColor3hNV

    PFNGLSECONDARYCOLOR3HVNVPROC __glewSecondaryColor3hvNV

    PFNGLTEXCOORD1HNVPROC __glewTexCoord1hNV

    PFNGLTEXCOORD1HVNVPROC __glewTexCoord1hvNV

    PFNGLTEXCOORD2HNVPROC __glewTexCoord2hNV

    PFNGLTEXCOORD2HVNVPROC __glewTexCoord2hvNV

    PFNGLTEXCOORD3HNVPROC __glewTexCoord3hNV

    PFNGLTEXCOORD3HVNVPROC __glewTexCoord3hvNV

    PFNGLTEXCOORD4HNVPROC __glewTexCoord4hNV

    PFNGLTEXCOORD4HVNVPROC __glewTexCoord4hvNV

    PFNGLVERTEX2HNVPROC __glewVertex2hNV

    PFNGLVERTEX2HVNVPROC __glewVertex2hvNV

    PFNGLVERTEX3HNVPROC __glewVertex3hNV

    PFNGLVERTEX3HVNVPROC __glewVertex3hvNV

    PFNGLVERTEX4HNVPROC __glewVertex4hNV

    PFNGLVERTEX4HVNVPROC __glewVertex4hvNV

    PFNGLVERTEXATTRIB1HNVPROC __glewVertexAttrib1hNV

    PFNGLVERTEXATTRIB1HVNVPROC __glewVertexAttrib1hvNV

    PFNGLVERTEXATTRIB2HNVPROC __glewVertexAttrib2hNV

    PFNGLVERTEXATTRIB2HVNVPROC __glewVertexAttrib2hvNV

    PFNGLVERTEXATTRIB3HNVPROC __glewVertexAttrib3hNV

    PFNGLVERTEXATTRIB3HVNVPROC __glewVertexAttrib3hvNV

    PFNGLVERTEXATTRIB4HNVPROC __glewVertexAttrib4hNV

    PFNGLVERTEXATTRIB4HVNVPROC __glewVertexAttrib4hvNV

    PFNGLVERTEXATTRIBS1HVNVPROC __glewVertexAttribs1hvNV

    PFNGLVERTEXATTRIBS2HVNVPROC __glewVertexAttribs2hvNV

    PFNGLVERTEXATTRIBS3HVNVPROC __glewVertexAttribs3hvNV

    PFNGLVERTEXATTRIBS4HVNVPROC __glewVertexAttribs4hvNV

    PFNGLVERTEXWEIGHTHNVPROC __glewVertexWeighthNV

    PFNGLVERTEXWEIGHTHVNVPROC __glewVertexWeighthvNV

    PFNGLVERTEXATTRIBDIVISORNVPROC __glewVertexAttribDivisorNV

    PFNGLGETINTERNALFORMATSAMPLEIVNVPROC __glewGetInternalformatSampleivNV

    PFNGLUNIFORMMATRIX2X3FVNVPROC __glewUniformMatrix2x3fvNV

    PFNGLUNIFORMMATRIX2X4FVNVPROC __glewUniformMatrix2x4fvNV

    PFNGLUNIFORMMATRIX3X2FVNVPROC __glewUniformMatrix3x2fvNV

    PFNGLUNIFORMMATRIX3X4FVNVPROC __glewUniformMatrix3x4fvNV

    PFNGLUNIFORMMATRIX4X2FVNVPROC __glewUniformMatrix4x2fvNV

    PFNGLUNIFORMMATRIX4X3FVNVPROC __glewUniformMatrix4x3fvNV

    PFNGLBEGINOCCLUSIONQUERYNVPROC __glewBeginOcclusionQueryNV

    PFNGLDELETEOCCLUSIONQUERIESNVPROC __glewDeleteOcclusionQueriesNV

    PFNGLENDOCCLUSIONQUERYNVPROC __glewEndOcclusionQueryNV

    PFNGLGENOCCLUSIONQUERIESNVPROC __glewGenOcclusionQueriesNV

    PFNGLGETOCCLUSIONQUERYIVNVPROC __glewGetOcclusionQueryivNV

    PFNGLGETOCCLUSIONQUERYUIVNVPROC __glewGetOcclusionQueryuivNV

    PFNGLISOCCLUSIONQUERYNVPROC __glewIsOcclusionQueryNV

    PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC __glewProgramBufferParametersIivNV

    PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC __glewProgramBufferParametersIuivNV

    PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC __glewProgramBufferParametersfvNV

    PFNGLCOPYPATHNVPROC __glewCopyPathNV

    PFNGLCOVERFILLPATHINSTANCEDNVPROC __glewCoverFillPathInstancedNV

    PFNGLCOVERFILLPATHNVPROC __glewCoverFillPathNV

    PFNGLCOVERSTROKEPATHINSTANCEDNVPROC __glewCoverStrokePathInstancedNV

    PFNGLCOVERSTROKEPATHNVPROC __glewCoverStrokePathNV

    PFNGLDELETEPATHSNVPROC __glewDeletePathsNV

    PFNGLGENPATHSNVPROC __glewGenPathsNV

    PFNGLGETPATHCOLORGENFVNVPROC __glewGetPathColorGenfvNV

    PFNGLGETPATHCOLORGENIVNVPROC __glewGetPathColorGenivNV

    PFNGLGETPATHCOMMANDSNVPROC __glewGetPathCommandsNV

    PFNGLGETPATHCOORDSNVPROC __glewGetPathCoordsNV

    PFNGLGETPATHDASHARRAYNVPROC __glewGetPathDashArrayNV

    PFNGLGETPATHLENGTHNVPROC __glewGetPathLengthNV

    PFNGLGETPATHMETRICRANGENVPROC __glewGetPathMetricRangeNV

    PFNGLGETPATHMETRICSNVPROC __glewGetPathMetricsNV

    PFNGLGETPATHPARAMETERFVNVPROC __glewGetPathParameterfvNV

    PFNGLGETPATHPARAMETERIVNVPROC __glewGetPathParameterivNV

    PFNGLGETPATHSPACINGNVPROC __glewGetPathSpacingNV

    PFNGLGETPATHTEXGENFVNVPROC __glewGetPathTexGenfvNV

    PFNGLGETPATHTEXGENIVNVPROC __glewGetPathTexGenivNV

    PFNGLGETPROGRAMRESOURCEFVNVPROC __glewGetProgramResourcefvNV

    PFNGLINTERPOLATEPATHSNVPROC __glewInterpolatePathsNV

    PFNGLISPATHNVPROC __glewIsPathNV

    PFNGLISPOINTINFILLPATHNVPROC __glewIsPointInFillPathNV

    PFNGLISPOINTINSTROKEPATHNVPROC __glewIsPointInStrokePathNV

    PFNGLMATRIXLOAD3X2FNVPROC __glewMatrixLoad3x2fNV

    PFNGLMATRIXLOAD3X3FNVPROC __glewMatrixLoad3x3fNV

    PFNGLMATRIXLOADTRANSPOSE3X3FNVPROC __glewMatrixLoadTranspose3x3fNV

    PFNGLMATRIXMULT3X2FNVPROC __glewMatrixMult3x2fNV

    PFNGLMATRIXMULT3X3FNVPROC __glewMatrixMult3x3fNV

    PFNGLMATRIXMULTTRANSPOSE3X3FNVPROC __glewMatrixMultTranspose3x3fNV

    PFNGLPATHCOLORGENNVPROC __glewPathColorGenNV

    PFNGLPATHCOMMANDSNVPROC __glewPathCommandsNV

    PFNGLPATHCOORDSNVPROC __glewPathCoordsNV

    PFNGLPATHCOVERDEPTHFUNCNVPROC __glewPathCoverDepthFuncNV

    PFNGLPATHDASHARRAYNVPROC __glewPathDashArrayNV

    PFNGLPATHFOGGENNVPROC __glewPathFogGenNV

    PFNGLPATHGLYPHINDEXARRAYNVPROC __glewPathGlyphIndexArrayNV

    PFNGLPATHGLYPHINDEXRANGENVPROC __glewPathGlyphIndexRangeNV

    PFNGLPATHGLYPHRANGENVPROC __glewPathGlyphRangeNV

    PFNGLPATHGLYPHSNVPROC __glewPathGlyphsNV

    PFNGLPATHMEMORYGLYPHINDEXARRAYNVPROC __glewPathMemoryGlyphIndexArrayNV

    PFNGLPATHPARAMETERFNVPROC __glewPathParameterfNV

    PFNGLPATHPARAMETERFVNVPROC __glewPathParameterfvNV

    PFNGLPATHPARAMETERINVPROC __glewPathParameteriNV

    PFNGLPATHPARAMETERIVNVPROC __glewPathParameterivNV

    PFNGLPATHSTENCILDEPTHOFFSETNVPROC __glewPathStencilDepthOffsetNV

    PFNGLPATHSTENCILFUNCNVPROC __glewPathStencilFuncNV

    PFNGLPATHSTRINGNVPROC __glewPathStringNV

    PFNGLPATHSUBCOMMANDSNVPROC __glewPathSubCommandsNV

    PFNGLPATHSUBCOORDSNVPROC __glewPathSubCoordsNV

    PFNGLPATHTEXGENNVPROC __glewPathTexGenNV

    PFNGLPOINTALONGPATHNVPROC __glewPointAlongPathNV

    PFNGLPROGRAMPATHFRAGMENTINPUTGENNVPROC __glewProgramPathFragmentInputGenNV

    PFNGLSTENCILFILLPATHINSTANCEDNVPROC __glewStencilFillPathInstancedNV

    PFNGLSTENCILFILLPATHNVPROC __glewStencilFillPathNV

    PFNGLSTENCILSTROKEPATHINSTANCEDNVPROC __glewStencilStrokePathInstancedNV

    PFNGLSTENCILSTROKEPATHNVPROC __glewStencilStrokePathNV

    PFNGLSTENCILTHENCOVERFILLPATHINSTANCEDNVPROC __glewStencilThenCoverFillPathInstancedNV

    PFNGLSTENCILTHENCOVERFILLPATHNVPROC __glewStencilThenCoverFillPathNV

    PFNGLSTENCILTHENCOVERSTROKEPATHINSTANCEDNVPROC __glewStencilThenCoverStrokePathInstancedNV

    PFNGLSTENCILTHENCOVERSTROKEPATHNVPROC __glewStencilThenCoverStrokePathNV

    PFNGLTRANSFORMPATHNVPROC __glewTransformPathNV

    PFNGLWEIGHTPATHSNVPROC __glewWeightPathsNV

    PFNGLFLUSHPIXELDATARANGENVPROC __glewFlushPixelDataRangeNV

    PFNGLPIXELDATARANGENVPROC __glewPixelDataRangeNV

    PFNGLPOINTPARAMETERINVPROC __glewPointParameteriNV

    PFNGLPOINTPARAMETERIVNVPROC __glewPointParameterivNV

    PFNGLPOLYGONMODENVPROC __glewPolygonModeNV

    PFNGLGETVIDEOI64VNVPROC __glewGetVideoi64vNV

    PFNGLGETVIDEOIVNVPROC __glewGetVideoivNV

    PFNGLGETVIDEOUI64VNVPROC __glewGetVideoui64vNV

    PFNGLGETVIDEOUIVNVPROC __glewGetVideouivNV

    PFNGLPRESENTFRAMEDUALFILLNVPROC __glewPresentFrameDualFillNV

    PFNGLPRESENTFRAMEKEYEDNVPROC __glewPresentFrameKeyedNV

    PFNGLPRIMITIVERESTARTINDEXNVPROC __glewPrimitiveRestartIndexNV

    PFNGLPRIMITIVERESTARTNVPROC __glewPrimitiveRestartNV

    PFNGLCOMBINERINPUTNVPROC __glewCombinerInputNV

    PFNGLCOMBINEROUTPUTNVPROC __glewCombinerOutputNV

    PFNGLCOMBINERPARAMETERFNVPROC __glewCombinerParameterfNV

    PFNGLCOMBINERPARAMETERFVNVPROC __glewCombinerParameterfvNV

    PFNGLCOMBINERPARAMETERINVPROC __glewCombinerParameteriNV

    PFNGLCOMBINERPARAMETERIVNVPROC __glewCombinerParameterivNV

    PFNGLFINALCOMBINERINPUTNVPROC __glewFinalCombinerInputNV

    PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC __glewGetCombinerInputParameterfvNV

    PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC __glewGetCombinerInputParameterivNV

    PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC __glewGetCombinerOutputParameterfvNV

    PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC __glewGetCombinerOutputParameterivNV

    PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC __glewGetFinalCombinerInputParameterfvNV

    PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC __glewGetFinalCombinerInputParameterivNV

    PFNGLCOMBINERSTAGEPARAMETERFVNVPROC __glewCombinerStageParameterfvNV

    PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC __glewGetCombinerStageParameterfvNV

    PFNGLFRAMEBUFFERSAMPLELOCATIONSFVNVPROC __glewFramebufferSampleLocationsfvNV

    PFNGLNAMEDFRAMEBUFFERSAMPLELOCATIONSFVNVPROC __glewNamedFramebufferSampleLocationsfvNV

    PFNGLGETBUFFERPARAMETERUI64VNVPROC __glewGetBufferParameterui64vNV

    PFNGLGETINTEGERUI64VNVPROC __glewGetIntegerui64vNV

    PFNGLGETNAMEDBUFFERPARAMETERUI64VNVPROC __glewGetNamedBufferParameterui64vNV

    PFNGLISBUFFERRESIDENTNVPROC __glewIsBufferResidentNV

    PFNGLISNAMEDBUFFERRESIDENTNVPROC __glewIsNamedBufferResidentNV

    PFNGLMAKEBUFFERNONRESIDENTNVPROC __glewMakeBufferNonResidentNV

    PFNGLMAKEBUFFERRESIDENTNVPROC __glewMakeBufferResidentNV

    PFNGLMAKENAMEDBUFFERNONRESIDENTNVPROC __glewMakeNamedBufferNonResidentNV

    PFNGLMAKENAMEDBUFFERRESIDENTNVPROC __glewMakeNamedBufferResidentNV

    PFNGLPROGRAMUNIFORMUI64NVPROC __glewProgramUniformui64NV

    PFNGLPROGRAMUNIFORMUI64VNVPROC __glewProgramUniformui64vNV

    PFNGLUNIFORMUI64NVPROC __glewUniformui64NV

    PFNGLUNIFORMUI64VNVPROC __glewUniformui64vNV

    PFNGLCOMPRESSEDTEXIMAGE3DNVPROC __glewCompressedTexImage3DNV

    PFNGLCOMPRESSEDTEXSUBIMAGE3DNVPROC __glewCompressedTexSubImage3DNV

    PFNGLCOPYTEXSUBIMAGE3DNVPROC __glewCopyTexSubImage3DNV

    PFNGLFRAMEBUFFERTEXTURELAYERNVPROC __glewFramebufferTextureLayerNV

    PFNGLTEXIMAGE3DNVPROC __glewTexImage3DNV

    PFNGLTEXSUBIMAGE3DNVPROC __glewTexSubImage3DNV

    PFNGLTEXTUREBARRIERNVPROC __glewTextureBarrierNV

    PFNGLTEXIMAGE2DMULTISAMPLECOVERAGENVPROC __glewTexImage2DMultisampleCoverageNV

    PFNGLTEXIMAGE3DMULTISAMPLECOVERAGENVPROC __glewTexImage3DMultisampleCoverageNV

    PFNGLTEXTUREIMAGE2DMULTISAMPLECOVERAGENVPROC __glewTextureImage2DMultisampleCoverageNV

    PFNGLTEXTUREIMAGE2DMULTISAMPLENVPROC __glewTextureImage2DMultisampleNV

    PFNGLTEXTUREIMAGE3DMULTISAMPLECOVERAGENVPROC __glewTextureImage3DMultisampleCoverageNV

    PFNGLTEXTUREIMAGE3DMULTISAMPLENVPROC __glewTextureImage3DMultisampleNV

    PFNGLACTIVEVARYINGNVPROC __glewActiveVaryingNV

    PFNGLBEGINTRANSFORMFEEDBACKNVPROC __glewBeginTransformFeedbackNV

    PFNGLBINDBUFFERBASENVPROC __glewBindBufferBaseNV

    PFNGLBINDBUFFEROFFSETNVPROC __glewBindBufferOffsetNV

    PFNGLBINDBUFFERRANGENVPROC __glewBindBufferRangeNV

    PFNGLENDTRANSFORMFEEDBACKNVPROC __glewEndTransformFeedbackNV

    PFNGLGETACTIVEVARYINGNVPROC __glewGetActiveVaryingNV

    PFNGLGETTRANSFORMFEEDBACKVARYINGNVPROC __glewGetTransformFeedbackVaryingNV

    PFNGLGETVARYINGLOCATIONNVPROC __glewGetVaryingLocationNV

    PFNGLTRANSFORMFEEDBACKATTRIBSNVPROC __glewTransformFeedbackAttribsNV

    PFNGLTRANSFORMFEEDBACKVARYINGSNVPROC __glewTransformFeedbackVaryingsNV

    PFNGLBINDTRANSFORMFEEDBACKNVPROC __glewBindTransformFeedbackNV

    PFNGLDELETETRANSFORMFEEDBACKSNVPROC __glewDeleteTransformFeedbacksNV

    PFNGLDRAWTRANSFORMFEEDBACKNVPROC __glewDrawTransformFeedbackNV

    PFNGLGENTRANSFORMFEEDBACKSNVPROC __glewGenTransformFeedbacksNV

    PFNGLISTRANSFORMFEEDBACKNVPROC __glewIsTransformFeedbackNV

    PFNGLPAUSETRANSFORMFEEDBACKNVPROC __glewPauseTransformFeedbackNV

    PFNGLRESUMETRANSFORMFEEDBACKNVPROC __glewResumeTransformFeedbackNV

    PFNGLVDPAUFININVPROC __glewVDPAUFiniNV

    PFNGLVDPAUGETSURFACEIVNVPROC __glewVDPAUGetSurfaceivNV

    PFNGLVDPAUINITNVPROC __glewVDPAUInitNV

    PFNGLVDPAUISSURFACENVPROC __glewVDPAUIsSurfaceNV

    PFNGLVDPAUMAPSURFACESNVPROC __glewVDPAUMapSurfacesNV

    PFNGLVDPAUREGISTEROUTPUTSURFACENVPROC __glewVDPAURegisterOutputSurfaceNV

    PFNGLVDPAUREGISTERVIDEOSURFACENVPROC __glewVDPAURegisterVideoSurfaceNV

    PFNGLVDPAUSURFACEACCESSNVPROC __glewVDPAUSurfaceAccessNV

    PFNGLVDPAUUNMAPSURFACESNVPROC __glewVDPAUUnmapSurfacesNV

    PFNGLVDPAUUNREGISTERSURFACENVPROC __glewVDPAUUnregisterSurfaceNV

    PFNGLFLUSHVERTEXARRAYRANGENVPROC __glewFlushVertexArrayRangeNV

    PFNGLVERTEXARRAYRANGENVPROC __glewVertexArrayRangeNV

    PFNGLGETVERTEXATTRIBLI64VNVPROC __glewGetVertexAttribLi64vNV

    PFNGLGETVERTEXATTRIBLUI64VNVPROC __glewGetVertexAttribLui64vNV

    PFNGLVERTEXATTRIBL1I64NVPROC __glewVertexAttribL1i64NV

    PFNGLVERTEXATTRIBL1I64VNVPROC __glewVertexAttribL1i64vNV

    PFNGLVERTEXATTRIBL1UI64NVPROC __glewVertexAttribL1ui64NV

    PFNGLVERTEXATTRIBL1UI64VNVPROC __glewVertexAttribL1ui64vNV

    PFNGLVERTEXATTRIBL2I64NVPROC __glewVertexAttribL2i64NV

    PFNGLVERTEXATTRIBL2I64VNVPROC __glewVertexAttribL2i64vNV

    PFNGLVERTEXATTRIBL2UI64NVPROC __glewVertexAttribL2ui64NV

    PFNGLVERTEXATTRIBL2UI64VNVPROC __glewVertexAttribL2ui64vNV

    PFNGLVERTEXATTRIBL3I64NVPROC __glewVertexAttribL3i64NV

    PFNGLVERTEXATTRIBL3I64VNVPROC __glewVertexAttribL3i64vNV

    PFNGLVERTEXATTRIBL3UI64NVPROC __glewVertexAttribL3ui64NV

    PFNGLVERTEXATTRIBL3UI64VNVPROC __glewVertexAttribL3ui64vNV

    PFNGLVERTEXATTRIBL4I64NVPROC __glewVertexAttribL4i64NV

    PFNGLVERTEXATTRIBL4I64VNVPROC __glewVertexAttribL4i64vNV

    PFNGLVERTEXATTRIBL4UI64NVPROC __glewVertexAttribL4ui64NV

    PFNGLVERTEXATTRIBL4UI64VNVPROC __glewVertexAttribL4ui64vNV

    PFNGLVERTEXATTRIBLFORMATNVPROC __glewVertexAttribLFormatNV

    PFNGLBUFFERADDRESSRANGENVPROC __glewBufferAddressRangeNV

    PFNGLCOLORFORMATNVPROC __glewColorFormatNV

    PFNGLEDGEFLAGFORMATNVPROC __glewEdgeFlagFormatNV

    PFNGLFOGCOORDFORMATNVPROC __glewFogCoordFormatNV

    PFNGLGETINTEGERUI64I_VNVPROC __glewGetIntegerui64i_vNV

    PFNGLINDEXFORMATNVPROC __glewIndexFormatNV

    PFNGLNORMALFORMATNVPROC __glewNormalFormatNV

    PFNGLSECONDARYCOLORFORMATNVPROC __glewSecondaryColorFormatNV

    PFNGLTEXCOORDFORMATNVPROC __glewTexCoordFormatNV

    PFNGLVERTEXATTRIBFORMATNVPROC __glewVertexAttribFormatNV

    PFNGLVERTEXATTRIBIFORMATNVPROC __glewVertexAttribIFormatNV

    PFNGLVERTEXFORMATNVPROC __glewVertexFormatNV

    PFNGLAREPROGRAMSRESIDENTNVPROC __glewAreProgramsResidentNV

    PFNGLBINDPROGRAMNVPROC __glewBindProgramNV

    PFNGLDELETEPROGRAMSNVPROC __glewDeleteProgramsNV

    PFNGLEXECUTEPROGRAMNVPROC __glewExecuteProgramNV

    PFNGLGENPROGRAMSNVPROC __glewGenProgramsNV

    PFNGLGETPROGRAMPARAMETERDVNVPROC __glewGetProgramParameterdvNV

    PFNGLGETPROGRAMPARAMETERFVNVPROC __glewGetProgramParameterfvNV

    PFNGLGETPROGRAMSTRINGNVPROC __glewGetProgramStringNV

    PFNGLGETPROGRAMIVNVPROC __glewGetProgramivNV

    PFNGLGETTRACKMATRIXIVNVPROC __glewGetTrackMatrixivNV

    PFNGLGETVERTEXATTRIBPOINTERVNVPROC __glewGetVertexAttribPointervNV

    PFNGLGETVERTEXATTRIBDVNVPROC __glewGetVertexAttribdvNV

    PFNGLGETVERTEXATTRIBFVNVPROC __glewGetVertexAttribfvNV

    PFNGLGETVERTEXATTRIBIVNVPROC __glewGetVertexAttribivNV

    PFNGLISPROGRAMNVPROC __glewIsProgramNV

    PFNGLLOADPROGRAMNVPROC __glewLoadProgramNV

    PFNGLPROGRAMPARAMETER4DNVPROC __glewProgramParameter4dNV

    PFNGLPROGRAMPARAMETER4DVNVPROC __glewProgramParameter4dvNV

    PFNGLPROGRAMPARAMETER4FNVPROC __glewProgramParameter4fNV

    PFNGLPROGRAMPARAMETER4FVNVPROC __glewProgramParameter4fvNV

    PFNGLPROGRAMPARAMETERS4DVNVPROC __glewProgramParameters4dvNV

    PFNGLPROGRAMPARAMETERS4FVNVPROC __glewProgramParameters4fvNV

    PFNGLREQUESTRESIDENTPROGRAMSNVPROC __glewRequestResidentProgramsNV

    PFNGLTRACKMATRIXNVPROC __glewTrackMatrixNV

    PFNGLVERTEXATTRIB1DNVPROC __glewVertexAttrib1dNV

    PFNGLVERTEXATTRIB1DVNVPROC __glewVertexAttrib1dvNV

    PFNGLVERTEXATTRIB1FNVPROC __glewVertexAttrib1fNV

    PFNGLVERTEXATTRIB1FVNVPROC __glewVertexAttrib1fvNV

    PFNGLVERTEXATTRIB1SNVPROC __glewVertexAttrib1sNV

    PFNGLVERTEXATTRIB1SVNVPROC __glewVertexAttrib1svNV

    PFNGLVERTEXATTRIB2DNVPROC __glewVertexAttrib2dNV

    PFNGLVERTEXATTRIB2DVNVPROC __glewVertexAttrib2dvNV

    PFNGLVERTEXATTRIB2FNVPROC __glewVertexAttrib2fNV

    PFNGLVERTEXATTRIB2FVNVPROC __glewVertexAttrib2fvNV

    PFNGLVERTEXATTRIB2SNVPROC __glewVertexAttrib2sNV

    PFNGLVERTEXATTRIB2SVNVPROC __glewVertexAttrib2svNV

    PFNGLVERTEXATTRIB3DNVPROC __glewVertexAttrib3dNV

    PFNGLVERTEXATTRIB3DVNVPROC __glewVertexAttrib3dvNV

    PFNGLVERTEXATTRIB3FNVPROC __glewVertexAttrib3fNV

    PFNGLVERTEXATTRIB3FVNVPROC __glewVertexAttrib3fvNV

    PFNGLVERTEXATTRIB3SNVPROC __glewVertexAttrib3sNV

    PFNGLVERTEXATTRIB3SVNVPROC __glewVertexAttrib3svNV

    PFNGLVERTEXATTRIB4DNVPROC __glewVertexAttrib4dNV

    PFNGLVERTEXATTRIB4DVNVPROC __glewVertexAttrib4dvNV

    PFNGLVERTEXATTRIB4FNVPROC __glewVertexAttrib4fNV

    PFNGLVERTEXATTRIB4FVNVPROC __glewVertexAttrib4fvNV

    PFNGLVERTEXATTRIB4SNVPROC __glewVertexAttrib4sNV

    PFNGLVERTEXATTRIB4SVNVPROC __glewVertexAttrib4svNV

    PFNGLVERTEXATTRIB4UBNVPROC __glewVertexAttrib4ubNV

    PFNGLVERTEXATTRIB4UBVNVPROC __glewVertexAttrib4ubvNV

    PFNGLVERTEXATTRIBPOINTERNVPROC __glewVertexAttribPointerNV

    PFNGLVERTEXATTRIBS1DVNVPROC __glewVertexAttribs1dvNV

    PFNGLVERTEXATTRIBS1FVNVPROC __glewVertexAttribs1fvNV

    PFNGLVERTEXATTRIBS1SVNVPROC __glewVertexAttribs1svNV

    PFNGLVERTEXATTRIBS2DVNVPROC __glewVertexAttribs2dvNV

    PFNGLVERTEXATTRIBS2FVNVPROC __glewVertexAttribs2fvNV

    PFNGLVERTEXATTRIBS2SVNVPROC __glewVertexAttribs2svNV

    PFNGLVERTEXATTRIBS3DVNVPROC __glewVertexAttribs3dvNV

    PFNGLVERTEXATTRIBS3FVNVPROC __glewVertexAttribs3fvNV

    PFNGLVERTEXATTRIBS3SVNVPROC __glewVertexAttribs3svNV

    PFNGLVERTEXATTRIBS4DVNVPROC __glewVertexAttribs4dvNV

    PFNGLVERTEXATTRIBS4FVNVPROC __glewVertexAttribs4fvNV

    PFNGLVERTEXATTRIBS4SVNVPROC __glewVertexAttribs4svNV

    PFNGLVERTEXATTRIBS4UBVNVPROC __glewVertexAttribs4ubvNV

    PFNGLBEGINVIDEOCAPTURENVPROC __glewBeginVideoCaptureNV

    PFNGLBINDVIDEOCAPTURESTREAMBUFFERNVPROC __glewBindVideoCaptureStreamBufferNV

    PFNGLBINDVIDEOCAPTURESTREAMTEXTURENVPROC __glewBindVideoCaptureStreamTextureNV

    PFNGLENDVIDEOCAPTURENVPROC __glewEndVideoCaptureNV

    PFNGLGETVIDEOCAPTURESTREAMDVNVPROC __glewGetVideoCaptureStreamdvNV

    PFNGLGETVIDEOCAPTURESTREAMFVNVPROC __glewGetVideoCaptureStreamfvNV

    PFNGLGETVIDEOCAPTURESTREAMIVNVPROC __glewGetVideoCaptureStreamivNV

    PFNGLGETVIDEOCAPTUREIVNVPROC __glewGetVideoCaptureivNV

    PFNGLVIDEOCAPTURENVPROC __glewVideoCaptureNV

    PFNGLVIDEOCAPTURESTREAMPARAMETERDVNVPROC __glewVideoCaptureStreamParameterdvNV

    PFNGLVIDEOCAPTURESTREAMPARAMETERFVNVPROC __glewVideoCaptureStreamParameterfvNV

    PFNGLVIDEOCAPTURESTREAMPARAMETERIVNVPROC __glewVideoCaptureStreamParameterivNV

    PFNGLDEPTHRANGEARRAYFVNVPROC __glewDepthRangeArrayfvNV

    PFNGLDEPTHRANGEINDEXEDFNVPROC __glewDepthRangeIndexedfNV

    PFNGLDISABLEINVPROC __glewDisableiNV

    PFNGLENABLEINVPROC __glewEnableiNV

    PFNGLGETFLOATI_VNVPROC __glewGetFloati_vNV

    PFNGLISENABLEDINVPROC __glewIsEnablediNV

    PFNGLSCISSORARRAYVNVPROC __glewScissorArrayvNV

    PFNGLSCISSORINDEXEDNVPROC __glewScissorIndexedNV

    PFNGLSCISSORINDEXEDVNVPROC __glewScissorIndexedvNV

    PFNGLVIEWPORTARRAYVNVPROC __glewViewportArrayvNV

    PFNGLVIEWPORTINDEXEDFNVPROC __glewViewportIndexedfNV

    PFNGLVIEWPORTINDEXEDFVNVPROC __glewViewportIndexedfvNV

    PFNGLVIEWPORTSWIZZLENVPROC __glewViewportSwizzleNV

    PFNGLFRAMEBUFFERTEXTUREMULTIVIEWOVRPROC __glewFramebufferTextureMultiviewOVR

    PFNGLFRAMEBUFFERTEXTUREMULTISAMPLEMULTIVIEWOVRPROC __glewFramebufferTextureMultisampleMultiviewOVR

    PFNGLALPHAFUNCQCOMPROC __glewAlphaFuncQCOM

    PFNGLDISABLEDRIVERCONTROLQCOMPROC __glewDisableDriverControlQCOM

    PFNGLENABLEDRIVERCONTROLQCOMPROC __glewEnableDriverControlQCOM

    PFNGLGETDRIVERCONTROLSTRINGQCOMPROC __glewGetDriverControlStringQCOM

    PFNGLGETDRIVERCONTROLSQCOMPROC __glewGetDriverControlsQCOM

    PFNGLEXTGETBUFFERPOINTERVQCOMPROC __glewExtGetBufferPointervQCOM

    PFNGLEXTGETBUFFERSQCOMPROC __glewExtGetBuffersQCOM

    PFNGLEXTGETFRAMEBUFFERSQCOMPROC __glewExtGetFramebuffersQCOM

    PFNGLEXTGETRENDERBUFFERSQCOMPROC __glewExtGetRenderbuffersQCOM

    PFNGLEXTGETTEXLEVELPARAMETERIVQCOMPROC __glewExtGetTexLevelParameterivQCOM

    PFNGLEXTGETTEXSUBIMAGEQCOMPROC __glewExtGetTexSubImageQCOM

    PFNGLEXTGETTEXTURESQCOMPROC __glewExtGetTexturesQCOM

    PFNGLEXTTEXOBJECTSTATEOVERRIDEIQCOMPROC __glewExtTexObjectStateOverrideiQCOM

    PFNGLEXTGETPROGRAMBINARYSOURCEQCOMPROC __glewExtGetProgramBinarySourceQCOM

    PFNGLEXTGETPROGRAMSQCOMPROC __glewExtGetProgramsQCOM

    PFNGLEXTGETSHADERSQCOMPROC __glewExtGetShadersQCOM

    PFNGLEXTISPROGRAMBINARYQCOMPROC __glewExtIsProgramBinaryQCOM

    PFNGLFRAMEBUFFERFOVEATIONCONFIGQCOMPROC __glewFramebufferFoveationConfigQCOM

    PFNGLFRAMEBUFFERFOVEATIONPARAMETERSQCOMPROC __glewFramebufferFoveationParametersQCOM

    PFNGLFRAMEBUFFERFETCHBARRIERQCOMPROC __glewFramebufferFetchBarrierQCOM

    PFNGLENDTILINGQCOMPROC __glewEndTilingQCOM

    PFNGLSTARTTILINGQCOMPROC __glewStartTilingQCOM

    PFNGLALPHAFUNCXPROC __glewAlphaFuncx

    PFNGLCLEARCOLORXPROC __glewClearColorx

    PFNGLCLEARDEPTHXPROC __glewClearDepthx

    PFNGLCOLOR4XPROC __glewColor4x

    PFNGLDEPTHRANGEXPROC __glewDepthRangex

    PFNGLFOGXPROC __glewFogx

    PFNGLFOGXVPROC __glewFogxv

    PFNGLFRUSTUMFPROC __glewFrustumf

    PFNGLFRUSTUMXPROC __glewFrustumx

    PFNGLLIGHTMODELXPROC __glewLightModelx

    PFNGLLIGHTMODELXVPROC __glewLightModelxv

    PFNGLLIGHTXPROC __glewLightx

    PFNGLLIGHTXVPROC __glewLightxv

    PFNGLLINEWIDTHXPROC __glewLineWidthx

    PFNGLLOADMATRIXXPROC __glewLoadMatrixx

    PFNGLMATERIALXPROC __glewMaterialx

    PFNGLMATERIALXVPROC __glewMaterialxv

    PFNGLMULTMATRIXXPROC __glewMultMatrixx

    PFNGLMULTITEXCOORD4XPROC __glewMultiTexCoord4x

    PFNGLNORMAL3XPROC __glewNormal3x

    PFNGLORTHOFPROC __glewOrthof

    PFNGLORTHOXPROC __glewOrthox

    PFNGLPOINTSIZEXPROC __glewPointSizex

    PFNGLPOLYGONOFFSETXPROC __glewPolygonOffsetx

    PFNGLROTATEXPROC __glewRotatex

    PFNGLSAMPLECOVERAGEXPROC __glewSampleCoveragex

    PFNGLSCALEXPROC __glewScalex

    PFNGLTEXENVXPROC __glewTexEnvx

    PFNGLTEXENVXVPROC __glewTexEnvxv

    PFNGLTEXPARAMETERXPROC __glewTexParameterx

    PFNGLTRANSLATEXPROC __glewTranslatex

    PFNGLCLIPPLANEFPROC __glewClipPlanef

    PFNGLCLIPPLANEXPROC __glewClipPlanex

    PFNGLGETCLIPPLANEFPROC __glewGetClipPlanef

    PFNGLGETCLIPPLANEXPROC __glewGetClipPlanex

    PFNGLGETFIXEDVPROC __glewGetFixedv

    PFNGLGETLIGHTXVPROC __glewGetLightxv

    PFNGLGETMATERIALXVPROC __glewGetMaterialxv

    PFNGLGETTEXENVXVPROC __glewGetTexEnvxv

    PFNGLGETTEXPARAMETERXVPROC __glewGetTexParameterxv

    PFNGLPOINTPARAMETERXPROC __glewPointParameterx

    PFNGLPOINTPARAMETERXVPROC __glewPointParameterxv

    PFNGLPOINTSIZEPOINTEROESPROC __glewPointSizePointerOES

    PFNGLTEXPARAMETERXVPROC __glewTexParameterxv

    PFNGLERRORSTRINGREGALPROC __glewErrorStringREGAL

    PFNGLGETEXTENSIONREGALPROC __glewGetExtensionREGAL

    PFNGLISSUPPORTEDREGALPROC __glewIsSupportedREGAL

    PFNGLLOGMESSAGECALLBACKREGALPROC __glewLogMessageCallbackREGAL

    PFNGLGETPROCADDRESSREGALPROC __glewGetProcAddressREGAL

    PFNGLDETAILTEXFUNCSGISPROC __glewDetailTexFuncSGIS

    PFNGLGETDETAILTEXFUNCSGISPROC __glewGetDetailTexFuncSGIS

    PFNGLFOGFUNCSGISPROC __glewFogFuncSGIS

    PFNGLGETFOGFUNCSGISPROC __glewGetFogFuncSGIS

    PFNGLSAMPLEMASKSGISPROC __glewSampleMaskSGIS

    PFNGLSAMPLEPATTERNSGISPROC __glewSamplePatternSGIS

    PFNGLINTERLEAVEDTEXTURECOORDSETSSGISPROC __glewInterleavedTextureCoordSetsSGIS

    PFNGLSELECTTEXTURECOORDSETSGISPROC __glewSelectTextureCoordSetSGIS

    PFNGLSELECTTEXTURESGISPROC __glewSelectTextureSGIS

    PFNGLSELECTTEXTURETRANSFORMSGISPROC __glewSelectTextureTransformSGIS

    PFNGLMULTISAMPLESUBRECTPOSSGISPROC __glewMultisampleSubRectPosSGIS

    PFNGLGETSHARPENTEXFUNCSGISPROC __glewGetSharpenTexFuncSGIS

    PFNGLSHARPENTEXFUNCSGISPROC __glewSharpenTexFuncSGIS

    PFNGLTEXIMAGE4DSGISPROC __glewTexImage4DSGIS

    PFNGLTEXSUBIMAGE4DSGISPROC __glewTexSubImage4DSGIS

    PFNGLGETTEXFILTERFUNCSGISPROC __glewGetTexFilterFuncSGIS

    PFNGLTEXFILTERFUNCSGISPROC __glewTexFilterFuncSGIS

    PFNGLASYNCMARKERSGIXPROC __glewAsyncMarkerSGIX

    PFNGLDELETEASYNCMARKERSSGIXPROC __glewDeleteAsyncMarkersSGIX

    PFNGLFINISHASYNCSGIXPROC __glewFinishAsyncSGIX

    PFNGLGENASYNCMARKERSSGIXPROC __glewGenAsyncMarkersSGIX

    PFNGLISASYNCMARKERSGIXPROC __glewIsAsyncMarkerSGIX

    PFNGLPOLLASYNCSGIXPROC __glewPollAsyncSGIX

    PFNGLADDRESSSPACEPROC __glewAddressSpace

    PFNGLDATAPIPEPROC __glewDataPipe

    PFNGLFLUSHRASTERSGIXPROC __glewFlushRasterSGIX

    PFNGLFOGLAYERSSGIXPROC __glewFogLayersSGIX

    PFNGLGETFOGLAYERSSGIXPROC __glewGetFogLayersSGIX

    PFNGLTEXTUREFOGSGIXPROC __glewTextureFogSGIX

    PFNGLFRAGMENTCOLORMATERIALSGIXPROC __glewFragmentColorMaterialSGIX

    PFNGLFRAGMENTLIGHTMODELFSGIXPROC __glewFragmentLightModelfSGIX

    PFNGLFRAGMENTLIGHTMODELFVSGIXPROC __glewFragmentLightModelfvSGIX

    PFNGLFRAGMENTLIGHTMODELISGIXPROC __glewFragmentLightModeliSGIX

    PFNGLFRAGMENTLIGHTMODELIVSGIXPROC __glewFragmentLightModelivSGIX

    PFNGLFRAGMENTLIGHTFSGIXPROC __glewFragmentLightfSGIX

    PFNGLFRAGMENTLIGHTFVSGIXPROC __glewFragmentLightfvSGIX

    PFNGLFRAGMENTLIGHTISGIXPROC __glewFragmentLightiSGIX

    PFNGLFRAGMENTLIGHTIVSGIXPROC __glewFragmentLightivSGIX

    PFNGLFRAGMENTMATERIALFSGIXPROC __glewFragmentMaterialfSGIX

    PFNGLFRAGMENTMATERIALFVSGIXPROC __glewFragmentMaterialfvSGIX

    PFNGLFRAGMENTMATERIALISGIXPROC __glewFragmentMaterialiSGIX

    PFNGLFRAGMENTMATERIALIVSGIXPROC __glewFragmentMaterialivSGIX

    PFNGLGETFRAGMENTLIGHTFVSGIXPROC __glewGetFragmentLightfvSGIX

    PFNGLGETFRAGMENTLIGHTIVSGIXPROC __glewGetFragmentLightivSGIX

    PFNGLGETFRAGMENTMATERIALFVSGIXPROC __glewGetFragmentMaterialfvSGIX

    PFNGLGETFRAGMENTMATERIALIVSGIXPROC __glewGetFragmentMaterialivSGIX

    PFNGLFRAMEZOOMSGIXPROC __glewFrameZoomSGIX

    PFNGLIGLOOINTERFACESGIXPROC __glewIglooInterfaceSGIX

    PFNGLALLOCMPEGPREDICTORSSGIXPROC __glewAllocMPEGPredictorsSGIX

    PFNGLDELETEMPEGPREDICTORSSGIXPROC __glewDeleteMPEGPredictorsSGIX

    PFNGLGENMPEGPREDICTORSSGIXPROC __glewGenMPEGPredictorsSGIX

    PFNGLGETMPEGPARAMETERFVSGIXPROC __glewGetMPEGParameterfvSGIX

    PFNGLGETMPEGPARAMETERIVSGIXPROC __glewGetMPEGParameterivSGIX

    PFNGLGETMPEGPREDICTORSGIXPROC __glewGetMPEGPredictorSGIX

    PFNGLGETMPEGQUANTTABLEUBVPROC __glewGetMPEGQuantTableubv

    PFNGLISMPEGPREDICTORSGIXPROC __glewIsMPEGPredictorSGIX

    PFNGLMPEGPREDICTORSGIXPROC __glewMPEGPredictorSGIX

    PFNGLMPEGQUANTTABLEUBVPROC __glewMPEGQuantTableubv

    PFNGLSWAPMPEGPREDICTORSSGIXPROC __glewSwapMPEGPredictorsSGIX

    PFNGLGETNONLINLIGHTFVSGIXPROC __glewGetNonlinLightfvSGIX

    PFNGLGETNONLINMATERIALFVSGIXPROC __glewGetNonlinMaterialfvSGIX

    PFNGLNONLINLIGHTFVSGIXPROC __glewNonlinLightfvSGIX

    PFNGLNONLINMATERIALFVSGIXPROC __glewNonlinMaterialfvSGIX

    PFNGLPIXELTEXGENSGIXPROC __glewPixelTexGenSGIX

    PFNGLDEFORMSGIXPROC __glewDeformSGIX

    PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC __glewLoadIdentityDeformationMapSGIX

    PFNGLMESHBREADTHSGIXPROC __glewMeshBreadthSGIX

    PFNGLMESHSTRIDESGIXPROC __glewMeshStrideSGIX

    PFNGLREFERENCEPLANESGIXPROC __glewReferencePlaneSGIX

    PFNGLSPRITEPARAMETERFSGIXPROC __glewSpriteParameterfSGIX

    PFNGLSPRITEPARAMETERFVSGIXPROC __glewSpriteParameterfvSGIX

    PFNGLSPRITEPARAMETERISGIXPROC __glewSpriteParameteriSGIX

    PFNGLSPRITEPARAMETERIVSGIXPROC __glewSpriteParameterivSGIX

    PFNGLTAGSAMPLEBUFFERSGIXPROC __glewTagSampleBufferSGIX

    PFNGLGETVECTOROPERATIONSGIXPROC __glewGetVectorOperationSGIX

    PFNGLVECTOROPERATIONSGIXPROC __glewVectorOperationSGIX

    PFNGLAREVERTEXARRAYSRESIDENTSGIXPROC __glewAreVertexArraysResidentSGIX

    PFNGLBINDVERTEXARRAYSGIXPROC __glewBindVertexArraySGIX

    PFNGLDELETEVERTEXARRAYSSGIXPROC __glewDeleteVertexArraysSGIX

    PFNGLGENVERTEXARRAYSSGIXPROC __glewGenVertexArraysSGIX

    PFNGLISVERTEXARRAYSGIXPROC __glewIsVertexArraySGIX

    PFNGLPRIORITIZEVERTEXARRAYSSGIXPROC __glewPrioritizeVertexArraysSGIX

    PFNGLCOLORTABLEPARAMETERFVSGIPROC __glewColorTableParameterfvSGI

    PFNGLCOLORTABLEPARAMETERIVSGIPROC __glewColorTableParameterivSGI

    PFNGLCOLORTABLESGIPROC __glewColorTableSGI

    PFNGLCOPYCOLORTABLESGIPROC __glewCopyColorTableSGI

    PFNGLGETCOLORTABLEPARAMETERFVSGIPROC __glewGetColorTableParameterfvSGI

    PFNGLGETCOLORTABLEPARAMETERIVSGIPROC __glewGetColorTableParameterivSGI

    PFNGLGETCOLORTABLESGIPROC __glewGetColorTableSGI

    PFNGLGETPIXELTRANSFORMPARAMETERFVSGIPROC __glewGetPixelTransformParameterfvSGI

    PFNGLGETPIXELTRANSFORMPARAMETERIVSGIPROC __glewGetPixelTransformParameterivSGI

    PFNGLPIXELTRANSFORMPARAMETERFSGIPROC __glewPixelTransformParameterfSGI

    PFNGLPIXELTRANSFORMPARAMETERFVSGIPROC __glewPixelTransformParameterfvSGI

    PFNGLPIXELTRANSFORMPARAMETERISGIPROC __glewPixelTransformParameteriSGI

    PFNGLPIXELTRANSFORMPARAMETERIVSGIPROC __glewPixelTransformParameterivSGI

    PFNGLPIXELTRANSFORMSGIPROC __glewPixelTransformSGI

    PFNGLFINISHTEXTURESUNXPROC __glewFinishTextureSUNX

    PFNGLGLOBALALPHAFACTORBSUNPROC __glewGlobalAlphaFactorbSUN

    PFNGLGLOBALALPHAFACTORDSUNPROC __glewGlobalAlphaFactordSUN

    PFNGLGLOBALALPHAFACTORFSUNPROC __glewGlobalAlphaFactorfSUN

    PFNGLGLOBALALPHAFACTORISUNPROC __glewGlobalAlphaFactoriSUN

    PFNGLGLOBALALPHAFACTORSSUNPROC __glewGlobalAlphaFactorsSUN

    PFNGLGLOBALALPHAFACTORUBSUNPROC __glewGlobalAlphaFactorubSUN

    PFNGLGLOBALALPHAFACTORUISUNPROC __glewGlobalAlphaFactoruiSUN

    PFNGLGLOBALALPHAFACTORUSSUNPROC __glewGlobalAlphaFactorusSUN

    PFNGLREADVIDEOPIXELSSUNPROC __glewReadVideoPixelsSUN

    PFNGLREPLACEMENTCODEPOINTERSUNPROC __glewReplacementCodePointerSUN

    PFNGLREPLACEMENTCODEUBSUNPROC __glewReplacementCodeubSUN

    PFNGLREPLACEMENTCODEUBVSUNPROC __glewReplacementCodeubvSUN

    PFNGLREPLACEMENTCODEUISUNPROC __glewReplacementCodeuiSUN

    PFNGLREPLACEMENTCODEUIVSUNPROC __glewReplacementCodeuivSUN

    PFNGLREPLACEMENTCODEUSSUNPROC __glewReplacementCodeusSUN

    PFNGLREPLACEMENTCODEUSVSUNPROC __glewReplacementCodeusvSUN

    PFNGLCOLOR3FVERTEX3FSUNPROC __glewColor3fVertex3fSUN

    PFNGLCOLOR3FVERTEX3FVSUNPROC __glewColor3fVertex3fvSUN

    PFNGLCOLOR4FNORMAL3FVERTEX3FSUNPROC __glewColor4fNormal3fVertex3fSUN

    PFNGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC __glewColor4fNormal3fVertex3fvSUN

    PFNGLCOLOR4UBVERTEX2FSUNPROC __glewColor4ubVertex2fSUN

    PFNGLCOLOR4UBVERTEX2FVSUNPROC __glewColor4ubVertex2fvSUN

    PFNGLCOLOR4UBVERTEX3FSUNPROC __glewColor4ubVertex3fSUN

    PFNGLCOLOR4UBVERTEX3FVSUNPROC __glewColor4ubVertex3fvSUN

    PFNGLNORMAL3FVERTEX3FSUNPROC __glewNormal3fVertex3fSUN

    PFNGLNORMAL3FVERTEX3FVSUNPROC __glewNormal3fVertex3fvSUN

    PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC __glewReplacementCodeuiColor3fVertex3fSUN

    PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC __glewReplacementCodeuiColor3fVertex3fvSUN

    PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FSUNPROC __glewReplacementCodeuiColor4fNormal3fVertex3fSUN

    PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC __glewReplacementCodeuiColor4fNormal3fVertex3fvSUN

    PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC __glewReplacementCodeuiColor4ubVertex3fSUN

    PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC __glewReplacementCodeuiColor4ubVertex3fvSUN

    PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC __glewReplacementCodeuiNormal3fVertex3fSUN

    PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC __glewReplacementCodeuiNormal3fVertex3fvSUN

    PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC __glewReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN

    PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC __glewReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN

    PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC __glewReplacementCodeuiTexCoord2fNormal3fVertex3fSUN

    PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC __glewReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN

    PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC __glewReplacementCodeuiTexCoord2fVertex3fSUN

    PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC __glewReplacementCodeuiTexCoord2fVertex3fvSUN

    PFNGLREPLACEMENTCODEUIVERTEX3FSUNPROC __glewReplacementCodeuiVertex3fSUN

    PFNGLREPLACEMENTCODEUIVERTEX3FVSUNPROC __glewReplacementCodeuiVertex3fvSUN

    PFNGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC __glewTexCoord2fColor3fVertex3fSUN

    PFNGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC __glewTexCoord2fColor3fVertex3fvSUN

    PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC __glewTexCoord2fColor4fNormal3fVertex3fSUN

    PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC __glewTexCoord2fColor4fNormal3fVertex3fvSUN

    PFNGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC __glewTexCoord2fColor4ubVertex3fSUN

    PFNGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC __glewTexCoord2fColor4ubVertex3fvSUN

    PFNGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC __glewTexCoord2fNormal3fVertex3fSUN

    PFNGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC __glewTexCoord2fNormal3fVertex3fvSUN

    PFNGLTEXCOORD2FVERTEX3FSUNPROC __glewTexCoord2fVertex3fSUN

    PFNGLTEXCOORD2FVERTEX3FVSUNPROC __glewTexCoord2fVertex3fvSUN

    PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FSUNPROC __glewTexCoord4fColor4fNormal3fVertex4fSUN

    PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC __glewTexCoord4fColor4fNormal3fVertex4fvSUN

    PFNGLTEXCOORD4FVERTEX4FSUNPROC __glewTexCoord4fVertex4fSUN

    PFNGLTEXCOORD4FVERTEX4FVSUNPROC __glewTexCoord4fVertex4fvSUN

    PFNGLADDSWAPHINTRECTWINPROC __glewAddSwapHintRectWIN

    GLboolean __GLEW_VERSION_1_1

    GLboolean __GLEW_VERSION_1_2

    GLboolean __GLEW_VERSION_1_2_1

    GLboolean __GLEW_VERSION_1_3

    GLboolean __GLEW_VERSION_1_4

    GLboolean __GLEW_VERSION_1_5

    GLboolean __GLEW_VERSION_2_0

    GLboolean __GLEW_VERSION_2_1

    GLboolean __GLEW_VERSION_3_0

    GLboolean __GLEW_VERSION_3_1

    GLboolean __GLEW_VERSION_3_2

    GLboolean __GLEW_VERSION_3_3

    GLboolean __GLEW_VERSION_4_0

    GLboolean __GLEW_VERSION_4_1

    GLboolean __GLEW_VERSION_4_2

    GLboolean __GLEW_VERSION_4_3

    GLboolean __GLEW_VERSION_4_4

    GLboolean __GLEW_VERSION_4_5

    GLboolean __GLEW_VERSION_4_6

    GLboolean __GLEW_3DFX_multisample

    GLboolean __GLEW_3DFX_tbuffer

    GLboolean __GLEW_3DFX_texture_compression_FXT1

    GLboolean __GLEW_AMD_blend_minmax_factor

    GLboolean __GLEW_AMD_compressed_3DC_texture

    GLboolean __GLEW_AMD_compressed_ATC_texture

    GLboolean __GLEW_AMD_conservative_depth

    GLboolean __GLEW_AMD_debug_output

    GLboolean __GLEW_AMD_depth_clamp_separate

    GLboolean __GLEW_AMD_draw_buffers_blend

    GLboolean __GLEW_AMD_framebuffer_sample_positions

    GLboolean __GLEW_AMD_gcn_shader

    GLboolean __GLEW_AMD_gpu_shader_half_float

    GLboolean __GLEW_AMD_gpu_shader_int16

    GLboolean __GLEW_AMD_gpu_shader_int64

    GLboolean __GLEW_AMD_interleaved_elements

    GLboolean __GLEW_AMD_multi_draw_indirect

    GLboolean __GLEW_AMD_name_gen_delete

    GLboolean __GLEW_AMD_occlusion_query_event

    GLboolean __GLEW_AMD_performance_monitor

    GLboolean __GLEW_AMD_pinned_memory

    GLboolean __GLEW_AMD_program_binary_Z400

    GLboolean __GLEW_AMD_query_buffer_object

    GLboolean __GLEW_AMD_sample_positions

    GLboolean __GLEW_AMD_seamless_cubemap_per_texture

    GLboolean __GLEW_AMD_shader_atomic_counter_ops

    GLboolean __GLEW_AMD_shader_ballot

    GLboolean __GLEW_AMD_shader_explicit_vertex_parameter

    GLboolean __GLEW_AMD_shader_stencil_export

    GLboolean __GLEW_AMD_shader_stencil_value_export

    GLboolean __GLEW_AMD_shader_trinary_minmax

    GLboolean __GLEW_AMD_sparse_texture

    GLboolean __GLEW_AMD_stencil_operation_extended

    GLboolean __GLEW_AMD_texture_gather_bias_lod

    GLboolean __GLEW_AMD_texture_texture4

    GLboolean __GLEW_AMD_transform_feedback3_lines_triangles

    GLboolean __GLEW_AMD_transform_feedback4

    GLboolean __GLEW_AMD_vertex_shader_layer

    GLboolean __GLEW_AMD_vertex_shader_tessellator

    GLboolean __GLEW_AMD_vertex_shader_viewport_index

    GLboolean __GLEW_ANDROID_extension_pack_es31a

    GLboolean __GLEW_ANGLE_depth_texture

    GLboolean __GLEW_ANGLE_framebuffer_blit

    GLboolean __GLEW_ANGLE_framebuffer_multisample

    GLboolean __GLEW_ANGLE_instanced_arrays

    GLboolean __GLEW_ANGLE_pack_reverse_row_order

    GLboolean __GLEW_ANGLE_program_binary

    GLboolean __GLEW_ANGLE_texture_compression_dxt1

    GLboolean __GLEW_ANGLE_texture_compression_dxt3

    GLboolean __GLEW_ANGLE_texture_compression_dxt5

    GLboolean __GLEW_ANGLE_texture_usage

    GLboolean __GLEW_ANGLE_timer_query

    GLboolean __GLEW_ANGLE_translated_shader_source

    GLboolean __GLEW_APPLE_aux_depth_stencil

    GLboolean __GLEW_APPLE_client_storage

    GLboolean __GLEW_APPLE_clip_distance

    GLboolean __GLEW_APPLE_color_buffer_packed_float

    GLboolean __GLEW_APPLE_copy_texture_levels

    GLboolean __GLEW_APPLE_element_array

    GLboolean __GLEW_APPLE_fence

    GLboolean __GLEW_APPLE_float_pixels

    GLboolean __GLEW_APPLE_flush_buffer_range

    GLboolean __GLEW_APPLE_framebuffer_multisample

    GLboolean __GLEW_APPLE_object_purgeable

    GLboolean __GLEW_APPLE_pixel_buffer

    GLboolean __GLEW_APPLE_rgb_422

    GLboolean __GLEW_APPLE_row_bytes

    GLboolean __GLEW_APPLE_specular_vector

    GLboolean __GLEW_APPLE_sync

    GLboolean __GLEW_APPLE_texture_2D_limited_npot

    GLboolean __GLEW_APPLE_texture_format_BGRA8888

    GLboolean __GLEW_APPLE_texture_max_level

    GLboolean __GLEW_APPLE_texture_packed_float

    GLboolean __GLEW_APPLE_texture_range

    GLboolean __GLEW_APPLE_transform_hint

    GLboolean __GLEW_APPLE_vertex_array_object

    GLboolean __GLEW_APPLE_vertex_array_range

    GLboolean __GLEW_APPLE_vertex_program_evaluators

    GLboolean __GLEW_APPLE_ycbcr_422

    GLboolean __GLEW_ARB_ES2_compatibility

    GLboolean __GLEW_ARB_ES3_1_compatibility

    GLboolean __GLEW_ARB_ES3_2_compatibility

    GLboolean __GLEW_ARB_ES3_compatibility

    GLboolean __GLEW_ARB_arrays_of_arrays

    GLboolean __GLEW_ARB_base_instance

    GLboolean __GLEW_ARB_bindless_texture

    GLboolean __GLEW_ARB_blend_func_extended

    GLboolean __GLEW_ARB_buffer_storage

    GLboolean __GLEW_ARB_cl_event

    GLboolean __GLEW_ARB_clear_buffer_object

    GLboolean __GLEW_ARB_clear_texture

    GLboolean __GLEW_ARB_clip_control

    GLboolean __GLEW_ARB_color_buffer_float

    GLboolean __GLEW_ARB_compatibility

    GLboolean __GLEW_ARB_compressed_texture_pixel_storage

    GLboolean __GLEW_ARB_compute_shader

    GLboolean __GLEW_ARB_compute_variable_group_size

    GLboolean __GLEW_ARB_conditional_render_inverted

    GLboolean __GLEW_ARB_conservative_depth

    GLboolean __GLEW_ARB_copy_buffer

    GLboolean __GLEW_ARB_copy_image

    GLboolean __GLEW_ARB_cull_distance

    GLboolean __GLEW_ARB_debug_output

    GLboolean __GLEW_ARB_depth_buffer_float

    GLboolean __GLEW_ARB_depth_clamp

    GLboolean __GLEW_ARB_depth_texture

    GLboolean __GLEW_ARB_derivative_control

    GLboolean __GLEW_ARB_direct_state_access

    GLboolean __GLEW_ARB_draw_buffers

    GLboolean __GLEW_ARB_draw_buffers_blend

    GLboolean __GLEW_ARB_draw_elements_base_vertex

    GLboolean __GLEW_ARB_draw_indirect

    GLboolean __GLEW_ARB_draw_instanced

    GLboolean __GLEW_ARB_enhanced_layouts

    GLboolean __GLEW_ARB_explicit_attrib_location

    GLboolean __GLEW_ARB_explicit_uniform_location

    GLboolean __GLEW_ARB_fragment_coord_conventions

    GLboolean __GLEW_ARB_fragment_layer_viewport

    GLboolean __GLEW_ARB_fragment_program

    GLboolean __GLEW_ARB_fragment_program_shadow

    GLboolean __GLEW_ARB_fragment_shader

    GLboolean __GLEW_ARB_fragment_shader_interlock

    GLboolean __GLEW_ARB_framebuffer_no_attachments

    GLboolean __GLEW_ARB_framebuffer_object

    GLboolean __GLEW_ARB_framebuffer_sRGB

    GLboolean __GLEW_ARB_geometry_shader4

    GLboolean __GLEW_ARB_get_program_binary

    GLboolean __GLEW_ARB_get_texture_sub_image

    GLboolean __GLEW_ARB_gl_spirv

    GLboolean __GLEW_ARB_gpu_shader5

    GLboolean __GLEW_ARB_gpu_shader_fp64

    GLboolean __GLEW_ARB_gpu_shader_int64

    GLboolean __GLEW_ARB_half_float_pixel

    GLboolean __GLEW_ARB_half_float_vertex

    GLboolean __GLEW_ARB_imaging

    GLboolean __GLEW_ARB_indirect_parameters

    GLboolean __GLEW_ARB_instanced_arrays

    GLboolean __GLEW_ARB_internalformat_query

    GLboolean __GLEW_ARB_internalformat_query2

    GLboolean __GLEW_ARB_invalidate_subdata

    GLboolean __GLEW_ARB_map_buffer_alignment

    GLboolean __GLEW_ARB_map_buffer_range

    GLboolean __GLEW_ARB_matrix_palette

    GLboolean __GLEW_ARB_multi_bind

    GLboolean __GLEW_ARB_multi_draw_indirect

    GLboolean __GLEW_ARB_multisample

    GLboolean __GLEW_ARB_multitexture

    GLboolean __GLEW_ARB_occlusion_query

    GLboolean __GLEW_ARB_occlusion_query2

    GLboolean __GLEW_ARB_parallel_shader_compile

    GLboolean __GLEW_ARB_pipeline_statistics_query

    GLboolean __GLEW_ARB_pixel_buffer_object

    GLboolean __GLEW_ARB_point_parameters

    GLboolean __GLEW_ARB_point_sprite

    GLboolean __GLEW_ARB_polygon_offset_clamp

    GLboolean __GLEW_ARB_post_depth_coverage

    GLboolean __GLEW_ARB_program_interface_query

    GLboolean __GLEW_ARB_provoking_vertex

    GLboolean __GLEW_ARB_query_buffer_object

    GLboolean __GLEW_ARB_robust_buffer_access_behavior

    GLboolean __GLEW_ARB_robustness

    GLboolean __GLEW_ARB_robustness_application_isolation

    GLboolean __GLEW_ARB_robustness_share_group_isolation

    GLboolean __GLEW_ARB_sample_locations

    GLboolean __GLEW_ARB_sample_shading

    GLboolean __GLEW_ARB_sampler_objects

    GLboolean __GLEW_ARB_seamless_cube_map

    GLboolean __GLEW_ARB_seamless_cubemap_per_texture

    GLboolean __GLEW_ARB_separate_shader_objects

    GLboolean __GLEW_ARB_shader_atomic_counter_ops

    GLboolean __GLEW_ARB_shader_atomic_counters

    GLboolean __GLEW_ARB_shader_ballot

    GLboolean __GLEW_ARB_shader_bit_encoding

    GLboolean __GLEW_ARB_shader_clock

    GLboolean __GLEW_ARB_shader_draw_parameters

    GLboolean __GLEW_ARB_shader_group_vote

    GLboolean __GLEW_ARB_shader_image_load_store

    GLboolean __GLEW_ARB_shader_image_size

    GLboolean __GLEW_ARB_shader_objects

    GLboolean __GLEW_ARB_shader_precision

    GLboolean __GLEW_ARB_shader_stencil_export

    GLboolean __GLEW_ARB_shader_storage_buffer_object

    GLboolean __GLEW_ARB_shader_subroutine

    GLboolean __GLEW_ARB_shader_texture_image_samples

    GLboolean __GLEW_ARB_shader_texture_lod

    GLboolean __GLEW_ARB_shader_viewport_layer_array

    GLboolean __GLEW_ARB_shading_language_100

    GLboolean __GLEW_ARB_shading_language_420pack

    GLboolean __GLEW_ARB_shading_language_include

    GLboolean __GLEW_ARB_shading_language_packing

    GLboolean __GLEW_ARB_shadow

    GLboolean __GLEW_ARB_shadow_ambient

    GLboolean __GLEW_ARB_sparse_buffer

    GLboolean __GLEW_ARB_sparse_texture

    GLboolean __GLEW_ARB_sparse_texture2

    GLboolean __GLEW_ARB_sparse_texture_clamp

    GLboolean __GLEW_ARB_spirv_extensions

    GLboolean __GLEW_ARB_stencil_texturing

    GLboolean __GLEW_ARB_sync

    GLboolean __GLEW_ARB_tessellation_shader

    GLboolean __GLEW_ARB_texture_barrier

    GLboolean __GLEW_ARB_texture_border_clamp

    GLboolean __GLEW_ARB_texture_buffer_object

    GLboolean __GLEW_ARB_texture_buffer_object_rgb32

    GLboolean __GLEW_ARB_texture_buffer_range

    GLboolean __GLEW_ARB_texture_compression

    GLboolean __GLEW_ARB_texture_compression_bptc

    GLboolean __GLEW_ARB_texture_compression_rgtc

    GLboolean __GLEW_ARB_texture_cube_map

    GLboolean __GLEW_ARB_texture_cube_map_array

    GLboolean __GLEW_ARB_texture_env_add

    GLboolean __GLEW_ARB_texture_env_combine

    GLboolean __GLEW_ARB_texture_env_crossbar

    GLboolean __GLEW_ARB_texture_env_dot3

    GLboolean __GLEW_ARB_texture_filter_anisotropic

    GLboolean __GLEW_ARB_texture_filter_minmax

    GLboolean __GLEW_ARB_texture_float

    GLboolean __GLEW_ARB_texture_gather

    GLboolean __GLEW_ARB_texture_mirror_clamp_to_edge

    GLboolean __GLEW_ARB_texture_mirrored_repeat

    GLboolean __GLEW_ARB_texture_multisample

    GLboolean __GLEW_ARB_texture_non_power_of_two

    GLboolean __GLEW_ARB_texture_query_levels

    GLboolean __GLEW_ARB_texture_query_lod

    GLboolean __GLEW_ARB_texture_rectangle

    GLboolean __GLEW_ARB_texture_rg

    GLboolean __GLEW_ARB_texture_rgb10_a2ui

    GLboolean __GLEW_ARB_texture_stencil8

    GLboolean __GLEW_ARB_texture_storage

    GLboolean __GLEW_ARB_texture_storage_multisample

    GLboolean __GLEW_ARB_texture_swizzle

    GLboolean __GLEW_ARB_texture_view

    GLboolean __GLEW_ARB_timer_query

    GLboolean __GLEW_ARB_transform_feedback2

    GLboolean __GLEW_ARB_transform_feedback3

    GLboolean __GLEW_ARB_transform_feedback_instanced

    GLboolean __GLEW_ARB_transform_feedback_overflow_query

    GLboolean __GLEW_ARB_transpose_matrix

    GLboolean __GLEW_ARB_uniform_buffer_object

    GLboolean __GLEW_ARB_vertex_array_bgra

    GLboolean __GLEW_ARB_vertex_array_object

    GLboolean __GLEW_ARB_vertex_attrib_64bit

    GLboolean __GLEW_ARB_vertex_attrib_binding

    GLboolean __GLEW_ARB_vertex_blend

    GLboolean __GLEW_ARB_vertex_buffer_object

    GLboolean __GLEW_ARB_vertex_program

    GLboolean __GLEW_ARB_vertex_shader

    GLboolean __GLEW_ARB_vertex_type_10f_11f_11f_rev

    GLboolean __GLEW_ARB_vertex_type_2_10_10_10_rev

    GLboolean __GLEW_ARB_viewport_array

    GLboolean __GLEW_ARB_window_pos

    GLboolean __GLEW_ARM_mali_program_binary

    GLboolean __GLEW_ARM_mali_shader_binary

    GLboolean __GLEW_ARM_rgba8

    GLboolean __GLEW_ARM_shader_framebuffer_fetch

    GLboolean __GLEW_ARM_shader_framebuffer_fetch_depth_stencil

    GLboolean __GLEW_ATIX_point_sprites

    GLboolean __GLEW_ATIX_texture_env_combine3

    GLboolean __GLEW_ATIX_texture_env_route

    GLboolean __GLEW_ATIX_vertex_shader_output_point_size

    GLboolean __GLEW_ATI_draw_buffers

    GLboolean __GLEW_ATI_element_array

    GLboolean __GLEW_ATI_envmap_bumpmap

    GLboolean __GLEW_ATI_fragment_shader

    GLboolean __GLEW_ATI_map_object_buffer

    GLboolean __GLEW_ATI_meminfo

    GLboolean __GLEW_ATI_pn_triangles

    GLboolean __GLEW_ATI_separate_stencil

    GLboolean __GLEW_ATI_shader_texture_lod

    GLboolean __GLEW_ATI_text_fragment_shader

    GLboolean __GLEW_ATI_texture_compression_3dc

    GLboolean __GLEW_ATI_texture_env_combine3

    GLboolean __GLEW_ATI_texture_float

    GLboolean __GLEW_ATI_texture_mirror_once

    GLboolean __GLEW_ATI_vertex_array_object

    GLboolean __GLEW_ATI_vertex_attrib_array_object

    GLboolean __GLEW_ATI_vertex_streams

    GLboolean __GLEW_EGL_KHR_context_flush_control

    GLboolean __GLEW_EGL_NV_robustness_video_memory_purge

    GLboolean __GLEW_EXT_422_pixels

    GLboolean __GLEW_EXT_Cg_shader

    GLboolean __GLEW_EXT_EGL_image_array

    GLboolean __GLEW_EXT_YUV_target

    GLboolean __GLEW_EXT_abgr

    GLboolean __GLEW_EXT_base_instance

    GLboolean __GLEW_EXT_bgra

    GLboolean __GLEW_EXT_bindable_uniform

    GLboolean __GLEW_EXT_blend_color

    GLboolean __GLEW_EXT_blend_equation_separate

    GLboolean __GLEW_EXT_blend_func_extended

    GLboolean __GLEW_EXT_blend_func_separate

    GLboolean __GLEW_EXT_blend_logic_op

    GLboolean __GLEW_EXT_blend_minmax

    GLboolean __GLEW_EXT_blend_subtract

    GLboolean __GLEW_EXT_buffer_storage

    GLboolean __GLEW_EXT_clear_texture

    GLboolean __GLEW_EXT_clip_cull_distance

    GLboolean __GLEW_EXT_clip_volume_hint

    GLboolean __GLEW_EXT_cmyka

    GLboolean __GLEW_EXT_color_buffer_float

    GLboolean __GLEW_EXT_color_buffer_half_float

    GLboolean __GLEW_EXT_color_subtable

    GLboolean __GLEW_EXT_compiled_vertex_array

    GLboolean __GLEW_EXT_compressed_ETC1_RGB8_sub_texture

    GLboolean __GLEW_EXT_conservative_depth

    GLboolean __GLEW_EXT_convolution

    GLboolean __GLEW_EXT_coordinate_frame

    GLboolean __GLEW_EXT_copy_image

    GLboolean __GLEW_EXT_copy_texture

    GLboolean __GLEW_EXT_cull_vertex

    GLboolean __GLEW_EXT_debug_label

    GLboolean __GLEW_EXT_debug_marker

    GLboolean __GLEW_EXT_depth_bounds_test

    GLboolean __GLEW_EXT_direct_state_access

    GLboolean __GLEW_EXT_discard_framebuffer

    GLboolean __GLEW_EXT_draw_buffers

    GLboolean __GLEW_EXT_draw_buffers2

    GLboolean __GLEW_EXT_draw_buffers_indexed

    GLboolean __GLEW_EXT_draw_elements_base_vertex

    GLboolean __GLEW_EXT_draw_instanced

    GLboolean __GLEW_EXT_draw_range_elements

    GLboolean __GLEW_EXT_external_buffer

    GLboolean __GLEW_EXT_float_blend

    GLboolean __GLEW_EXT_fog_coord

    GLboolean __GLEW_EXT_frag_depth

    GLboolean __GLEW_EXT_fragment_lighting

    GLboolean __GLEW_EXT_framebuffer_blit

    GLboolean __GLEW_EXT_framebuffer_multisample

    GLboolean __GLEW_EXT_framebuffer_multisample_blit_scaled

    GLboolean __GLEW_EXT_framebuffer_object

    GLboolean __GLEW_EXT_framebuffer_sRGB

    GLboolean __GLEW_EXT_geometry_point_size

    GLboolean __GLEW_EXT_geometry_shader

    GLboolean __GLEW_EXT_geometry_shader4

    GLboolean __GLEW_EXT_gpu_program_parameters

    GLboolean __GLEW_EXT_gpu_shader4

    GLboolean __GLEW_EXT_gpu_shader5

    GLboolean __GLEW_EXT_histogram

    GLboolean __GLEW_EXT_index_array_formats

    GLboolean __GLEW_EXT_index_func

    GLboolean __GLEW_EXT_index_material

    GLboolean __GLEW_EXT_index_texture

    GLboolean __GLEW_EXT_instanced_arrays

    GLboolean __GLEW_EXT_light_texture

    GLboolean __GLEW_EXT_map_buffer_range

    GLboolean __GLEW_EXT_memory_object

    GLboolean __GLEW_EXT_memory_object_fd

    GLboolean __GLEW_EXT_memory_object_win32

    GLboolean __GLEW_EXT_misc_attribute

    GLboolean __GLEW_EXT_multi_draw_arrays

    GLboolean __GLEW_EXT_multi_draw_indirect

    GLboolean __GLEW_EXT_multiple_textures

    GLboolean __GLEW_EXT_multisample

    GLboolean __GLEW_EXT_multisample_compatibility

    GLboolean __GLEW_EXT_multisampled_render_to_texture

    GLboolean __GLEW_EXT_multisampled_render_to_texture2

    GLboolean __GLEW_EXT_multiview_draw_buffers

    GLboolean __GLEW_EXT_packed_depth_stencil

    GLboolean __GLEW_EXT_packed_float

    GLboolean __GLEW_EXT_packed_pixels

    GLboolean __GLEW_EXT_paletted_texture

    GLboolean __GLEW_EXT_pixel_buffer_object

    GLboolean __GLEW_EXT_pixel_transform

    GLboolean __GLEW_EXT_pixel_transform_color_table

    GLboolean __GLEW_EXT_point_parameters

    GLboolean __GLEW_EXT_polygon_offset

    GLboolean __GLEW_EXT_polygon_offset_clamp

    GLboolean __GLEW_EXT_post_depth_coverage

    GLboolean __GLEW_EXT_provoking_vertex

    GLboolean __GLEW_EXT_pvrtc_sRGB

    GLboolean __GLEW_EXT_raster_multisample

    GLboolean __GLEW_EXT_read_format_bgra

    GLboolean __GLEW_EXT_render_snorm

    GLboolean __GLEW_EXT_rescale_normal

    GLboolean __GLEW_EXT_sRGB

    GLboolean __GLEW_EXT_sRGB_write_control

    GLboolean __GLEW_EXT_scene_marker

    GLboolean __GLEW_EXT_secondary_color

    GLboolean __GLEW_EXT_semaphore

    GLboolean __GLEW_EXT_semaphore_fd

    GLboolean __GLEW_EXT_semaphore_win32

    GLboolean __GLEW_EXT_separate_shader_objects

    GLboolean __GLEW_EXT_separate_specular_color

    GLboolean __GLEW_EXT_shader_framebuffer_fetch

    GLboolean __GLEW_EXT_shader_group_vote

    GLboolean __GLEW_EXT_shader_image_load_formatted

    GLboolean __GLEW_EXT_shader_image_load_store

    GLboolean __GLEW_EXT_shader_implicit_conversions

    GLboolean __GLEW_EXT_shader_integer_mix

    GLboolean __GLEW_EXT_shader_io_blocks

    GLboolean __GLEW_EXT_shader_non_constant_global_initializers

    GLboolean __GLEW_EXT_shader_pixel_local_storage

    GLboolean __GLEW_EXT_shader_pixel_local_storage2

    GLboolean __GLEW_EXT_shader_texture_lod

    GLboolean __GLEW_EXT_shadow_funcs

    GLboolean __GLEW_EXT_shadow_samplers

    GLboolean __GLEW_EXT_shared_texture_palette

    GLboolean __GLEW_EXT_sparse_texture

    GLboolean __GLEW_EXT_sparse_texture2

    GLboolean __GLEW_EXT_stencil_clear_tag

    GLboolean __GLEW_EXT_stencil_two_side

    GLboolean __GLEW_EXT_stencil_wrap

    GLboolean __GLEW_EXT_subtexture

    GLboolean __GLEW_EXT_texture

    GLboolean __GLEW_EXT_texture3D

    GLboolean __GLEW_EXT_texture_array

    GLboolean __GLEW_EXT_texture_buffer_object

    GLboolean __GLEW_EXT_texture_compression_astc_decode_mode

    GLboolean __GLEW_EXT_texture_compression_astc_decode_mode_rgb9e5

    GLboolean __GLEW_EXT_texture_compression_bptc

    GLboolean __GLEW_EXT_texture_compression_dxt1

    GLboolean __GLEW_EXT_texture_compression_latc

    GLboolean __GLEW_EXT_texture_compression_rgtc

    GLboolean __GLEW_EXT_texture_compression_s3tc

    GLboolean __GLEW_EXT_texture_cube_map

    GLboolean __GLEW_EXT_texture_cube_map_array

    GLboolean __GLEW_EXT_texture_edge_clamp

    GLboolean __GLEW_EXT_texture_env

    GLboolean __GLEW_EXT_texture_env_add

    GLboolean __GLEW_EXT_texture_env_combine

    GLboolean __GLEW_EXT_texture_env_dot3

    GLboolean __GLEW_EXT_texture_filter_anisotropic

    GLboolean __GLEW_EXT_texture_filter_minmax

    GLboolean __GLEW_EXT_texture_format_BGRA8888

    GLboolean __GLEW_EXT_texture_integer

    GLboolean __GLEW_EXT_texture_lod_bias

    GLboolean __GLEW_EXT_texture_mirror_clamp

    GLboolean __GLEW_EXT_texture_norm16

    GLboolean __GLEW_EXT_texture_object

    GLboolean __GLEW_EXT_texture_perturb_normal

    GLboolean __GLEW_EXT_texture_rectangle

    GLboolean __GLEW_EXT_texture_rg

    GLboolean __GLEW_EXT_texture_sRGB

    GLboolean __GLEW_EXT_texture_sRGB_R8

    GLboolean __GLEW_EXT_texture_sRGB_RG8

    GLboolean __GLEW_EXT_texture_sRGB_decode

    GLboolean __GLEW_EXT_texture_shared_exponent

    GLboolean __GLEW_EXT_texture_snorm

    GLboolean __GLEW_EXT_texture_storage

    GLboolean __GLEW_EXT_texture_swizzle

    GLboolean __GLEW_EXT_texture_type_2_10_10_10_REV

    GLboolean __GLEW_EXT_texture_view

    GLboolean __GLEW_EXT_timer_query

    GLboolean __GLEW_EXT_transform_feedback

    GLboolean __GLEW_EXT_unpack_subimage

    GLboolean __GLEW_EXT_vertex_array

    GLboolean __GLEW_EXT_vertex_array_bgra

    GLboolean __GLEW_EXT_vertex_array_setXXX

    GLboolean __GLEW_EXT_vertex_attrib_64bit

    GLboolean __GLEW_EXT_vertex_shader

    GLboolean __GLEW_EXT_vertex_weighting

    GLboolean __GLEW_EXT_win32_keyed_mutex

    GLboolean __GLEW_EXT_window_rectangles

    GLboolean __GLEW_EXT_x11_sync_object

    GLboolean __GLEW_GREMEDY_frame_terminator

    GLboolean __GLEW_GREMEDY_string_marker

    GLboolean __GLEW_HP_convolution_border_modes

    GLboolean __GLEW_HP_image_transform

    GLboolean __GLEW_HP_occlusion_test

    GLboolean __GLEW_HP_texture_lighting

    GLboolean __GLEW_IBM_cull_vertex

    GLboolean __GLEW_IBM_multimode_draw_arrays

    GLboolean __GLEW_IBM_rasterpos_clip

    GLboolean __GLEW_IBM_static_data

    GLboolean __GLEW_IBM_texture_mirrored_repeat

    GLboolean __GLEW_IBM_vertex_array_lists

    GLboolean __GLEW_INGR_color_clamp

    GLboolean __GLEW_INGR_interlace_read

    GLboolean __GLEW_INTEL_conservative_rasterization

    GLboolean __GLEW_INTEL_fragment_shader_ordering

    GLboolean __GLEW_INTEL_framebuffer_CMAA

    GLboolean __GLEW_INTEL_map_texture

    GLboolean __GLEW_INTEL_parallel_arrays

    GLboolean __GLEW_INTEL_performance_query

    GLboolean __GLEW_INTEL_texture_scissor

    GLboolean __GLEW_KHR_blend_equation_advanced

    GLboolean __GLEW_KHR_blend_equation_advanced_coherent

    GLboolean __GLEW_KHR_context_flush_control

    GLboolean __GLEW_KHR_debug

    GLboolean __GLEW_KHR_no_error

    GLboolean __GLEW_KHR_parallel_shader_compile

    GLboolean __GLEW_KHR_robust_buffer_access_behavior

    GLboolean __GLEW_KHR_robustness

    GLboolean __GLEW_KHR_texture_compression_astc_hdr

    GLboolean __GLEW_KHR_texture_compression_astc_ldr

    GLboolean __GLEW_KHR_texture_compression_astc_sliced_3d

    GLboolean __GLEW_KTX_buffer_region

    GLboolean __GLEW_MESAX_texture_stack

    GLboolean __GLEW_MESA_pack_invert

    GLboolean __GLEW_MESA_resize_buffers

    GLboolean __GLEW_MESA_shader_integer_functions

    GLboolean __GLEW_MESA_window_pos

    GLboolean __GLEW_MESA_ycbcr_texture

    GLboolean __GLEW_NVX_blend_equation_advanced_multi_draw_buffers

    GLboolean __GLEW_NVX_conditional_render

    GLboolean __GLEW_NVX_gpu_memory_info

    GLboolean __GLEW_NVX_linked_gpu_multicast

    GLboolean __GLEW_NV_3dvision_settings

    GLboolean __GLEW_NV_EGL_stream_consumer_external

    GLboolean __GLEW_NV_alpha_to_coverage_dither_control

    GLboolean __GLEW_NV_bgr

    GLboolean __GLEW_NV_bindless_multi_draw_indirect

    GLboolean __GLEW_NV_bindless_multi_draw_indirect_count

    GLboolean __GLEW_NV_bindless_texture

    GLboolean __GLEW_NV_blend_equation_advanced

    GLboolean __GLEW_NV_blend_equation_advanced_coherent

    GLboolean __GLEW_NV_blend_minmax_factor

    GLboolean __GLEW_NV_blend_square

    GLboolean __GLEW_NV_clip_space_w_scaling

    GLboolean __GLEW_NV_command_list

    GLboolean __GLEW_NV_compute_program5

    GLboolean __GLEW_NV_conditional_render

    GLboolean __GLEW_NV_conservative_raster

    GLboolean __GLEW_NV_conservative_raster_dilate

    GLboolean __GLEW_NV_conservative_raster_pre_snap_triangles

    GLboolean __GLEW_NV_copy_buffer

    GLboolean __GLEW_NV_copy_depth_to_color

    GLboolean __GLEW_NV_copy_image

    GLboolean __GLEW_NV_deep_texture3D

    GLboolean __GLEW_NV_depth_buffer_float

    GLboolean __GLEW_NV_depth_clamp

    GLboolean __GLEW_NV_depth_range_unclamped

    GLboolean __GLEW_NV_draw_buffers

    GLboolean __GLEW_NV_draw_instanced

    GLboolean __GLEW_NV_draw_texture

    GLboolean __GLEW_NV_draw_vulkan_image

    GLboolean __GLEW_NV_evaluators

    GLboolean __GLEW_NV_explicit_attrib_location

    GLboolean __GLEW_NV_explicit_multisample

    GLboolean __GLEW_NV_fbo_color_attachments

    GLboolean __GLEW_NV_fence

    GLboolean __GLEW_NV_fill_rectangle

    GLboolean __GLEW_NV_float_buffer

    GLboolean __GLEW_NV_fog_distance

    GLboolean __GLEW_NV_fragment_coverage_to_color

    GLboolean __GLEW_NV_fragment_program

    GLboolean __GLEW_NV_fragment_program2

    GLboolean __GLEW_NV_fragment_program4

    GLboolean __GLEW_NV_fragment_program_option

    GLboolean __GLEW_NV_fragment_shader_interlock

    GLboolean __GLEW_NV_framebuffer_blit

    GLboolean __GLEW_NV_framebuffer_mixed_samples

    GLboolean __GLEW_NV_framebuffer_multisample

    GLboolean __GLEW_NV_framebuffer_multisample_coverage

    GLboolean __GLEW_NV_generate_mipmap_sRGB

    GLboolean __GLEW_NV_geometry_program4

    GLboolean __GLEW_NV_geometry_shader4

    GLboolean __GLEW_NV_geometry_shader_passthrough

    GLboolean __GLEW_NV_gpu_multicast

    GLboolean __GLEW_NV_gpu_program4

    GLboolean __GLEW_NV_gpu_program5

    GLboolean __GLEW_NV_gpu_program5_mem_extended

    GLboolean __GLEW_NV_gpu_program_fp64

    GLboolean __GLEW_NV_gpu_shader5

    GLboolean __GLEW_NV_half_float

    GLboolean __GLEW_NV_image_formats

    GLboolean __GLEW_NV_instanced_arrays

    GLboolean __GLEW_NV_internalformat_sample_query

    GLboolean __GLEW_NV_light_max_exponent

    GLboolean __GLEW_NV_multisample_coverage

    GLboolean __GLEW_NV_multisample_filter_hint

    GLboolean __GLEW_NV_non_square_matrices

    GLboolean __GLEW_NV_occlusion_query

    GLboolean __GLEW_NV_pack_subimage

    GLboolean __GLEW_NV_packed_depth_stencil

    GLboolean __GLEW_NV_packed_float

    GLboolean __GLEW_NV_packed_float_linear

    GLboolean __GLEW_NV_parameter_buffer_object

    GLboolean __GLEW_NV_parameter_buffer_object2

    GLboolean __GLEW_NV_path_rendering

    GLboolean __GLEW_NV_path_rendering_shared_edge

    GLboolean __GLEW_NV_pixel_buffer_object

    GLboolean __GLEW_NV_pixel_data_range

    GLboolean __GLEW_NV_platform_binary

    GLboolean __GLEW_NV_point_sprite

    GLboolean __GLEW_NV_polygon_mode

    GLboolean __GLEW_NV_present_video

    GLboolean __GLEW_NV_primitive_restart

    GLboolean __GLEW_NV_read_depth

    GLboolean __GLEW_NV_read_depth_stencil

    GLboolean __GLEW_NV_read_stencil

    GLboolean __GLEW_NV_register_combiners

    GLboolean __GLEW_NV_register_combiners2

    GLboolean __GLEW_NV_robustness_video_memory_purge

    GLboolean __GLEW_NV_sRGB_formats

    GLboolean __GLEW_NV_sample_locations

    GLboolean __GLEW_NV_sample_mask_override_coverage

    GLboolean __GLEW_NV_shader_atomic_counters

    GLboolean __GLEW_NV_shader_atomic_float

    GLboolean __GLEW_NV_shader_atomic_float64

    GLboolean __GLEW_NV_shader_atomic_fp16_vector

    GLboolean __GLEW_NV_shader_atomic_int64

    GLboolean __GLEW_NV_shader_buffer_load

    GLboolean __GLEW_NV_shader_noperspective_interpolation

    GLboolean __GLEW_NV_shader_storage_buffer_object

    GLboolean __GLEW_NV_shader_thread_group

    GLboolean __GLEW_NV_shader_thread_shuffle

    GLboolean __GLEW_NV_shadow_samplers_array

    GLboolean __GLEW_NV_shadow_samplers_cube

    GLboolean __GLEW_NV_stereo_view_rendering

    GLboolean __GLEW_NV_tessellation_program5

    GLboolean __GLEW_NV_texgen_emboss

    GLboolean __GLEW_NV_texgen_reflection

    GLboolean __GLEW_NV_texture_array

    GLboolean __GLEW_NV_texture_barrier

    GLboolean __GLEW_NV_texture_border_clamp

    GLboolean __GLEW_NV_texture_compression_latc

    GLboolean __GLEW_NV_texture_compression_s3tc

    GLboolean __GLEW_NV_texture_compression_s3tc_update

    GLboolean __GLEW_NV_texture_compression_vtc

    GLboolean __GLEW_NV_texture_env_combine4

    GLboolean __GLEW_NV_texture_expand_normal

    GLboolean __GLEW_NV_texture_multisample

    GLboolean __GLEW_NV_texture_npot_2D_mipmap

    GLboolean __GLEW_NV_texture_rectangle

    GLboolean __GLEW_NV_texture_rectangle_compressed

    GLboolean __GLEW_NV_texture_shader

    GLboolean __GLEW_NV_texture_shader2

    GLboolean __GLEW_NV_texture_shader3

    GLboolean __GLEW_NV_transform_feedback

    GLboolean __GLEW_NV_transform_feedback2

    GLboolean __GLEW_NV_uniform_buffer_unified_memory

    GLboolean __GLEW_NV_vdpau_interop

    GLboolean __GLEW_NV_vertex_array_range

    GLboolean __GLEW_NV_vertex_array_range2

    GLboolean __GLEW_NV_vertex_attrib_integer_64bit

    GLboolean __GLEW_NV_vertex_buffer_unified_memory

    GLboolean __GLEW_NV_vertex_program

    GLboolean __GLEW_NV_vertex_program1_1

    GLboolean __GLEW_NV_vertex_program2

    GLboolean __GLEW_NV_vertex_program2_option

    GLboolean __GLEW_NV_vertex_program3

    GLboolean __GLEW_NV_vertex_program4

    GLboolean __GLEW_NV_video_capture

    GLboolean __GLEW_NV_viewport_array

    GLboolean __GLEW_NV_viewport_array2

    GLboolean __GLEW_NV_viewport_swizzle

    GLboolean __GLEW_OES_byte_coordinates

    GLboolean __GLEW_OML_interlace

    GLboolean __GLEW_OML_resample

    GLboolean __GLEW_OML_subsample

    GLboolean __GLEW_OVR_multiview

    GLboolean __GLEW_OVR_multiview2

    GLboolean __GLEW_OVR_multiview_multisampled_render_to_texture

    GLboolean __GLEW_PGI_misc_hints

    GLboolean __GLEW_PGI_vertex_hints

    GLboolean __GLEW_QCOM_alpha_test

    GLboolean __GLEW_QCOM_binning_control

    GLboolean __GLEW_QCOM_driver_control

    GLboolean __GLEW_QCOM_extended_get

    GLboolean __GLEW_QCOM_extended_get2

    GLboolean __GLEW_QCOM_framebuffer_foveated

    GLboolean __GLEW_QCOM_perfmon_global_mode

    GLboolean __GLEW_QCOM_shader_framebuffer_fetch_noncoherent

    GLboolean __GLEW_QCOM_tiled_rendering

    GLboolean __GLEW_QCOM_writeonly_rendering

    GLboolean __GLEW_REGAL_ES1_0_compatibility

    GLboolean __GLEW_REGAL_ES1_1_compatibility

    GLboolean __GLEW_REGAL_enable

    GLboolean __GLEW_REGAL_error_string

    GLboolean __GLEW_REGAL_extension_query

    GLboolean __GLEW_REGAL_log

    GLboolean __GLEW_REGAL_proc_address

    GLboolean __GLEW_REND_screen_coordinates

    GLboolean __GLEW_S3_s3tc

    GLboolean __GLEW_SGIS_clip_band_hint

    GLboolean __GLEW_SGIS_color_range

    GLboolean __GLEW_SGIS_detail_texture

    GLboolean __GLEW_SGIS_fog_function

    GLboolean __GLEW_SGIS_generate_mipmap

    GLboolean __GLEW_SGIS_line_texgen

    GLboolean __GLEW_SGIS_multisample

    GLboolean __GLEW_SGIS_multitexture

    GLboolean __GLEW_SGIS_pixel_texture

    GLboolean __GLEW_SGIS_point_line_texgen

    GLboolean __GLEW_SGIS_shared_multisample

    GLboolean __GLEW_SGIS_sharpen_texture

    GLboolean __GLEW_SGIS_texture4D

    GLboolean __GLEW_SGIS_texture_border_clamp

    GLboolean __GLEW_SGIS_texture_edge_clamp

    GLboolean __GLEW_SGIS_texture_filter4

    GLboolean __GLEW_SGIS_texture_lod

    GLboolean __GLEW_SGIS_texture_select

    GLboolean __GLEW_SGIX_async

    GLboolean __GLEW_SGIX_async_histogram

    GLboolean __GLEW_SGIX_async_pixel

    GLboolean __GLEW_SGIX_bali_g_instruments

    GLboolean __GLEW_SGIX_bali_r_instruments

    GLboolean __GLEW_SGIX_bali_timer_instruments

    GLboolean __GLEW_SGIX_blend_alpha_minmax

    GLboolean __GLEW_SGIX_blend_cadd

    GLboolean __GLEW_SGIX_blend_cmultiply

    GLboolean __GLEW_SGIX_calligraphic_fragment

    GLboolean __GLEW_SGIX_clipmap

    GLboolean __GLEW_SGIX_color_matrix_accuracy

    GLboolean __GLEW_SGIX_color_table_index_mode

    GLboolean __GLEW_SGIX_complex_polar

    GLboolean __GLEW_SGIX_convolution_accuracy

    GLboolean __GLEW_SGIX_cube_map

    GLboolean __GLEW_SGIX_cylinder_texgen

    GLboolean __GLEW_SGIX_datapipe

    GLboolean __GLEW_SGIX_decimation

    GLboolean __GLEW_SGIX_depth_pass_instrument

    GLboolean __GLEW_SGIX_depth_texture

    GLboolean __GLEW_SGIX_dvc

    GLboolean __GLEW_SGIX_flush_raster

    GLboolean __GLEW_SGIX_fog_blend

    GLboolean __GLEW_SGIX_fog_factor_to_alpha

    GLboolean __GLEW_SGIX_fog_layers

    GLboolean __GLEW_SGIX_fog_offset

    GLboolean __GLEW_SGIX_fog_patchy

    GLboolean __GLEW_SGIX_fog_scale

    GLboolean __GLEW_SGIX_fog_texture

    GLboolean __GLEW_SGIX_fragment_lighting_space

    GLboolean __GLEW_SGIX_fragment_specular_lighting

    GLboolean __GLEW_SGIX_fragments_instrument

    GLboolean __GLEW_SGIX_framezoom

    GLboolean __GLEW_SGIX_icc_texture

    GLboolean __GLEW_SGIX_igloo_interface

    GLboolean __GLEW_SGIX_image_compression

    GLboolean __GLEW_SGIX_impact_pixel_texture

    GLboolean __GLEW_SGIX_instrument_error

    GLboolean __GLEW_SGIX_interlace

    GLboolean __GLEW_SGIX_ir_instrument1

    GLboolean __GLEW_SGIX_line_quality_hint

    GLboolean __GLEW_SGIX_list_priority

    GLboolean __GLEW_SGIX_mpeg1

    GLboolean __GLEW_SGIX_mpeg2

    GLboolean __GLEW_SGIX_nonlinear_lighting_pervertex

    GLboolean __GLEW_SGIX_nurbs_eval

    GLboolean __GLEW_SGIX_occlusion_instrument

    GLboolean __GLEW_SGIX_packed_6bytes

    GLboolean __GLEW_SGIX_pixel_texture

    GLboolean __GLEW_SGIX_pixel_texture_bits

    GLboolean __GLEW_SGIX_pixel_texture_lod

    GLboolean __GLEW_SGIX_pixel_tiles

    GLboolean __GLEW_SGIX_polynomial_ffd

    GLboolean __GLEW_SGIX_quad_mesh

    GLboolean __GLEW_SGIX_reference_plane

    GLboolean __GLEW_SGIX_resample

    GLboolean __GLEW_SGIX_scalebias_hint

    GLboolean __GLEW_SGIX_shadow

    GLboolean __GLEW_SGIX_shadow_ambient

    GLboolean __GLEW_SGIX_slim

    GLboolean __GLEW_SGIX_spotlight_cutoff

    GLboolean __GLEW_SGIX_sprite

    GLboolean __GLEW_SGIX_subdiv_patch

    GLboolean __GLEW_SGIX_subsample

    GLboolean __GLEW_SGIX_tag_sample_buffer

    GLboolean __GLEW_SGIX_texture_add_env

    GLboolean __GLEW_SGIX_texture_coordinate_clamp

    GLboolean __GLEW_SGIX_texture_lod_bias

    GLboolean __GLEW_SGIX_texture_mipmap_anisotropic

    GLboolean __GLEW_SGIX_texture_multi_buffer

    GLboolean __GLEW_SGIX_texture_phase

    GLboolean __GLEW_SGIX_texture_range

    GLboolean __GLEW_SGIX_texture_scale_bias

    GLboolean __GLEW_SGIX_texture_supersample

    GLboolean __GLEW_SGIX_vector_ops

    GLboolean __GLEW_SGIX_vertex_array_object

    GLboolean __GLEW_SGIX_vertex_preclip

    GLboolean __GLEW_SGIX_vertex_preclip_hint

    GLboolean __GLEW_SGIX_ycrcb

    GLboolean __GLEW_SGIX_ycrcb_subsample

    GLboolean __GLEW_SGIX_ycrcba

    GLboolean __GLEW_SGI_color_matrix

    GLboolean __GLEW_SGI_color_table

    GLboolean __GLEW_SGI_complex

    GLboolean __GLEW_SGI_complex_type

    GLboolean __GLEW_SGI_fft

    GLboolean __GLEW_SGI_texture_color_table

    GLboolean __GLEW_SUNX_constant_data

    GLboolean __GLEW_SUN_convolution_border_modes

    GLboolean __GLEW_SUN_global_alpha

    GLboolean __GLEW_SUN_mesh_array

    GLboolean __GLEW_SUN_read_video_pixels

    GLboolean __GLEW_SUN_slice_accum

    GLboolean __GLEW_SUN_triangle_list

    GLboolean __GLEW_SUN_vertex

    GLboolean __GLEW_WIN_phong_shading

    GLboolean __GLEW_WIN_scene_markerXXX

    GLboolean __GLEW_WIN_specular_fog

    GLboolean __GLEW_WIN_swap_hint

    GLenum glewInit()

    GLboolean glewIsSupported(char* name)

    GLboolean glewExperimental

    GLboolean glewGetExtension(char* name)

    GLubyte* glewGetErrorString(GLenum error)

    GLubyte* glewGetString(GLenum name)

    GLuint glBindFramebuffer(GLenum target, GLuint framebuffer) nogil

    void glFramebufferTexture(GLenum target, GLenum attachment, GLuint texture, GLint level) nogil

    void glDrawBuffers(GLsizei n, GLenum* bufs) nogil

    GLenum glCheckFramebufferStatus(GLenum target) nogil

    void glGenFramebuffers(GLsizei n, GLuint* framebuffers) nogil