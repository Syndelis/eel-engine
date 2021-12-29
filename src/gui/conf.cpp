#include "conf.h"

// Obtained from https://github.com/berdal84/Nodable/blob/master/src/app/src/Settings.cpp
void setNodableStyle(ImGuiStyle& _style) {

    ImVec4* colors = _style.Colors;
    colors[ImGuiCol_Text]                   = ImVec4(0.10f, 0.10f, 0.10f, 1.00f);
    colors[ImGuiCol_TextDisabled]           = ImVec4(0.21f, 0.21f, 0.21f, 1.00f);
    colors[ImGuiCol_WindowBg]               = ImVec4(0.76f, 0.76f, 0.76f, 1.00f);
    colors[ImGuiCol_ChildBg]                = ImVec4(0.69f, 0.69f, 0.69f, 1.00f);
    colors[ImGuiCol_PopupBg]                = ImVec4(0.66f, 0.66f, 0.66f, 1.00f);
    colors[ImGuiCol_Border]                 = ImVec4(0.70f, 0.70f, 0.70f, 1.00f);
    colors[ImGuiCol_BorderShadow]           = ImVec4(0.30f, 0.30f, 0.30f, 0.50f);
    colors[ImGuiCol_FrameBg]                = ImVec4(1.00f, 1.00f, 1.00f, 1.00f);
    colors[ImGuiCol_FrameBgHovered]         = ImVec4(0.90f, 0.80f, 0.80f, 1.00f);
    colors[ImGuiCol_FrameBgActive]          = ImVec4(0.90f, 0.65f, 0.65f, 1.00f);
    colors[ImGuiCol_TitleBg]                = ImVec4(0.60f, 0.60f, 0.60f, 1.00f);
    colors[ImGuiCol_TitleBgActive]          = ImVec4(0.60f, 0.60f, 0.60f, 1.00f);
    colors[ImGuiCol_TitleBgCollapsed]       = ImVec4(0.49f, 0.63f, 0.69f, 1.00f);
    colors[ImGuiCol_MenuBarBg]              = ImVec4(0.60f, 0.60f, 0.60f, 0.98f);
    colors[ImGuiCol_ScrollbarBg]            = ImVec4(0.40f, 0.40f, 0.40f, 1.00f);
    colors[ImGuiCol_ScrollbarGrab]          = ImVec4(0.61f, 0.61f, 0.62f, 1.00f);
    colors[ImGuiCol_ScrollbarGrabHovered]   = ImVec4(0.70f, 0.70f, 0.70f, 1.00f);
    colors[ImGuiCol_ScrollbarGrabActive]    = ImVec4(0.80f, 0.80f, 0.80f, 1.00f);
    colors[ImGuiCol_CheckMark]              = ImVec4(0.31f, 0.23f, 0.14f, 1.00f);
    colors[ImGuiCol_SliderGrab]             = ImVec4(0.71f, 0.46f, 0.22f, 0.63f);
    colors[ImGuiCol_SliderGrabActive]       = ImVec4(0.71f, 0.46f, 0.22f, 1.00f);
    colors[ImGuiCol_Button]                 = ImVec4(0.50f, 0.50f, 0.50f, 0.63f);
    colors[ImGuiCol_ButtonHovered]          = ImVec4(0.70f, 0.70f, 0.70f, 0.95f);
    colors[ImGuiCol_ButtonActive]           = ImVec4(0.98f, 0.73f, 0.29f, 0.95f);
    colors[ImGuiCol_Header]                 = ImVec4(0.70f, 0.70f, 0.70f, 1.00f);
    colors[ImGuiCol_HeaderHovered]          = ImVec4(0.89f, 0.65f, 0.11f, 0.96f);
    colors[ImGuiCol_HeaderActive]           = ImVec4(1.00f, 1.00f, 1.00f, 1.00f);
    colors[ImGuiCol_Separator]              = ImVec4(0.43f, 0.43f, 0.50f, 0.50f);
    colors[ImGuiCol_SeparatorHovered]       = ImVec4(0.71f, 0.71f, 0.71f, 0.78f);
    colors[ImGuiCol_SeparatorActive]        = ImVec4(1.00f, 0.62f, 0.00f, 1.00f);
    colors[ImGuiCol_ResizeGrip]             = ImVec4(1.00f, 1.00f, 1.00f, 0.30f);
    colors[ImGuiCol_ResizeGripHovered]      = ImVec4(1.00f, 1.00f, 1.00f, 0.60f);
    colors[ImGuiCol_ResizeGripActive]       = ImVec4(1.00f, 1.00f, 1.00f, 0.90f);
    colors[ImGuiCol_Tab]                    = ImVec4(0.58f, 0.54f, 0.50f, 0.86f);
    colors[ImGuiCol_TabHovered]             = ImVec4(1.00f, 0.79f, 0.45f, 1.00f);
    colors[ImGuiCol_TabActive]              = ImVec4(1.00f, 0.73f, 0.25f, 1.00f);
    colors[ImGuiCol_TabUnfocused]           = ImVec4(0.53f, 0.53f, 0.53f, 0.97f);
    colors[ImGuiCol_TabUnfocusedActive]     = ImVec4(0.79f, 0.79f, 0.79f, 1.00f);
    colors[ImGuiCol_PlotLines]              = ImVec4(1.00f, 1.00f, 1.00f, 1.00f);
    colors[ImGuiCol_PlotLinesHovered]       = ImVec4(0.90f, 0.70f, 0.00f, 1.00f);
    colors[ImGuiCol_PlotHistogram]          = ImVec4(0.90f, 0.70f, 0.00f, 1.00f);
    colors[ImGuiCol_PlotHistogramHovered]   = ImVec4(1.00f, 0.60f, 0.00f, 1.00f);
    colors[ImGuiCol_TextSelectedBg]         = ImVec4(0.00f, 0.00f, 1.00f, 0.35f);
    colors[ImGuiCol_DragDropTarget]         = ImVec4(1.00f, 1.00f, 0.00f, 0.90f);
    colors[ImGuiCol_NavHighlight]           = ImVec4(0.26f, 0.59f, 0.98f, 1.00f);
    colors[ImGuiCol_NavWindowingHighlight]  = ImVec4(1.00f, 1.00f, 1.00f, 0.70f);
    colors[ImGuiCol_NavWindowingDimBg]      = ImVec4(0.80f, 0.80f, 0.80f, 0.20f);
    colors[ImGuiCol_ModalWindowDimBg]       = ImVec4(0.20f, 0.20f, 0.20f, 0.55f);

    _style.WindowBorderSize   = 1.0f;
    _style.FrameBorderSize    = 1.0f;
    _style.FrameRounding      = 3.0f;
    _style.ChildRounding      = 3.0f;
    _style.WindowRounding     = 0.0f;
    _style.AntiAliasedFill    = true;
    _style.AntiAliasedLines   = true;
    _style.WindowPadding      = ImVec2(10.0f,10.0f);

}

