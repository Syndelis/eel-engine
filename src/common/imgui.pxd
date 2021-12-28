# distutils: language = c++

from libcpp cimport bool
from glfw3 cimport *

cdef extern from "imgui.h":
    ctypedef long long __int64
    void ProgressBar(float fraction_, const ImVec2& size_arg_, const char *overlay) nogil
    struct ImDrawChannel:
        pass
    struct ImDrawCmd:
        pass
    struct ImDrawData:
        pass
    struct ImDrawList:
        pass
    struct ImDrawListSharedData:
        pass
    struct ImDrawListSplitter:
        pass
    struct ImDrawVert:
        pass
    struct ImFont:
        pass
    struct ImFontAtlas:
        pass
    struct ImFontBuilderIO:
        pass
    struct ImFontConfig:
        pass
    struct ImFontGlyph:
        pass
    struct ImFontGlyphRangesBuilder:
        pass
    struct ImColor:
        pass
    struct ImGuiContext:
        pass
    struct ImGuiIO:
        pass
    struct ImGuiInputTextCallbackData:
        pass
    struct ImGuiListClipper:
        pass
    struct ImGuiOnceUponAFrame:
        pass
    struct ImGuiPayload:
        pass
    struct ImGuiSizeCallbackData:
        pass
    struct ImGuiStorage:
        pass
    struct ImGuiStyle:
        pass
    struct ImGuiTableSortSpecs:
        pass
    struct ImGuiTableColumnSortSpecs:
        pass
    struct ImGuiTextBuffer:
        pass
    struct ImGuiTextFilter:
        pass
    struct ImGuiViewport:
        pass
    ctypedef int ImGuiCol
    ctypedef int ImGuiCond
    ctypedef int ImGuiDataType
    ctypedef int ImGuiDir
    ctypedef int ImGuiKey
    ctypedef int ImGuiNavInput
    ctypedef int ImGuiMouseButton
    ctypedef int ImGuiMouseCursor
    ctypedef int ImGuiSortDirection
    ctypedef int ImGuiStyleVar
    ctypedef int ImGuiTableBgTarget
    ctypedef int ImDrawFlags
    ctypedef int ImDrawListFlags
    ctypedef int ImFontAtlasFlags
    ctypedef int ImGuiBackendFlags
    ctypedef int ImGuiButtonFlags
    ctypedef int ImGuiColorEditFlags
    ctypedef int ImGuiConfigFlags
    ctypedef int ImGuiComboFlags
    ctypedef int ImGuiDragDropFlags
    ctypedef int ImGuiFocusedFlags
    ctypedef int ImGuiHoveredFlags
    ctypedef int ImGuiInputTextFlags
    ctypedef int ImGuiKeyModFlags
    ctypedef int ImGuiPopupFlags
    ctypedef int ImGuiSelectableFlags
    ctypedef int ImGuiSliderFlags
    ctypedef int ImGuiTabBarFlags
    ctypedef int ImGuiTabItemFlags
    ctypedef int ImGuiTableFlags
    ctypedef int ImGuiTableColumnFlags
    ctypedef int ImGuiTableRowFlags
    ctypedef int ImGuiTreeNodeFlags
    ctypedef int ImGuiViewportFlags
    ctypedef int ImGuiWindowFlags
    ctypedef void* ImTextureID
    ctypedef unsigned short ImDrawIdx
    ctypedef unsigned int ImGuiID
    ctypedef signed char ImS8
    ctypedef unsigned char ImU8
    ctypedef signed short ImS16
    ctypedef unsigned short ImU16
    ctypedef signed int ImS32
    ctypedef unsigned int ImU32
    ctypedef int64_t ImS64
    ctypedef uint64_t ImU64
    ctypedef signed long long ImS64
    ctypedef unsigned long long ImU64
    ctypedef unsigned short ImWchar16
    ctypedef unsigned int ImWchar32
    ctypedef ImWchar32 ImWchar
    ctypedef ImWchar16 ImWchar
    ctypedef int (*ImGuiInputTextCallback)(ImGuiInputTextCallbackData* data)
    ctypedef void (*ImGuiSizeCallback)(ImGuiSizeCallbackData* data)
    ctypedef void* (*ImGuiMemAllocFunc)(size_t sz, void* user_data)
    ctypedef void (*ImGuiMemFreeFunc)(void* ptr, void* user_data)
    struct ImVec2:
        float x, y
        pass
    struct ImVec4:
        float x, y, z, w
        pass

    enum ImGuiCol_:
        ImGuiCol_Text=0,
        ImGuiCol_TextDisabled,
        ImGuiCol_WindowBg,
        ImGuiCol_PopupBg,
        ImGuiCol_Border,
        ImGuiCol_BorderShadow,
        ImGuiCol_FrameBg,
        ImGuiCol_FrameBgHovered,
        ImGuiCol_FrameBgActive,
        ImGuiCol_TitleBg,
        ImGuiCol_TitleBgActive,
        ImGuiCol_TitleBgCollapsed,
        ImGuiCol_MenuBarBg,
        ImGuiCol_ScrollbarBg,
        ImGuiCol_ScrollbarGrab,
        ImGuiCol_ScrollbarGrabHovered,
        ImGuiCol_ScrollbarGrabActive,
        ImGuiCol_CheckMark,
        ImGuiCol_SliderGrab,
        ImGuiCol_SliderGrabActive,
        ImGuiCol_Button,
        ImGuiCol_ButtonHovered,
        ImGuiCol_ButtonActive,
        ImGuiCol_Header,
        ImGuiCol_HeaderHovered,
        ImGuiCol_HeaderActive,
        ImGuiCol_Separator,
        ImGuiCol_SeparatorHovered,
        ImGuiCol_SeparatorActive,
        ImGuiCol_ResizeGrip,
        ImGuiCol_ResizeGripHovered,
        ImGuiCol_ResizeGripActive,
        ImGuiCol_Tab,
        ImGuiCol_TabHovered,
        ImGuiCol_TabActive,
        ImGuiCol_TabUnfocused,
        ImGuiCol_TabUnfocusedActive,
        ImGuiCol_PlotLines,
        ImGuiCol_PlotLinesHovered,
        ImGuiCol_PlotHistogram,
        ImGuiCol_PlotHistogramHovered,
        ImGuiCol_TableHeaderBg,
        ImGuiCol_TableBorderStrong,
        ImGuiCol_TableBorderLight,
        ImGuiCol_TableRowBg,
        ImGuiCol_TableRowBgAlt,
        ImGuiCol_TextSelectedBg,
        ImGuiCol_DragDropTarget,
        ImGuiCol_NavHighlight,
        ImGuiCol_NavWindowingHighlight,
        ImGuiCol_NavWindowingDimBg,
        ImGuiCol_ModalWindowDimBg,
        ImGuiCol_COUNT

