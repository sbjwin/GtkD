extern(C)
{
	void		function(int*argc,char***argv)
			gdk_gl_init;
	gboolean		function(int*argc,char***argv)
			gdk_gl_init_check;
	gboolean		function(int*argc,char***argv)
			gdk_gl_parse_args;
	gboolean		function()
			gdk_gl_query_extension;
	gboolean		function(GdkDisplay*display)
			gdk_gl_query_extension_for_display;
	gboolean		function(int*major,int*minor)
			gdk_gl_query_version;
	gboolean		function(GdkDisplay*display,int*major,int*minor)
			gdk_gl_query_version_for_display;
	gboolean		function(char*extension)
			gdk_gl_query_gl_extension;
	GdkGLConfig*		function(int*attrib_list)
			gdk_gl_config_new;
	GdkGLConfig*		function(GdkScreen*screen,int*attrib_list)
			gdk_gl_config_new_for_screen;
	GdkGLConfig*		function(GdkGLConfigModemode)
			gdk_gl_config_new_by_mode;
	GdkGLConfig*		function(GdkScreen*screen,GdkGLConfigModemode)
			gdk_gl_config_new_by_mode_for_screen;
	GdkScreen*		function(GdkGLConfig*glconfig)
			gdk_gl_config_get_screen;
	gboolean		function(GdkGLConfig*glconfig,intattribute,int*value)
			gdk_gl_config_get_attrib;
	GdkColormap*		function(GdkGLConfig*glconfig)
			gdk_gl_config_get_colormap;
	GdkVisual*		function(GdkGLConfig*glconfig)
			gdk_gl_config_get_visual;
	gint		function(GdkGLConfig*glconfig)
			gdk_gl_config_get_depth;
	gint		function(GdkGLConfig*glconfig)
			gdk_gl_config_get_layer_plane;
	gint		function(GdkGLConfig*glconfig)
			gdk_gl_config_get_n_aux_buffers;
	gint		function(GdkGLConfig*glconfig)
			gdk_gl_config_get_n_sample_buffers;
	gboolean		function(GdkGLConfig*glconfig)
			gdk_gl_config_is_rgba;
	gboolean		function(GdkGLConfig*glconfig)
			gdk_gl_config_is_double_buffered;
	gboolean		function(GdkGLConfig*glconfig)
			gdk_gl_config_is_stereo;
	gboolean		function(GdkGLConfig*glconfig)
			gdk_gl_config_has_alpha;
	gboolean		function(GdkGLConfig*glconfig)
			gdk_gl_config_has_depth_buffer;
	gboolean		function(GdkGLConfig*glconfig)
			gdk_gl_config_has_stencil_buffer;
	gboolean		function(GdkGLConfig*glconfig)
			gdk_gl_config_has_accum_buffer;
	GdkGLContext*		function(GdkGLDrawable*gldrawable,GdkGLContext*share_list,gbooleandirect,intrender_type)
			gdk_gl_context_new;
	void		function(GdkGLContext*glcontext)
			gdk_gl_context_destroy;
	gboolean		function(GdkGLContext*glcontext,GdkGLContext*src,ulongmask)
			gdk_gl_context_copy;
	GdkGLDrawable*		function(GdkGLContext*glcontext)
			gdk_gl_context_get_gl_drawable;
	GdkGLConfig*		function(GdkGLContext*glcontext)
			gdk_gl_context_get_gl_config;
	GdkGLContext*		function(GdkGLContext*glcontext)
			gdk_gl_context_get_share_list;
	gboolean		function(GdkGLContext*glcontext)
			gdk_gl_context_is_direct;
	int		function(GdkGLContext*glcontext)
			gdk_gl_context_get_render_type;
	GdkGLContext*		function()
			gdk_gl_context_get_current;
	void		function(gbooleansolid,doublesize)
			gdk_gl_draw_cube;
	void		function(gbooleansolid,doubleradius,intslices,intstacks)
			gdk_gl_draw_sphere;
	void		function(gbooleansolid,doublebase,doubleheight,intslices,intstacks)
			gdk_gl_draw_cone;
	void		function(gbooleansolid,doubleinner_radius,doubleouter_radius,intnsides,intrings)
			gdk_gl_draw_torus;
	void		function(gbooleansolid)
			gdk_gl_draw_tetrahedron;
	void		function(gbooleansolid)
			gdk_gl_draw_octahedron;
	void		function(gbooleansolid)
			gdk_gl_draw_dodecahedron;
	void		function(gbooleansolid)
			gdk_gl_draw_icosahedron;
	void		function(gbooleansolid,doublescale)
			gdk_gl_draw_teapot;
	gboolean		function(GdkGLDrawable*gldrawable,GdkGLContext*glcontext)
			gdk_gl_drawable_make_current;
	gboolean		function(GdkGLDrawable*gldrawable)
			gdk_gl_drawable_is_double_buffered;
	void		function(GdkGLDrawable*gldrawable)
			gdk_gl_drawable_swap_buffers;
	void		function(GdkGLDrawable*gldrawable)
			gdk_gl_drawable_wait_gl;
	void		function(GdkGLDrawable*gldrawable)
			gdk_gl_drawable_wait_gdk;
	gboolean		function(GdkGLDrawable*gldrawable,GdkGLContext*glcontext)
			gdk_gl_drawable_gl_begin;
	void		function(GdkGLDrawable*gldrawable)
			gdk_gl_drawable_gl_end;
	GdkGLConfig*		function(GdkGLDrawable*gldrawable)
			gdk_gl_drawable_get_gl_config;
	void		function(GdkGLDrawable*gldrawable,gint*width,gint*height)
			gdk_gl_drawable_get_size;
	GdkGLDrawable*		function()
			gdk_gl_drawable_get_current;
	PangoFont*		function(PangoFontDescription*font_desc,intfirst,intcount,intlist_base)
			gdk_gl_font_use_pango_font;
	PangoFont*		function(GdkDisplay*display,PangoFontDescription*font_desc,intfirst,intcount,intlist_base)
			gdk_gl_font_use_pango_font_for_display;
	GdkGLPixmap*		function(GdkGLConfig*glconfig,GdkPixmap*pixmap,int*attrib_list)
			gdk_gl_pixmap_new;
	void		function(GdkGLPixmap*glpixmap)
			gdk_gl_pixmap_destroy;
	GdkPixmap*		function(GdkGLPixmap*glpixmap)
			gdk_gl_pixmap_get_pixmap;
	GdkGLPixmap*		function(GdkPixmap*pixmap,GdkGLConfig*glconfig,int*attrib_list)
			gdk_pixmap_set_gl_capability;
	void		function(GdkPixmap*pixmap)
			gdk_pixmap_unset_gl_capability;
	gboolean		function(GdkPixmap*pixmap)
			gdk_pixmap_is_gl_capable;
	GdkGLPixmap*		function(GdkPixmap*pixmap)
			gdk_pixmap_get_gl_pixmap;
	gboolean		function(GtkWidget*widget,GdkGLConfig*glconfig,GdkGLContext*share_list,gbooleandirect,intrender_type)
			gtk_widget_set_gl_capability;
	gboolean		function(GtkWidget*widget)
			gtk_widget_is_gl_capable;
	GdkGLConfig*		function(GtkWidget*widget)
			gtk_widget_get_gl_config;
	GdkGLContext*		function(GtkWidget*widget,GdkGLContext*share_list,gbooleandirect,intrender_type)
			gtk_widget_create_gl_context;
	GdkGLContext*		function(GtkWidget*widget)
			gtk_widget_get_gl_context;
	GdkGLWindow*		function(GtkWidget*widget)
			gtk_widget_get_gl_window;
	GdkGLWindow*		function(GdkGLConfig*glconfig,GdkWindow*window,int*attrib_list)
			gdk_gl_window_new;
	void		function(GdkGLWindow*glwindow)
			gdk_gl_window_destroy;
	GdkWindow*		function(GdkGLWindow*glwindow)
			gdk_gl_window_get_window;
	GdkGLWindow*		function(GdkWindow*window,GdkGLConfig*glconfig,int*attrib_list)
			gdk_window_set_gl_capability;
	void		function(GdkWindow*window)
			gdk_window_unset_gl_capability;
	gboolean		function(GdkWindow*window)
			gdk_window_is_gl_capable;
	GdkGLWindow*		function(GdkWindow*window)
			gdk_window_get_gl_window;
	gboolean		function(GdkGLConfig*glconfig,char*extension)
			gdk_x11_gl_query_glx_extension;
	GdkGLConfig*		function(VisualIDxvisualid)
			gdk_x11_gl_config_new_from_visualid;
	GdkGLConfig*		function(GdkScreen*screen,VisualIDxvisualid)
			gdk_x11_gl_config_new_from_visualid_for_screen;
	int		function(GdkGLConfig*glconfig)
			gdk_x11_gl_config_get_screen_number;
	gboolean		function(GdkGLConfig*glconfig)
			gdk_x11_gl_config_is_mesa_glx;
}