// Obtained from https://github.com/ocornut/imgui/issues/707#issuecomment-512669512
void setRaikiriStyle(ImGuiStyle& _style) {

    // My tweaks
    _style.WindowRounding = _style.ChildRounding = _style.PopupRounding = 4.0f;
    _style.WindowBorderSize = 1.0f;
    _style.ChildBorderSize = _style.PopupBorderSize = 0.5f;

    // imGuiIO.Fonts->AddFontFromFileTTF("../data/Fonts/Ruda-Bold.ttf", 15.0f, &config);
    _style.FrameRounding = _style.GrabRounding = _style.ScrollbarRounding = 4.0f;
    
    ImVec4* colors = _style.Colors;
    colors[ImGuiCol_Text]                   = ImVec4(0.95f, 0.96f, 0.98f, 1.00f);
    colors[ImGuiCol_TextDisabled]           = ImVec4(0.36f, 0.42f, 0.47f, 1.00f);
    colors[ImGuiCol_WindowBg]               = ImVec4(0.11f, 0.15f, 0.17f, 1.00f);
    colors[ImGuiCol_ChildBg]                = ImVec4(0.15f, 0.18f, 0.22f, 1.00f);
    colors[ImGuiCol_PopupBg]                = ImVec4(0.08f, 0.08f, 0.08f, 0.94f);
    colors[ImGuiCol_Border]                 = ImVec4(0.08f, 0.10f, 0.12f, 1.00f);
    colors[ImGuiCol_BorderShadow]           = ImVec4(0.1f, 0.1f, 0.1f, 1.00f);
    colors[ImGuiCol_FrameBg]                = ImVec4(0.20f, 0.25f, 0.29f, 1.00f);
    colors[ImGuiCol_FrameBgHovered]         = ImVec4(0.12f, 0.20f, 0.28f, 1.00f);
    colors[ImGuiCol_FrameBgActive]          = ImVec4(0.09f, 0.12f, 0.14f, 1.00f);
    colors[ImGuiCol_TitleBg]                = ImVec4(0.09f, 0.12f, 0.14f, 0.65f);
    colors[ImGuiCol_TitleBgActive]          = ImVec4(0.08f, 0.10f, 0.12f, 1.00f);
    colors[ImGuiCol_TitleBgCollapsed]       = ImVec4(0.00f, 0.00f, 0.00f, 0.51f);
    colors[ImGuiCol_MenuBarBg]              = ImVec4(0.15f, 0.18f, 0.22f, 1.00f);
    colors[ImGuiCol_ScrollbarBg]            = ImVec4(0.02f, 0.02f, 0.02f, 0.39f);
    colors[ImGuiCol_ScrollbarGrab]          = ImVec4(0.20f, 0.25f, 0.29f, 1.00f);
    colors[ImGuiCol_ScrollbarGrabHovered]   = ImVec4(0.18f, 0.22f, 0.25f, 1.00f);
    colors[ImGuiCol_ScrollbarGrabActive]    = ImVec4(0.09f, 0.21f, 0.31f, 1.00f);
    colors[ImGuiCol_CheckMark]              = ImVec4(0.28f, 0.56f, 1.00f, 1.00f);
    colors[ImGuiCol_SliderGrab]             = ImVec4(0.28f, 0.56f, 1.00f, 1.00f);
    colors[ImGuiCol_SliderGrabActive]       = ImVec4(0.37f, 0.61f, 1.00f, 1.00f);
    colors[ImGuiCol_Button]                 = ImVec4(0.20f, 0.25f, 0.29f, 1.00f);
    colors[ImGuiCol_ButtonHovered]          = ImVec4(0.28f, 0.56f, 1.00f, 1.00f);
    colors[ImGuiCol_ButtonActive]           = ImVec4(0.06f, 0.53f, 0.98f, 1.00f);
    colors[ImGuiCol_Header]                 = ImVec4(0.20f, 0.25f, 0.29f, 0.55f);
    colors[ImGuiCol_HeaderHovered]          = ImVec4(0.26f, 0.59f, 0.98f, 0.80f);
    colors[ImGuiCol_HeaderActive]           = ImVec4(0.26f, 0.59f, 0.98f, 1.00f);
    colors[ImGuiCol_Separator]              = ImVec4(0.20f, 0.25f, 0.29f, 1.00f);
    colors[ImGuiCol_SeparatorHovered]       = ImVec4(0.10f, 0.40f, 0.75f, 0.78f);
    colors[ImGuiCol_SeparatorActive]        = ImVec4(0.10f, 0.40f, 0.75f, 1.00f);
    colors[ImGuiCol_ResizeGrip]             = ImVec4(0.26f, 0.59f, 0.98f, 0.25f);
    colors[ImGuiCol_ResizeGripHovered]      = ImVec4(0.26f, 0.59f, 0.98f, 0.67f);
    colors[ImGuiCol_ResizeGripActive]       = ImVec4(0.26f, 0.59f, 0.98f, 0.95f);
    colors[ImGuiCol_Tab]                    = ImVec4(0.11f, 0.15f, 0.17f, 1.00f);
    colors[ImGuiCol_TabHovered]             = ImVec4(0.26f, 0.59f, 0.98f, 0.80f);
    colors[ImGuiCol_TabActive]              = ImVec4(0.20f, 0.25f, 0.29f, 1.00f);
    colors[ImGuiCol_TabUnfocused]           = ImVec4(0.11f, 0.15f, 0.17f, 1.00f);
    colors[ImGuiCol_TabUnfocusedActive]     = ImVec4(0.11f, 0.15f, 0.17f, 1.00f);
    colors[ImGuiCol_PlotLines]              = ImVec4(0.61f, 0.61f, 0.61f, 1.00f);
    colors[ImGuiCol_PlotLinesHovered]       = ImVec4(1.00f, 0.43f, 0.35f, 1.00f);
    colors[ImGuiCol_PlotHistogram]          = ImVec4(0.90f, 0.70f, 0.00f, 1.00f);
    colors[ImGuiCol_PlotHistogramHovered]   = ImVec4(1.00f, 0.60f, 0.00f, 1.00f);
    colors[ImGuiCol_TextSelectedBg]         = ImVec4(0.26f, 0.59f, 0.98f, 0.35f);
    colors[ImGuiCol_DragDropTarget]         = ImVec4(1.00f, 1.00f, 0.00f, 0.90f);
    colors[ImGuiCol_NavHighlight]           = ImVec4(0.26f, 0.59f, 0.98f, 1.00f);
    colors[ImGuiCol_NavWindowingHighlight]  = ImVec4(1.00f, 1.00f, 1.00f, 0.70f);
    colors[ImGuiCol_NavWindowingDimBg]      = ImVec4(0.80f, 0.80f, 0.80f, 0.20f);
    colors[ImGuiCol_ModalWindowDimBg]       = ImVec4(0.80f, 0.80f, 0.80f, 0.35f);

}