cdef extern from "imgui.h" namespace "ImGui":
    ImGuiContext* CreateContext(ImFontAtlas* shared_font_atlas_) nogil
    ImGuiContext* CreateContext() nogil
    void DestroyContext(ImGuiContext* ctx_) nogil
    void DestroyContext() nogil
    ImGuiContext* GetCurrentContext() nogil
    void SetCurrentContext(ImGuiContext* ctx_) nogil
    ImGuiIO& GetIO() nogil
    ImGuiStyle& GetStyle() nogil
    void NewFrame() nogil
    void EndFrame() nogil
    void Render() nogil
    ImDrawData* GetDrawData() nogil
    void ShowDemoWindow(bool* p_open_) nogil
    void ShowDemoWindow() nogil
    void ShowMetricsWindow(bool* p_open_) nogil
    void ShowMetricsWindow() nogil
    void ShowAboutWindow(bool* p_open_) nogil
    void ShowAboutWindow() nogil
    void ShowStyleEditor(ImGuiStyle* ref_) nogil
    void ShowStyleEditor() nogil
    bool ShowStyleSelector(const char* label_) nogil
    void ShowFontSelector(const char* label_) nogil
    void ShowUserGuide() nogil
    const char* GetVersion() nogil
    void StyleColorsDark(ImGuiStyle* dst_) nogil
    void StyleColorsDark() nogil
    void StyleColorsLight(ImGuiStyle* dst_) nogil
    void StyleColorsLight() nogil
    void StyleColorsClassic(ImGuiStyle* dst_) nogil
    void StyleColorsClassic() nogil
    bool Begin(const char* name_, bool* p_open_, ImGuiWindowFlags flags_) nogil
    bool Begin(const char* name_, bool* p_open_) nogil
    bool Begin(const char* name_) nogil
    void End() nogil
    bool BeginChild(const char* str_id_, const ImVec2& size_) nogil
    bool BeginChild(const char* str_id_) nogil
    bool BeginChild(ImGuiID id_, const ImVec2& size_) nogil
    bool BeginChild(ImGuiID id_) nogil
    void EndChild() nogil
    bool IsWindowAppearing() nogil
    bool IsWindowCollapsed() nogil
    bool IsWindowFocused(ImGuiFocusedFlags flags_) nogil
    bool IsWindowFocused() nogil
    bool IsWindowHovered(ImGuiHoveredFlags flags_) nogil
    bool IsWindowHovered() nogil
    ImDrawList* GetWindowDrawList() nogil
    ImVec2 GetWindowPos() nogil
    ImVec2 GetWindowSize() nogil
    float GetWindowWidth() nogil
    float GetWindowHeight() nogil
    void SetNextWindowPos(const ImVec2& pos_, ImGuiCond cond_, const ImVec2& pivot_) nogil
    void SetNextWindowPos(const ImVec2& pos_, ImGuiCond cond_) nogil
    void SetNextWindowPos(const ImVec2& pos_) nogil
    void SetNextWindowSize(const ImVec2& size_, ImGuiCond cond_) nogil
    void SetNextWindowSize(const ImVec2& size_) nogil
    void SetNextWindowSizeConstraints(const ImVec2& size_min_, const ImVec2& size_max_, ImGuiSizeCallback custom_callback_, void* custom_callback_data_) nogil
    void SetNextWindowSizeConstraints(const ImVec2& size_min_, const ImVec2& size_max_, ImGuiSizeCallback custom_callback_) nogil
    void SetNextWindowSizeConstraints(const ImVec2& size_min_, const ImVec2& size_max_) nogil
    void SetNextWindowContentSize(const ImVec2& size_) nogil
    void SetNextWindowCollapsed(bool collapsed_, ImGuiCond cond_) nogil
    void SetNextWindowCollapsed(bool collapsed_) nogil
    void SetNextWindowFocus() nogil
    void SetNextWindowBgAlpha(float alpha_) nogil
    void SetWindowPos(const ImVec2& pos_, ImGuiCond cond_) nogil
    void SetWindowPos(const ImVec2& pos_) nogil
    void SetWindowSize(const ImVec2& size_, ImGuiCond cond_) nogil
    void SetWindowSize(const ImVec2& size_) nogil
    void SetWindowCollapsed(bool collapsed_, ImGuiCond cond_) nogil
    void SetWindowCollapsed(bool collapsed_) nogil
    void SetWindowFocus() nogil
    void SetWindowFontScale(float scale_) nogil
    void SetWindowPos(const char* name_, const ImVec2& pos_, ImGuiCond cond_) nogil
    void SetWindowPos(const char* name_, const ImVec2& pos_) nogil
    void SetWindowSize(const char* name_, const ImVec2& size_, ImGuiCond cond_) nogil
    void SetWindowSize(const char* name_, const ImVec2& size_) nogil
    void SetWindowCollapsed(const char* name_, bool collapsed_, ImGuiCond cond_) nogil
    void SetWindowCollapsed(const char* name_, bool collapsed_) nogil
    void SetWindowFocus(const char* name_) nogil
    ImVec2 GetContentRegionAvail() nogil
    ImVec2 GetContentRegionMax() nogil
    ImVec2 GetWindowContentRegionMin() nogil
    ImVec2 GetWindowContentRegionMax() nogil
    float GetScrollX() nogil
    float GetScrollY() nogil
    void SetScrollX(float scroll_x_) nogil
    void SetScrollY(float scroll_y_) nogil
    float GetScrollMaxX() nogil
    float GetScrollMaxY() nogil
    void SetScrollHereX(float center_x_ratio_) nogil
    void SetScrollHereX() nogil
    void SetScrollHereY(float center_y_ratio_) nogil
    void SetScrollHereY() nogil
    void SetScrollFromPosX(float local_x_, float center_x_ratio_) nogil
    void SetScrollFromPosX(float local_x_) nogil
    void SetScrollFromPosY(float local_y_, float center_y_ratio_) nogil
    void SetScrollFromPosY(float local_y_) nogil
    void PushFont(ImFont* font_) nogil
    void PopFont() nogil
    void PushStyleColor(ImGuiCol idx_, ImU32 col_) nogil
    void PushStyleColor(ImGuiCol idx_, const ImVec4& col_) nogil
    void PopStyleColor(int count_) nogil
    void PopStyleColor() nogil
    void PushStyleVar(ImGuiStyleVar idx_, float val_) nogil
    void PushStyleVar(ImGuiStyleVar idx_, const ImVec2& val_) nogil
    void PopStyleVar(int count_) nogil
    void PopStyleVar() nogil
    void PushAllowKeyboardFocus(bool allow_keyboard_focus_) nogil
    void PopAllowKeyboardFocus() nogil
    void PushButtonRepeat(bool repeat_) nogil
    void PopButtonRepeat() nogil
    void PushItemWidth(float item_width_) nogil
    void PopItemWidth() nogil
    void SetNextItemWidth(float item_width_) nogil
    float CalcItemWidth() nogil
    void PushTextWrapPos(float wrap_local_pos_x_) nogil
    void PushTextWrapPos() nogil
    void PopTextWrapPos() nogil
    ImFont* GetFont() nogil
    float GetFontSize() nogil
    ImVec2 GetFontTexUvWhitePixel() nogil
    ImU32 GetColorU32(ImGuiCol idx_, float alpha_mul_) nogil
    ImU32 GetColorU32(ImGuiCol idx_) nogil
    ImU32 GetColorU32(const ImVec4& col_) nogil
    ImU32 GetColorU32(ImU32 col_) nogil
    const ImVec4& GetStyleColorVec4(ImGuiCol idx_) nogil
    void Separator() nogil
    void SameLine(float offset_from_start_x_, float spacing_) nogil
    void SameLine(float offset_from_start_x_) nogil
    void SameLine() nogil
    void NewLine() nogil
    void Spacing() nogil
    void Dummy(const ImVec2& size_) nogil
    void Indent(float indent_w_) nogil
    void Indent() nogil
    void Unindent(float indent_w_) nogil
    void Unindent() nogil
    void BeginGroup() nogil
    void EndGroup() nogil
    ImVec2 GetCursorPos() nogil
    float GetCursorPosX() nogil
    float GetCursorPosY() nogil
    void SetCursorPos(const ImVec2& local_pos_) nogil
    void SetCursorPosX(float local_x_) nogil
    void SetCursorPosY(float local_y_) nogil
    ImVec2 GetCursorStartPos() nogil
    ImVec2 GetCursorScreenPos() nogil
    void SetCursorScreenPos(const ImVec2& pos_) nogil
    void AlignTextToFramePadding() nogil
    float GetTextLineHeight() nogil
    float GetTextLineHeightWithSpacing() nogil
    float GetFrameHeight() nogil
    float GetFrameHeightWithSpacing() nogil
    void PushID(const char* str_id_) nogil
    void PushID(const char* str_id_begin_, const char* str_id_end_) nogil
    void PushID(const void* ptr_id_) nogil
    void PushID(int int_id_) nogil
    void PopID() nogil
    ImGuiID GetID(const char* str_id_) nogil
    ImGuiID GetID(const char* str_id_begin_, const char* str_id_end_) nogil
    ImGuiID GetID(const void* ptr_id_) nogil
    void TextUnformatted(const char* text_, const char* text_end_) nogil
    void TextUnformatted(const char* text_) nogil
    void Text(const char* fmt, ...) nogil
    void TextColored(const ImVec4& col_, const char* fmt, ...) nogil
    void TextDisabled(const char* fmt, ...) nogil
    void TextWrapped(const char* fmt, ...) nogil
    void LabelText(const char* label_, const char* fmt, ...) nogil
    void BulletText(const char* fmt, ...) nogil
    bool Button(const char* label_, const ImVec2& size_) nogil
    bool Button(const char* label_) nogil
    bool SmallButton(const char* label_) nogil
    bool InvisibleButton(const char* str_id_, const ImVec2& size_, ImGuiButtonFlags flags_) nogil
    bool InvisibleButton(const char* str_id_, const ImVec2& size_) nogil
    bool ArrowButton(const char* str_id_, ImGuiDir dir_) nogil
    void Image(ImTextureID user_texture_id_, const ImVec2& size_, const ImVec2& uv0_) nogil
    void Image(ImTextureID user_texture_id_, const ImVec2& size_) nogil
    bool ImageButton(ImTextureID user_texture_id_, const ImVec2& size_, const ImVec2& uv0_) nogil
    bool ImageButton(ImTextureID user_texture_id_, const ImVec2& size_) nogil
    bool Checkbox(const char* label_, bool* v_) nogil
    bool CheckboxFlags(const char* label_, int* flags_, int flags_value_) nogil
    bool CheckboxFlags(const char* label_, unsigned int* flags_, unsigned int flags_value_) nogil
    bool RadioButton(const char* label_, bool active_) nogil
    bool RadioButton(const char* label_, int* v_, int v_button_) nogil
    void ProgressBar(float fraction_, const ImVec2& size_arg_) nogil
    void ProgressBar(float fraction_) nogil
    void Bullet() nogil
    bool BeginCombo(const char* label_, const char* preview_value_, ImGuiComboFlags flags_) nogil
    bool BeginCombo(const char* label_, const char* preview_value_) nogil
    void EndCombo() nogil
    bool Combo(const char* label_, int* current_item_, const char* const items[], int items_count_, int popup_max_height_in_items_) nogil
    bool Combo(const char* label_, int* current_item_, const char* const items[], int items_count_) nogil
    bool Combo(const char* label_, int* current_item_, const char* items_separated_by_zeros_, int popup_max_height_in_items_) nogil
    bool Combo(const char* label_, int* current_item_, const char* items_separated_by_zeros_) nogil
    
    bool DragFloat(const char* label_, float* v_, float v_speed_, float v_min_, float v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool DragFloat(const char* label_, float* v_, float v_speed_, float v_min_, float v_max_, const char* format_) nogil
    bool DragFloat(const char* label_, float* v_, float v_speed_, float v_min_, float v_max_) nogil
    bool DragFloat(const char* label_, float* v_, float v_speed_, float v_min_) nogil
    bool DragFloat(const char* label_, float* v_, float v_speed_) nogil
    bool DragFloat(const char* label_, float* v_) nogil
    bool DragFloat2(const char* label_, float v[2], float v_speed_, float v_min_, float v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool DragFloat2(const char* label_, float v[2], float v_speed_, float v_min_, float v_max_, const char* format_) nogil
    bool DragFloat2(const char* label_, float v[2], float v_speed_, float v_min_, float v_max_) nogil
    bool DragFloat2(const char* label_, float v[2], float v_speed_, float v_min_) nogil
    bool DragFloat2(const char* label_, float v[2], float v_speed_) nogil
    bool DragFloat2(const char* label_, float v[2]) nogil
    bool DragFloat3(const char* label_, float v[3], float v_speed_, float v_min_, float v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool DragFloat3(const char* label_, float v[3], float v_speed_, float v_min_, float v_max_, const char* format_) nogil
    bool DragFloat3(const char* label_, float v[3], float v_speed_, float v_min_, float v_max_) nogil
    bool DragFloat3(const char* label_, float v[3], float v_speed_, float v_min_) nogil
    bool DragFloat3(const char* label_, float v[3], float v_speed_) nogil
    bool DragFloat3(const char* label_, float v[3]) nogil
    bool DragFloat4(const char* label_, float v[4], float v_speed_, float v_min_, float v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool DragFloat4(const char* label_, float v[4], float v_speed_, float v_min_, float v_max_, const char* format_) nogil
    bool DragFloat4(const char* label_, float v[4], float v_speed_, float v_min_, float v_max_) nogil
    bool DragFloat4(const char* label_, float v[4], float v_speed_, float v_min_) nogil
    bool DragFloat4(const char* label_, float v[4], float v_speed_) nogil
    bool DragFloat4(const char* label_, float v[4]) nogil
    bool DragFloatRange2(const char* label_, float* v_current_min_, float* v_current_max_, float v_speed_, float v_min_, float v_max_, const char* format_, const char* format_max_, ImGuiSliderFlags flags_) nogil
    bool DragFloatRange2(const char* label_, float* v_current_min_, float* v_current_max_, float v_speed_, float v_min_, float v_max_, const char* format_, const char* format_max_) nogil
    bool DragFloatRange2(const char* label_, float* v_current_min_, float* v_current_max_, float v_speed_, float v_min_, float v_max_, const char* format_) nogil
    bool DragFloatRange2(const char* label_, float* v_current_min_, float* v_current_max_, float v_speed_, float v_min_, float v_max_) nogil
    bool DragFloatRange2(const char* label_, float* v_current_min_, float* v_current_max_, float v_speed_, float v_min_) nogil
    bool DragFloatRange2(const char* label_, float* v_current_min_, float* v_current_max_, float v_speed_) nogil
    bool DragFloatRange2(const char* label_, float* v_current_min_, float* v_current_max_) nogil
    bool DragInt(const char* label_, int* v_, float v_speed_, int v_min_, int v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool DragInt(const char* label_, int* v_, float v_speed_, int v_min_, int v_max_, const char* format_) nogil
    bool DragInt(const char* label_, int* v_, float v_speed_, int v_min_, int v_max_) nogil
    bool DragInt(const char* label_, int* v_, float v_speed_, int v_min_) nogil
    bool DragInt(const char* label_, int* v_, float v_speed_) nogil
    bool DragInt(const char* label_, int* v_) nogil
    bool DragInt2(const char* label_, int v[2], float v_speed_, int v_min_, int v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool DragInt2(const char* label_, int v[2], float v_speed_, int v_min_, int v_max_, const char* format_) nogil
    bool DragInt2(const char* label_, int v[2], float v_speed_, int v_min_, int v_max_) nogil
    bool DragInt2(const char* label_, int v[2], float v_speed_, int v_min_) nogil
    bool DragInt2(const char* label_, int v[2], float v_speed_) nogil
    bool DragInt2(const char* label_, int v[2]) nogil
    bool DragInt3(const char* label_, int v[3], float v_speed_, int v_min_, int v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool DragInt3(const char* label_, int v[3], float v_speed_, int v_min_, int v_max_, const char* format_) nogil
    bool DragInt3(const char* label_, int v[3], float v_speed_, int v_min_, int v_max_) nogil
    bool DragInt3(const char* label_, int v[3], float v_speed_, int v_min_) nogil
    bool DragInt3(const char* label_, int v[3], float v_speed_) nogil
    bool DragInt3(const char* label_, int v[3]) nogil
    bool DragInt4(const char* label_, int v[4], float v_speed_, int v_min_, int v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool DragInt4(const char* label_, int v[4], float v_speed_, int v_min_, int v_max_, const char* format_) nogil
    bool DragInt4(const char* label_, int v[4], float v_speed_, int v_min_, int v_max_) nogil
    bool DragInt4(const char* label_, int v[4], float v_speed_, int v_min_) nogil
    bool DragInt4(const char* label_, int v[4], float v_speed_) nogil
    bool DragInt4(const char* label_, int v[4]) nogil
    bool DragIntRange2(const char* label_, int* v_current_min_, int* v_current_max_, float v_speed_, int v_min_, int v_max_, const char* format_, const char* format_max_, ImGuiSliderFlags flags_) nogil
    bool DragIntRange2(const char* label_, int* v_current_min_, int* v_current_max_, float v_speed_, int v_min_, int v_max_, const char* format_, const char* format_max_) nogil
    bool DragIntRange2(const char* label_, int* v_current_min_, int* v_current_max_, float v_speed_, int v_min_, int v_max_, const char* format_) nogil
    bool DragIntRange2(const char* label_, int* v_current_min_, int* v_current_max_, float v_speed_, int v_min_, int v_max_) nogil
    bool DragIntRange2(const char* label_, int* v_current_min_, int* v_current_max_, float v_speed_, int v_min_) nogil
    bool DragIntRange2(const char* label_, int* v_current_min_, int* v_current_max_, float v_speed_) nogil
    bool DragIntRange2(const char* label_, int* v_current_min_, int* v_current_max_) nogil
    bool DragScalar(const char* label_, ImGuiDataType data_type_, void* p_data_, float v_speed_, const void* p_min_, const void* p_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool DragScalar(const char* label_, ImGuiDataType data_type_, void* p_data_, float v_speed_, const void* p_min_, const void* p_max_, const char* format_) nogil
    bool DragScalar(const char* label_, ImGuiDataType data_type_, void* p_data_, float v_speed_, const void* p_min_, const void* p_max_) nogil
    bool DragScalar(const char* label_, ImGuiDataType data_type_, void* p_data_, float v_speed_, const void* p_min_) nogil
    bool DragScalar(const char* label_, ImGuiDataType data_type_, void* p_data_, float v_speed_) nogil
    bool DragScalar(const char* label_, ImGuiDataType data_type_, void* p_data_) nogil
    bool DragScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_, float v_speed_, const void* p_min_, const void* p_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool DragScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_, float v_speed_, const void* p_min_, const void* p_max_, const char* format_) nogil
    bool DragScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_, float v_speed_, const void* p_min_, const void* p_max_) nogil
    bool DragScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_, float v_speed_, const void* p_min_) nogil
    bool DragScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_, float v_speed_) nogil
    bool DragScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_) nogil
    bool SliderFloat(const char* label_, float* v_, float v_min_, float v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool SliderFloat(const char* label_, float* v_, float v_min_, float v_max_, const char* format_) nogil
    bool SliderFloat(const char* label_, float* v_, float v_min_, float v_max_) nogil
    bool SliderFloat2(const char* label_, float v[2], float v_min_, float v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool SliderFloat2(const char* label_, float v[2], float v_min_, float v_max_, const char* format_) nogil
    bool SliderFloat2(const char* label_, float v[2], float v_min_, float v_max_) nogil
    bool SliderFloat3(const char* label_, float v[3], float v_min_, float v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool SliderFloat3(const char* label_, float v[3], float v_min_, float v_max_, const char* format_) nogil
    bool SliderFloat3(const char* label_, float v[3], float v_min_, float v_max_) nogil
    bool SliderFloat4(const char* label_, float v[4], float v_min_, float v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool SliderFloat4(const char* label_, float v[4], float v_min_, float v_max_, const char* format_) nogil
    bool SliderFloat4(const char* label_, float v[4], float v_min_, float v_max_) nogil
    bool SliderAngle(const char* label_, float* v_rad_, float v_degrees_min_, float v_degrees_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool SliderAngle(const char* label_, float* v_rad_, float v_degrees_min_, float v_degrees_max_, const char* format_) nogil
    bool SliderAngle(const char* label_, float* v_rad_, float v_degrees_min_, float v_degrees_max_) nogil
    bool SliderAngle(const char* label_, float* v_rad_, float v_degrees_min_) nogil
    bool SliderAngle(const char* label_, float* v_rad_) nogil
    bool SliderInt(const char* label_, int* v_, int v_min_, int v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool SliderInt(const char* label_, int* v_, int v_min_, int v_max_, const char* format_) nogil
    bool SliderInt(const char* label_, int* v_, int v_min_, int v_max_) nogil
    bool SliderInt2(const char* label_, int v[2], int v_min_, int v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool SliderInt2(const char* label_, int v[2], int v_min_, int v_max_, const char* format_) nogil
    bool SliderInt2(const char* label_, int v[2], int v_min_, int v_max_) nogil
    bool SliderInt3(const char* label_, int v[3], int v_min_, int v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool SliderInt3(const char* label_, int v[3], int v_min_, int v_max_, const char* format_) nogil
    bool SliderInt3(const char* label_, int v[3], int v_min_, int v_max_) nogil
    bool SliderInt4(const char* label_, int v[4], int v_min_, int v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool SliderInt4(const char* label_, int v[4], int v_min_, int v_max_, const char* format_) nogil
    bool SliderInt4(const char* label_, int v[4], int v_min_, int v_max_) nogil
    bool SliderScalar(const char* label_, ImGuiDataType data_type_, void* p_data_, const void* p_min_, const void* p_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool SliderScalar(const char* label_, ImGuiDataType data_type_, void* p_data_, const void* p_min_, const void* p_max_, const char* format_) nogil
    bool SliderScalar(const char* label_, ImGuiDataType data_type_, void* p_data_, const void* p_min_, const void* p_max_) nogil
    bool SliderScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_, const void* p_min_, const void* p_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool SliderScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_, const void* p_min_, const void* p_max_, const char* format_) nogil
    bool SliderScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_, const void* p_min_, const void* p_max_) nogil
    bool VSliderFloat(const char* label_, const ImVec2& size_, float* v_, float v_min_, float v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool VSliderFloat(const char* label_, const ImVec2& size_, float* v_, float v_min_, float v_max_, const char* format_) nogil
    bool VSliderFloat(const char* label_, const ImVec2& size_, float* v_, float v_min_, float v_max_) nogil
    bool VSliderInt(const char* label_, const ImVec2& size_, int* v_, int v_min_, int v_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool VSliderInt(const char* label_, const ImVec2& size_, int* v_, int v_min_, int v_max_, const char* format_) nogil
    bool VSliderInt(const char* label_, const ImVec2& size_, int* v_, int v_min_, int v_max_) nogil
    bool VSliderScalar(const char* label_, const ImVec2& size_, ImGuiDataType data_type_, void* p_data_, const void* p_min_, const void* p_max_, const char* format_, ImGuiSliderFlags flags_) nogil
    bool VSliderScalar(const char* label_, const ImVec2& size_, ImGuiDataType data_type_, void* p_data_, const void* p_min_, const void* p_max_, const char* format_) nogil
    bool VSliderScalar(const char* label_, const ImVec2& size_, ImGuiDataType data_type_, void* p_data_, const void* p_min_, const void* p_max_) nogil
    bool InputText(const char* label_, char* buf_, size_t buf_size_, ImGuiInputTextFlags flags_, ImGuiInputTextCallback callback_, void* user_data_) nogil
    bool InputText(const char* label_, char* buf_, size_t buf_size_, ImGuiInputTextFlags flags_, ImGuiInputTextCallback callback_) nogil
    bool InputText(const char* label_, char* buf_, size_t buf_size_, ImGuiInputTextFlags flags_) nogil
    bool InputText(const char* label_, char* buf_, size_t buf_size_) nogil
    bool InputTextMultiline(const char* label_, char* buf_, size_t buf_size_, const ImVec2& size_) nogil
    bool InputTextMultiline(const char* label_, char* buf_, size_t buf_size_) nogil
    bool InputTextWithHint(const char* label_, const char* hint_, char* buf_, size_t buf_size_, ImGuiInputTextFlags flags_, ImGuiInputTextCallback callback_, void* user_data_) nogil
    bool InputTextWithHint(const char* label_, const char* hint_, char* buf_, size_t buf_size_, ImGuiInputTextFlags flags_, ImGuiInputTextCallback callback_) nogil
    bool InputTextWithHint(const char* label_, const char* hint_, char* buf_, size_t buf_size_, ImGuiInputTextFlags flags_) nogil
    bool InputTextWithHint(const char* label_, const char* hint_, char* buf_, size_t buf_size_) nogil
    bool InputFloat(const char* label_, float* v_, float step_, float step_fast_, const char* format_, ImGuiInputTextFlags flags_) nogil
    bool InputFloat(const char* label_, float* v_, float step_, float step_fast_, const char* format_) nogil
    bool InputFloat(const char* label_, float* v_, float step_, float step_fast_) nogil
    bool InputFloat(const char* label_, float* v_, float step_) nogil
    bool InputFloat(const char* label_, float* v_) nogil
    bool InputFloat2(const char* label_, float v[2], const char* format_, ImGuiInputTextFlags flags_) nogil
    bool InputFloat2(const char* label_, float v[2], const char* format_) nogil
    bool InputFloat2(const char* label_, float v[2]) nogil
    bool InputFloat3(const char* label_, float v[3], const char* format_, ImGuiInputTextFlags flags_) nogil
    bool InputFloat3(const char* label_, float v[3], const char* format_) nogil
    bool InputFloat3(const char* label_, float v[3]) nogil
    bool InputFloat4(const char* label_, float v[4], const char* format_, ImGuiInputTextFlags flags_) nogil
    bool InputFloat4(const char* label_, float v[4], const char* format_) nogil
    bool InputFloat4(const char* label_, float v[4]) nogil
    bool InputInt(const char* label_, int* v_, int step_, int step_fast_, ImGuiInputTextFlags flags_) nogil
    bool InputInt(const char* label_, int* v_, int step_, int step_fast_) nogil
    bool InputInt(const char* label_, int* v_, int step_) nogil
    bool InputInt(const char* label_, int* v_) nogil
    bool InputInt2(const char* label_, int v[2], ImGuiInputTextFlags flags_) nogil
    bool InputInt2(const char* label_, int v[2]) nogil
    bool InputInt3(const char* label_, int v[3], ImGuiInputTextFlags flags_) nogil
    bool InputInt3(const char* label_, int v[3]) nogil
    bool InputInt4(const char* label_, int v[4], ImGuiInputTextFlags flags_) nogil
    bool InputInt4(const char* label_, int v[4]) nogil
    bool InputDouble(const char* label_, double* v_, double step_, double step_fast_, const char* format_, ImGuiInputTextFlags flags_) nogil
    bool InputDouble(const char* label_, double* v_, double step_, double step_fast_, const char* format_) nogil
    bool InputDouble(const char* label_, double* v_, double step_, double step_fast_) nogil
    bool InputDouble(const char* label_, double* v_, double step_) nogil
    bool InputDouble(const char* label_, double* v_) nogil
    bool InputScalar(const char* label_, ImGuiDataType data_type_, void* p_data_, const void* p_step_, const void* p_step_fast_, const char* format_, ImGuiInputTextFlags flags_) nogil
    bool InputScalar(const char* label_, ImGuiDataType data_type_, void* p_data_, const void* p_step_, const void* p_step_fast_, const char* format_) nogil
    bool InputScalar(const char* label_, ImGuiDataType data_type_, void* p_data_, const void* p_step_, const void* p_step_fast_) nogil
    bool InputScalar(const char* label_, ImGuiDataType data_type_, void* p_data_, const void* p_step_) nogil
    bool InputScalar(const char* label_, ImGuiDataType data_type_, void* p_data_) nogil
    bool InputScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_, const void* p_step_, const void* p_step_fast_, const char* format_, ImGuiInputTextFlags flags_) nogil
    bool InputScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_, const void* p_step_, const void* p_step_fast_, const char* format_) nogil
    bool InputScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_, const void* p_step_, const void* p_step_fast_) nogil
    bool InputScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_, const void* p_step_) nogil
    bool InputScalarN(const char* label_, ImGuiDataType data_type_, void* p_data_, int components_) nogil
    bool ColorEdit3(const char* label_, float col[3], ImGuiColorEditFlags flags_) nogil
    bool ColorEdit3(const char* label_, float col[3]) nogil
    bool ColorEdit4(const char* label_, float col[4], ImGuiColorEditFlags flags_) nogil
    bool ColorEdit4(const char* label_, float col[4]) nogil
    bool ColorPicker3(const char* label_, float col[3], ImGuiColorEditFlags flags_) nogil
    bool ColorPicker3(const char* label_, float col[3]) nogil
    bool ColorPicker4(const char* label_, float col[4], ImGuiColorEditFlags flags_, const float* ref_col_) nogil
    bool ColorPicker4(const char* label_, float col[4], ImGuiColorEditFlags flags_) nogil
    bool ColorPicker4(const char* label_, float col[4]) nogil
    bool ColorButton(const char* desc_id_, const ImVec4& col_, ImGuiColorEditFlags flags_, ImVec2 size_) nogil
    bool ColorButton(const char* desc_id_, const ImVec4& col_, ImGuiColorEditFlags flags_) nogil
    bool ColorButton(const char* desc_id_, const ImVec4& col_) nogil
    void SetColorEditOptions(ImGuiColorEditFlags flags_) nogil
    bool TreeNode(const char* label_) nogil
    bool TreeNode(const char* str_id_, const char* fmt, ...) nogil
    bool TreeNode(const void* ptr_id_, const char* fmt, ...) nogil
    bool TreeNodeEx(const char* label_, ImGuiTreeNodeFlags flags_) nogil
    bool TreeNodeEx(const char* label_) nogil
    bool TreeNodeEx(const char* str_id_, ImGuiTreeNodeFlags flags_, const char* fmt, ...) nogil
    bool TreeNodeEx(const void* ptr_id_, ImGuiTreeNodeFlags flags_, const char* fmt, ...) nogil
    void TreePush(const char* str_id_) nogil
    void TreePush(const void* ptr_id_) nogil
    void TreePush() nogil
    void TreePop() nogil
    float GetTreeNodeToLabelSpacing() nogil
    bool CollapsingHeader(const char* label_, ImGuiTreeNodeFlags flags_) nogil
    bool CollapsingHeader(const char* label_) nogil
    bool CollapsingHeader(const char* label_, bool* p_visible_, ImGuiTreeNodeFlags flags_) nogil
    bool CollapsingHeader(const char* label_, bool* p_visible_) nogil
    void SetNextItemOpen(bool is_open_, ImGuiCond cond_) nogil
    void SetNextItemOpen(bool is_open_) nogil
    bool Selectable(const char* label_, bool selected_, ImGuiSelectableFlags flags_, const ImVec2& size_) nogil
    bool Selectable(const char* label_, bool selected_, ImGuiSelectableFlags flags_) nogil
    bool Selectable(const char* label_, bool selected_) nogil
    bool Selectable(const char* label_) nogil
    bool Selectable(const char* label_, bool* p_selected_, ImGuiSelectableFlags flags_, const ImVec2& size_) nogil
    bool Selectable(const char* label_, bool* p_selected_, ImGuiSelectableFlags flags_) nogil
    bool Selectable(const char* label_, bool* p_selected_) nogil
    bool BeginListBox(const char* label_, const ImVec2& size_) nogil
    bool BeginListBox(const char* label_) nogil
    void EndListBox() nogil
    bool ListBox(const char* label_, int* current_item_, const char* const items[], int items_count_, int height_in_items_) nogil
    bool ListBox(const char* label_, int* current_item_, const char* const items[], int items_count_) nogil
    
    void PlotLines(const char* label_, const float* values_, int values_count_, int values_offset_, const char* overlay_text_, float scale_min_, float scale_max_, ImVec2 graph_size_) nogil
    void PlotLines(const char* label_, const float* values_, int values_count_, int values_offset_, const char* overlay_text_, float scale_min_, float scale_max_) nogil
    void PlotLines(const char* label_, const float* values_, int values_count_, int values_offset_, const char* overlay_text_, float scale_min_) nogil
    void PlotLines(const char* label_, const float* values_, int values_count_, int values_offset_, const char* overlay_text_) nogil
    void PlotLines(const char* label_, const float* values_, int values_count_, int values_offset_) nogil
    void PlotLines(const char* label_, const float* values_, int values_count_) nogil
    
    void PlotHistogram(const char* label_, const float* values_, int values_count_, int values_offset_, const char* overlay_text_, float scale_min_, float scale_max_, ImVec2 graph_size_) nogil
    void PlotHistogram(const char* label_, const float* values_, int values_count_, int values_offset_, const char* overlay_text_, float scale_min_, float scale_max_) nogil
    void PlotHistogram(const char* label_, const float* values_, int values_count_, int values_offset_, const char* overlay_text_, float scale_min_) nogil
    void PlotHistogram(const char* label_, const float* values_, int values_count_, int values_offset_, const char* overlay_text_) nogil
    void PlotHistogram(const char* label_, const float* values_, int values_count_, int values_offset_) nogil
    void PlotHistogram(const char* label_, const float* values_, int values_count_) nogil
    
    void Value(const char* prefix_, bool b_) nogil
    void Value(const char* prefix_, int v_) nogil
    void Value(const char* prefix_, unsigned int v_) nogil
    void Value(const char* prefix_, float v_, const char* float_format_) nogil
    void Value(const char* prefix_, float v_) nogil
    bool BeginMenuBar() nogil
    void EndMenuBar() nogil
    bool BeginMainMenuBar() nogil
    void EndMainMenuBar() nogil
    bool BeginMenu(const char* label_, bool enabled_) nogil
    bool BeginMenu(const char* label_) nogil
    void EndMenu() nogil
    bool MenuItem(const char* label_, const char* shortcut_, bool selected_, bool enabled_) nogil
    bool MenuItem(const char* label_, const char* shortcut_, bool selected_) nogil
    bool MenuItem(const char* label_, const char* shortcut_) nogil
    bool MenuItem(const char* label_) nogil
    bool MenuItem(const char* label_, const char* shortcut_, bool* p_selected_, bool enabled_) nogil
    bool MenuItem(const char* label_, const char* shortcut_, bool* p_selected_) nogil
    void BeginTooltip() nogil
    void EndTooltip() nogil
    void SetTooltip(const char* fmt, ...) nogil
    bool BeginPopup(const char* str_id_, ImGuiWindowFlags flags_) nogil
    bool BeginPopup(const char* str_id_) nogil
    bool BeginPopupModal(const char* name_, bool* p_open_, ImGuiWindowFlags flags_) nogil
    bool BeginPopupModal(const char* name_, bool* p_open_) nogil
    bool BeginPopupModal(const char* name_) nogil
    void EndPopup() nogil
    void OpenPopup(const char* str_id_, ImGuiPopupFlags popup_flags_) nogil
    void OpenPopup(const char* str_id_) nogil
    void OpenPopup(ImGuiID id_, ImGuiPopupFlags popup_flags_) nogil
    void OpenPopup(ImGuiID id_) nogil
    void OpenPopupOnItemClick(const char* str_id_, ImGuiPopupFlags popup_flags_) nogil
    void OpenPopupOnItemClick(const char* str_id_) nogil
    void OpenPopupOnItemClick() nogil
    void CloseCurrentPopup() nogil
    bool BeginPopupContextItem(const char* str_id_, ImGuiPopupFlags popup_flags_) nogil
    bool BeginPopupContextItem(const char* str_id_) nogil
    bool BeginPopupContextItem() nogil
    bool BeginPopupContextWindow(const char* str_id_, ImGuiPopupFlags popup_flags_) nogil
    bool BeginPopupContextWindow(const char* str_id_) nogil
    bool BeginPopupContextWindow() nogil
    bool BeginPopupContextVoid(const char* str_id_, ImGuiPopupFlags popup_flags_) nogil
    bool BeginPopupContextVoid(const char* str_id_) nogil
    bool BeginPopupContextVoid() nogil
    bool IsPopupOpen(const char* str_id_, ImGuiPopupFlags flags_) nogil
    bool IsPopupOpen(const char* str_id_) nogil
    bool BeginTable(const char* str_id_, int column_, ImGuiTableFlags flags_, const ImVec2& outer_size_) nogil
    bool BeginTable(const char* str_id_, int column_, ImGuiTableFlags flags_) nogil
    bool BeginTable(const char* str_id_, int column_) nogil
    void EndTable() nogil
    void TableNextRow(ImGuiTableRowFlags row_flags_, float min_row_height_) nogil
    void TableNextRow(ImGuiTableRowFlags row_flags_) nogil
    void TableNextRow() nogil
    bool TableNextColumn() nogil
    bool TableSetColumnIndex(int column_n_) nogil
    void TableSetupColumn(const char* label_, ImGuiTableColumnFlags flags_, float init_width_or_weight_, ImGuiID user_id_) nogil
    void TableSetupColumn(const char* label_, ImGuiTableColumnFlags flags_, float init_width_or_weight_) nogil
    void TableSetupColumn(const char* label_, ImGuiTableColumnFlags flags_) nogil
    void TableSetupColumn(const char* label_) nogil
    void TableSetupScrollFreeze(int cols_, int rows_) nogil
    void TableHeadersRow() nogil
    void TableHeader(const char* label_) nogil
    ImGuiTableSortSpecs* TableGetSortSpecs() nogil
    int TableGetColumnCount() nogil
    int TableGetColumnIndex() nogil
    int TableGetRowIndex() nogil
    const char* TableGetColumnName(int column_n_) nogil
    const char* TableGetColumnName() nogil
    ImGuiTableColumnFlags TableGetColumnFlags(int column_n_) nogil
    ImGuiTableColumnFlags TableGetColumnFlags() nogil
    void TableSetColumnEnabled(int column_n_, bool v_) nogil
    void TableSetBgColor(ImGuiTableBgTarget target_, ImU32 color_, int column_n_) nogil
    void TableSetBgColor(ImGuiTableBgTarget target_, ImU32 color_) nogil
    void Columns(int count_, const char* id_, bool border_) nogil
    void Columns(int count_, const char* id_) nogil
    void Columns(int count_) nogil
    void Columns() nogil
    void NextColumn() nogil
    int GetColumnIndex() nogil
    float GetColumnWidth(int column_index_) nogil
    float GetColumnWidth() nogil
    void SetColumnWidth(int column_index_, float width_) nogil
    float GetColumnOffset(int column_index_) nogil
    float GetColumnOffset() nogil
    void SetColumnOffset(int column_index_, float offset_x_) nogil
    int GetColumnsCount() nogil
    bool BeginTabBar(const char* str_id_, ImGuiTabBarFlags flags_) nogil
    bool BeginTabBar(const char* str_id_) nogil
    void EndTabBar() nogil
    bool BeginTabItem(const char* label_, bool* p_open_, ImGuiTabItemFlags flags_) nogil
    bool BeginTabItem(const char* label_, bool* p_open_) nogil
    bool BeginTabItem(const char* label_) nogil
    void EndTabItem() nogil
    bool TabItemButton(const char* label_, ImGuiTabItemFlags flags_) nogil
    bool TabItemButton(const char* label_) nogil
    void SetTabItemClosed(const char* tab_or_docked_window_label_) nogil
    void LogToTTY(int auto_open_depth_) nogil
    void LogToTTY() nogil
    void LogToFile(int auto_open_depth_, const char* filename_) nogil
    void LogToFile(int auto_open_depth_) nogil
    void LogToFile() nogil
    void LogToClipboard(int auto_open_depth_) nogil
    void LogToClipboard() nogil
    void LogFinish() nogil
    void LogButtons() nogil
    void LogText(const char* fmt, ...) nogil
    bool BeginDragDropSource(ImGuiDragDropFlags flags_) nogil
    bool BeginDragDropSource() nogil
    bool SetDragDropPayload(const char* type_, const void* data_, size_t sz_, ImGuiCond cond_) nogil
    bool SetDragDropPayload(const char* type_, const void* data_, size_t sz_) nogil
    void EndDragDropSource() nogil
    bool BeginDragDropTarget() nogil
    const ImGuiPayload* AcceptDragDropPayload(const char* type_, ImGuiDragDropFlags flags_) nogil
    const ImGuiPayload* AcceptDragDropPayload(const char* type_) nogil
    void EndDragDropTarget() nogil
    const ImGuiPayload* GetDragDropPayload() nogil
    void BeginDisabled(bool disabled_) nogil
    void BeginDisabled() nogil
    void EndDisabled() nogil
    void PushClipRect(const ImVec2& clip_rect_min_, const ImVec2& clip_rect_max_, bool intersect_with_current_clip_rect_) nogil
    void PopClipRect() nogil
    void SetItemDefaultFocus() nogil
    void SetKeyboardFocusHere(int offset_) nogil
    void SetKeyboardFocusHere() nogil
    bool IsItemHovered(ImGuiHoveredFlags flags_) nogil
    bool IsItemHovered() nogil
    bool IsItemActive() nogil
    bool IsItemFocused() nogil
    bool IsItemClicked(ImGuiMouseButton mouse_button_) nogil
    bool IsItemClicked() nogil
    bool IsItemVisible() nogil
    bool IsItemEdited() nogil
    bool IsItemActivated() nogil
    bool IsItemDeactivated() nogil
    bool IsItemDeactivatedAfterEdit() nogil
    bool IsItemToggledOpen() nogil
    bool IsAnyItemHovered() nogil
    bool IsAnyItemActive() nogil
    bool IsAnyItemFocused() nogil
    ImVec2 GetItemRectMin() nogil
    ImVec2 GetItemRectMax() nogil
    ImVec2 GetItemRectSize() nogil
    void SetItemAllowOverlap() nogil
    ImGuiViewport* GetMainViewport() nogil
    bool IsRectVisible(const ImVec2& size_) nogil
    bool IsRectVisible(const ImVec2& rect_min_, const ImVec2& rect_max_) nogil
    double GetTime() nogil
    int GetFrameCount() nogil
    ImDrawList* GetBackgroundDrawList() nogil
    ImDrawList* GetForegroundDrawList() nogil
    ImDrawListSharedData* GetDrawListSharedData() nogil
    const char* GetStyleColorName(ImGuiCol idx_) nogil
    void SetStateStorage(ImGuiStorage* storage_) nogil
    ImGuiStorage* GetStateStorage() nogil
    void CalcListClipping(int items_count_, float items_height_, int* out_items_display_start_, int* out_items_display_end_) nogil
    bool BeginChildFrame(ImGuiID id_, const ImVec2& size_, ImGuiWindowFlags flags_) nogil
    bool BeginChildFrame(ImGuiID id_, const ImVec2& size_) nogil
    void EndChildFrame() nogil
    ImVec2 CalcTextSize(const char* text_, const char* text_end_, bool hide_text_after_double_hash_, float wrap_width_) nogil
    ImVec2 CalcTextSize(const char* text_, const char* text_end_, bool hide_text_after_double_hash_) nogil
    ImVec2 CalcTextSize(const char* text_, const char* text_end_) nogil
    ImVec2 CalcTextSize(const char* text_) nogil
    ImVec4 ColorConvertU32ToFloat4(ImU32 in_) nogil
    ImU32 ColorConvertFloat4ToU32(const ImVec4& in_) nogil
    void ColorConvertRGBtoHSV(float r_, float g_, float b_, float& out_h_, float& out_s_, float& out_v_) nogil
    void ColorConvertHSVtoRGB(float h_, float s_, float v_, float& out_r_, float& out_g_, float& out_b_) nogil
    int GetKeyIndex(ImGuiKey imgui_key_) nogil
    bool IsKeyDown(int user_key_index_) nogil
    bool IsKeyPressed(int user_key_index_, bool repeat_) nogil
    bool IsKeyPressed(int user_key_index_) nogil
    bool IsKeyReleased(int user_key_index_) nogil
    int GetKeyPressedAmount(int key_index_, float repeat_delay_, float rate_) nogil
    void CaptureKeyboardFromApp(bool want_capture_keyboard_value_) nogil
    void CaptureKeyboardFromApp() nogil
    bool IsMouseDown(ImGuiMouseButton button_) nogil
    bool IsMouseClicked(ImGuiMouseButton button_, bool repeat_) nogil
    bool IsMouseClicked(ImGuiMouseButton button_) nogil
    bool IsMouseReleased(ImGuiMouseButton button_) nogil
    bool IsMouseDoubleClicked(ImGuiMouseButton button_) nogil
    bool IsMouseHoveringRect(const ImVec2& r_min_, const ImVec2& r_max_, bool clip_) nogil
    bool IsMouseHoveringRect(const ImVec2& r_min_, const ImVec2& r_max_) nogil
    bool IsMousePosValid(const ImVec2* mouse_pos_) nogil
    bool IsMousePosValid() nogil
    bool IsAnyMouseDown() nogil
    ImVec2 GetMousePos() nogil
    ImVec2 GetMousePosOnOpeningCurrentPopup() nogil
    bool IsMouseDragging(ImGuiMouseButton button_, float lock_threshold_) nogil
    bool IsMouseDragging(ImGuiMouseButton button_) nogil
    ImVec2 GetMouseDragDelta(ImGuiMouseButton button_, float lock_threshold_) nogil
    ImVec2 GetMouseDragDelta(ImGuiMouseButton button_) nogil
    ImVec2 GetMouseDragDelta() nogil
    void ResetMouseDragDelta(ImGuiMouseButton button_) nogil
    void ResetMouseDragDelta() nogil
    ImGuiMouseCursor GetMouseCursor() nogil
    void SetMouseCursor(ImGuiMouseCursor cursor_type_) nogil
    void CaptureMouseFromApp(bool want_capture_mouse_value_) nogil
    void CaptureMouseFromApp() nogil
    const char* GetClipboardText() nogil
    void SetClipboardText(const char* text_) nogil
    void LoadIniSettingsFromDisk(const char* ini_filename_) nogil
    void LoadIniSettingsFromMemory(const char* ini_data_, size_t ini_size_) nogil
    void LoadIniSettingsFromMemory(const char* ini_data_) nogil
    void SaveIniSettingsToDisk(const char* ini_filename_) nogil
    const char* SaveIniSettingsToMemory(size_t* out_ini_size_) nogil
    const char* SaveIniSettingsToMemory() nogil
    bool DebugCheckVersionAndDataLayout(const char* version_str_, size_t sz_io_, size_t sz_style_, size_t sz_vec2_, size_t sz_vec4_, size_t sz_drawvert_, size_t sz_drawidx_) nogil
    void SetAllocatorFunctions(ImGuiMemAllocFunc alloc_func_, ImGuiMemFreeFunc free_func_, void* user_data_) nogil
    void SetAllocatorFunctions(ImGuiMemAllocFunc alloc_func_, ImGuiMemFreeFunc free_func_) nogil
    void GetAllocatorFunctions(ImGuiMemAllocFunc* p_alloc_func_, ImGuiMemFreeFunc* p_free_func_, void** p_user_data_) nogil
    void* MemAlloc(size_t size_) nogil
    void MemFree(void* ptr_) nogil


cdef extern from "imgui_impl_opengl3.h":
    bool ImGui_ImplOpenGL3_Init(const char *glsl_version) nogil
    void ImGui_ImplOpenGL3_Shutdown() nogil
    void ImGui_ImplOpenGL3_NewFrame() nogil
    void ImGui_ImplOpenGL3_RenderDrawData(ImDrawData *draw_data) nogil


cdef extern from "imgui_impl_glfw.h":
    bool ImGui_ImplGlfw_InitForOpenGL(GLFWwindow *window, bool install_callbacks) nogil
    bool ImGui_ImplGlfw_InitForVulkan(GLFWwindow *window, bool install_callbacks) nogil
    bool ImGui_ImplGlfw_InitForOther(GLFWwindow *window, bool install_callbacks) nogil
    void ImGui_ImplGlfw_Shutdown() nogil
    void ImGui_ImplGlfw_NewFrame() nogil