lib.loader.Symbol[] ooooLinks =
[
{ "gdk_gl_init",  cast(void**)& gdk_gl_init },
{ "gdk_gl_init_check",  cast(void**)& gdk_gl_init_check },
{ "gdk_gl_parse_args",  cast(void**)& gdk_gl_parse_args },
{ "gdk_gl_query_extension",  cast(void**)& gdk_gl_query_extension },
{ "gdk_gl_query_extension_for_display",  cast(void**)& gdk_gl_query_extension_for_display },
{ "gdk_gl_query_version",  cast(void**)& gdk_gl_query_version },
{ "gdk_gl_query_version_for_display",  cast(void**)& gdk_gl_query_version_for_display },
{ "gdk_gl_query_gl_extension",  cast(void**)& gdk_gl_query_gl_extension },
{ "gdk_gl_config_new",  cast(void**)& gdk_gl_config_new },
{ "gdk_gl_config_new_for_screen",  cast(void**)& gdk_gl_config_new_for_screen },
{ "gdk_gl_config_new_by_mode",  cast(void**)& gdk_gl_config_new_by_mode },
{ "gdk_gl_config_new_by_mode_for_screen",  cast(void**)& gdk_gl_config_new_by_mode_for_screen },
{ "gdk_gl_config_get_screen",  cast(void**)& gdk_gl_config_get_screen },
{ "gdk_gl_config_get_attrib",  cast(void**)& gdk_gl_config_get_attrib },
{ "gdk_gl_config_get_colormap",  cast(void**)& gdk_gl_config_get_colormap },
{ "gdk_gl_config_get_visual",  cast(void**)& gdk_gl_config_get_visual },
{ "gdk_gl_config_get_depth",  cast(void**)& gdk_gl_config_get_depth },
{ "gdk_gl_config_get_layer_plane",  cast(void**)& gdk_gl_config_get_layer_plane },
{ "gdk_gl_config_get_n_aux_buffers",  cast(void**)& gdk_gl_config_get_n_aux_buffers },
{ "gdk_gl_config_get_n_sample_buffers",  cast(void**)& gdk_gl_config_get_n_sample_buffers },
{ "gdk_gl_config_is_rgba",  cast(void**)& gdk_gl_config_is_rgba },
{ "gdk_gl_config_is_double_buffered",  cast(void**)& gdk_gl_config_is_double_buffered },
{ "gdk_gl_config_is_stereo",  cast(void**)& gdk_gl_config_is_stereo },
{ "gdk_gl_config_has_alpha",  cast(void**)& gdk_gl_config_has_alpha },
{ "gdk_gl_config_has_depth_buffer",  cast(void**)& gdk_gl_config_has_depth_buffer },
{ "gdk_gl_config_has_stencil_buffer",  cast(void**)& gdk_gl_config_has_stencil_buffer },
{ "gdk_gl_config_has_accum_buffer",  cast(void**)& gdk_gl_config_has_accum_buffer },
{ "gdk_gl_context_new",  cast(void**)& gdk_gl_context_new },
{ "gdk_gl_context_destroy",  cast(void**)& gdk_gl_context_destroy },
{ "gdk_gl_context_copy",  cast(void**)& gdk_gl_context_copy },
{ "gdk_gl_context_get_gl_drawable",  cast(void**)& gdk_gl_context_get_gl_drawable },
{ "gdk_gl_context_get_gl_config",  cast(void**)& gdk_gl_context_get_gl_config },
{ "gdk_gl_context_get_share_list",  cast(void**)& gdk_gl_context_get_share_list },
{ "gdk_gl_context_is_direct",  cast(void**)& gdk_gl_context_is_direct },
{ "gdk_gl_context_get_render_type",  cast(void**)& gdk_gl_context_get_render_type },
{ "gdk_gl_context_get_current",  cast(void**)& gdk_gl_context_get_current },
{ "gdk_gl_draw_cube",  cast(void**)& gdk_gl_draw_cube },
{ "gdk_gl_draw_sphere",  cast(void**)& gdk_gl_draw_sphere },
{ "gdk_gl_draw_cone",  cast(void**)& gdk_gl_draw_cone },
{ "gdk_gl_draw_torus",  cast(void**)& gdk_gl_draw_torus },
{ "gdk_gl_draw_tetrahedron",  cast(void**)& gdk_gl_draw_tetrahedron },
{ "gdk_gl_draw_octahedron",  cast(void**)& gdk_gl_draw_octahedron },
{ "gdk_gl_draw_dodecahedron",  cast(void**)& gdk_gl_draw_dodecahedron },
{ "gdk_gl_draw_icosahedron",  cast(void**)& gdk_gl_draw_icosahedron },
{ "gdk_gl_draw_teapot",  cast(void**)& gdk_gl_draw_teapot },
{ "gdk_gl_drawable_make_current",  cast(void**)& gdk_gl_drawable_make_current },
{ "gdk_gl_drawable_is_double_buffered",  cast(void**)& gdk_gl_drawable_is_double_buffered },
{ "gdk_gl_drawable_swap_buffers",  cast(void**)& gdk_gl_drawable_swap_buffers },
{ "gdk_gl_drawable_wait_gl",  cast(void**)& gdk_gl_drawable_wait_gl },
{ "gdk_gl_drawable_wait_gdk",  cast(void**)& gdk_gl_drawable_wait_gdk },
{ "gdk_gl_drawable_gl_begin",  cast(void**)& gdk_gl_drawable_gl_begin },
{ "gdk_gl_drawable_gl_end",  cast(void**)& gdk_gl_drawable_gl_end },
{ "gdk_gl_drawable_get_gl_config",  cast(void**)& gdk_gl_drawable_get_gl_config },
{ "gdk_gl_drawable_get_size",  cast(void**)& gdk_gl_drawable_get_size },
{ "gdk_gl_drawable_get_current",  cast(void**)& gdk_gl_drawable_get_current },
{ "gdk_gl_font_use_pango_font",  cast(void**)& gdk_gl_font_use_pango_font },
{ "gdk_gl_font_use_pango_font_for_display",  cast(void**)& gdk_gl_font_use_pango_font_for_display },
{ "gdk_gl_pixmap_new",  cast(void**)& gdk_gl_pixmap_new },
{ "gdk_gl_pixmap_destroy",  cast(void**)& gdk_gl_pixmap_destroy },
{ "gdk_gl_pixmap_get_pixmap",  cast(void**)& gdk_gl_pixmap_get_pixmap },
{ "gdk_pixmap_set_gl_capability",  cast(void**)& gdk_pixmap_set_gl_capability },
{ "gdk_pixmap_unset_gl_capability",  cast(void**)& gdk_pixmap_unset_gl_capability },
{ "gdk_pixmap_is_gl_capable",  cast(void**)& gdk_pixmap_is_gl_capable },
{ "gdk_pixmap_get_gl_pixmap",  cast(void**)& gdk_pixmap_get_gl_pixmap },
{ "gtk_widget_set_gl_capability",  cast(void**)& gtk_widget_set_gl_capability },
{ "gtk_widget_is_gl_capable",  cast(void**)& gtk_widget_is_gl_capable },
{ "gtk_widget_get_gl_config",  cast(void**)& gtk_widget_get_gl_config },
{ "gtk_widget_create_gl_context",  cast(void**)& gtk_widget_create_gl_context },
{ "gtk_widget_get_gl_context",  cast(void**)& gtk_widget_get_gl_context },
{ "gtk_widget_get_gl_window",  cast(void**)& gtk_widget_get_gl_window },
{ "gdk_gl_window_new",  cast(void**)& gdk_gl_window_new },
{ "gdk_gl_window_destroy",  cast(void**)& gdk_gl_window_destroy },
{ "gdk_gl_window_get_window",  cast(void**)& gdk_gl_window_get_window },
{ "gdk_window_set_gl_capability",  cast(void**)& gdk_window_set_gl_capability },
{ "gdk_window_unset_gl_capability",  cast(void**)& gdk_window_unset_gl_capability },
{ "gdk_window_is_gl_capable",  cast(void**)& gdk_window_is_gl_capable },
{ "gdk_window_get_gl_window",  cast(void**)& gdk_window_get_gl_window },
{ "gdk_x11_gl_query_glx_extension",  cast(void**)& gdk_x11_gl_query_glx_extension },
{ "gdk_x11_gl_config_new_from_visualid",  cast(void**)& gdk_x11_gl_config_new_from_visualid },
{ "gdk_x11_gl_config_new_from_visualid_for_screen",  cast(void**)& gdk_x11_gl_config_new_from_visualid_for_screen },
{ "gdk_x11_gl_config_get_screen_number",  cast(void**)& gdk_x11_gl_config_get_screen_number },
{ "gdk_x11_gl_config_is_mesa_glx",  cast(void**)& gdk_x11_gl_config_is_mesa_glx }
];