// Obtained from https://www.unknowncheats.me/forum/1547436-post1.html?s=78e3c8907ffe6b443b8f422ca0c24c10
void setExtasyStyle(ImGuiStyle& _style) {

	_style.WindowPadding = ImVec2(15, 15);
	_style.WindowRounding = 5.0f;
	_style.FramePadding = ImVec2(5, 5);
	_style.FrameRounding = 4.0f;
	_style.ItemSpacing = ImVec2(12, 8);
	_style.ItemInnerSpacing = ImVec2(8, 6);
	_style.IndentSpacing = 25.0f;
	_style.ScrollbarSize = 15.0f;
	_style.ScrollbarRounding = 9.0f;
	_style.GrabMinSize = 5.0f;
	_style.GrabRounding = 3.0f;

    ImVec4* colors = _style.Colors;
 
	colors[ImGuiCol_Text]                   = ImVec4(0.80f, 0.80f, 0.83f, 1.00f);
	colors[ImGuiCol_TextDisabled]           = ImVec4(0.24f, 0.23f, 0.29f, 1.00f);
	colors[ImGuiCol_WindowBg]               = ImVec4(0.06f, 0.05f, 0.07f, 1.00f);
	colors[ImGuiCol_ChildBg]                = ImVec4(0.07f, 0.07f, 0.09f, 1.00f);
	colors[ImGuiCol_PopupBg]                = ImVec4(0.07f, 0.07f, 0.09f, 1.00f);
	colors[ImGuiCol_Border]                 = ImVec4(0.80f, 0.80f, 0.83f, 0.88f);
	colors[ImGuiCol_BorderShadow]           = ImVec4(0.92f, 0.91f, 0.88f, 0.00f);
	colors[ImGuiCol_FrameBg]                = ImVec4(0.10f, 0.09f, 0.12f, 1.00f);
	colors[ImGuiCol_FrameBgHovered]         = ImVec4(0.24f, 0.23f, 0.29f, 1.00f);
	colors[ImGuiCol_FrameBgActive]          = ImVec4(0.56f, 0.56f, 0.58f, 1.00f);
	colors[ImGuiCol_TitleBg]                = ImVec4(0.10f, 0.09f, 0.12f, 1.00f);
	colors[ImGuiCol_TitleBgCollapsed]       = ImVec4(1.00f, 0.98f, 0.95f, 0.75f);
	colors[ImGuiCol_TitleBgActive]          = ImVec4(0.07f, 0.07f, 0.09f, 1.00f);
	colors[ImGuiCol_MenuBarBg]              = ImVec4(0.10f, 0.09f, 0.12f, 1.00f);
	colors[ImGuiCol_ScrollbarBg]            = ImVec4(0.10f, 0.09f, 0.12f, 1.00f);
	colors[ImGuiCol_ScrollbarGrab]          = ImVec4(0.80f, 0.80f, 0.83f, 0.31f);
	colors[ImGuiCol_ScrollbarGrabHovered]   = ImVec4(0.56f, 0.56f, 0.58f, 1.00f);
	colors[ImGuiCol_ScrollbarGrabActive]    = ImVec4(0.06f, 0.05f, 0.07f, 1.00f);
	colors[ImGuiCol_CheckMark]              = ImVec4(0.80f, 0.80f, 0.83f, 0.31f);
	colors[ImGuiCol_SliderGrab]             = ImVec4(0.80f, 0.80f, 0.83f, 0.31f);
	colors[ImGuiCol_SliderGrabActive]       = ImVec4(0.06f, 0.05f, 0.07f, 1.00f);
	colors[ImGuiCol_Button]                 = ImVec4(0.10f, 0.09f, 0.12f, 1.00f);
	colors[ImGuiCol_ButtonHovered]          = ImVec4(0.24f, 0.23f, 0.29f, 1.00f);
	colors[ImGuiCol_ButtonActive]           = ImVec4(0.56f, 0.56f, 0.58f, 1.00f);
	colors[ImGuiCol_Header]                 = ImVec4(0.10f, 0.09f, 0.12f, 1.00f);
	colors[ImGuiCol_HeaderHovered]          = ImVec4(0.56f, 0.56f, 0.58f, 1.00f);
	colors[ImGuiCol_HeaderActive]           = ImVec4(0.06f, 0.05f, 0.07f, 1.00f);
	colors[ImGuiCol_Separator]              = ImVec4(0.56f, 0.56f, 0.58f, 1.00f);
	colors[ImGuiCol_SeparatorHovered]       = ImVec4(0.24f, 0.23f, 0.29f, 1.00f);
	colors[ImGuiCol_SeparatorActive]        = ImVec4(0.56f, 0.56f, 0.58f, 1.00f);
	colors[ImGuiCol_ResizeGrip]             = ImVec4(0.00f, 0.00f, 0.00f, 0.00f);
	colors[ImGuiCol_ResizeGripHovered]      = ImVec4(0.56f, 0.56f, 0.58f, 1.00f);
	colors[ImGuiCol_ResizeGripActive]       = ImVec4(0.06f, 0.05f, 0.07f, 1.00f);
	colors[ImGuiCol_PlotLines]              = ImVec4(0.40f, 0.39f, 0.38f, 0.63f);
	colors[ImGuiCol_PlotLinesHovered]       = ImVec4(0.25f, 1.00f, 0.00f, 1.00f);
	colors[ImGuiCol_PlotHistogram]          = ImVec4(0.40f, 0.39f, 0.38f, 0.63f);
	colors[ImGuiCol_PlotHistogramHovered]   = ImVec4(0.25f, 1.00f, 0.00f, 1.00f);
	colors[ImGuiCol_TextSelectedBg]         = ImVec4(0.25f, 1.00f, 0.00f, 0.43f);
	colors[ImGuiCol_ModalWindowDimBg]       = ImVec4(1.00f, 0.98f, 0.95f, 0.73f);

}

// Mashup made from the ones above. Mostly Extasy's + Rakiri's
void setEelStyle(ImGuiStyle& _style) {

    setExtasyStyle(_style);

    ImVec4* colors = _style.Colors;
    colors[ImGuiCol_CheckMark]              = ImVec4(0.28f, 0.56f, 1.00f, 1.00f);
    colors[ImGuiCol_PlotHistogram]          = ImVec4(0.90f, 0.70f, 0.00f, 1.00f);
}