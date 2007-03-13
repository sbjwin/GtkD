/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GstRegistry.html
 * outPack = gstreamer
 * outFile = Registry
 * strct   = GstRegistry
 * realStrct=
 * ctorStrct=
 * clss    = Registry
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_registry_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gstreamer.Plugin
 * 	- gstreamer.PluginFeature
 * structWrap:
 * 	- GList* -> ListG
 * 	- GstPlugin* -> Plugin
 * 	- GstPluginFeature* -> PluginFeature
 * 	- GstRegistry* -> Registry
 * module aliases:
 * local aliases:
 */

module gstreamer.Registry;

private import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;

private import glib.Str;
private import glib.ListG;
private import gstreamer.Plugin;
private import gstreamer.PluginFeature;



/**
 * Description
 * One registry holds the metadata of a set of plugins.
 * All registries build the GstRegistryPool.
 * Design:
 * The GstRegistry object is a list of plugins and some functions for dealing
 * with them. GstPlugins are matched 1-1 with a file on disk, and may or may
 * not be loaded at a given time. There may be multiple GstRegistry objects,
 * but the "default registry" is the only object that has any meaning to the
 * core.
 * The registry.xml file is actually a cache of plugin information. This is
 * unlike versions prior to 0.10, where the registry file was the primary source
 * of plugin information, and was created by the gst-register command.
 * The primary source, at all times, of plugin information is each plugin file
 * itself. Thus, if an application wants information about a particular plugin,
 * or wants to search for a feature that satisfies given criteria, the primary
 * means of doing so is to load every plugin and look at the resulting
 * information that is gathered in the default registry. Clearly, this is a time
 * consuming process, so we cache information in the registry.xml file.
 * On startup, plugins are searched for in the plugin search path. This path can
 * be set directly using the GST_PLUGIN_PATH environment variable. The registry
 * file is loaded from ~/.gstreamer-$GST_MAJORMINOR/registry-$ARCH.xml or the
 * file listed in the GST_REGISTRY env var. The only reason to change the
 * registry location is for testing.
 * For each plugin that is found in the plugin search path, there could be 3
 * possibilities for cached information:
 * the cache may not contain information about a given file.
 * the cache may have stale information.
 * the cache may have current information.
 * In the first two cases, the plugin is loaded and the cache updated. In
 * addition to these cases, the cache may have entries for plugins that are not
 * relevant to the current process. These are marked as not available to the
 * current process. If the cache is updated for whatever reason, it is marked
 * dirty.
 * A dirty cache is written out at the end of initialization. Each entry is
 * checked to make sure the information is minimally valid. If not, the entry is
 * simply dropped.
 * Implementation notes:
 * The "cache" and "default registry" are different concepts and can represent
 * different sets of plugins. For various reasons, at init time, the cache is
 * stored in the default registry, and plugins not relevant to the current
 * process are marked with the GST_PLUGIN_FLAG_CACHED bit. These plugins are
 * removed at the end of intitialization.
 */
private import gstreamer.ObjectGst;
public class Registry : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstRegistry* gstRegistry;
	
	
	public GstRegistry* getRegistryStruct()
	{
		return gstRegistry;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstRegistry;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstRegistry* gstRegistry)
	{
		super(cast(GstObject*)gstRegistry);
		this.gstRegistry = gstRegistry;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(gpointer, Registry)[] onFeatureAddedListeners;
	void addOnFeatureAdded(void delegate(gpointer, Registry) dlg)
	{
		if ( !("feature-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"feature-added",
			cast(GCallback)&callBackFeatureAdded,
			cast(void*)this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["feature-added"] = 1;
		}
		onFeatureAddedListeners ~= dlg;
	}
	extern(C) static void callBackFeatureAdded(GstRegistry* registryStruct, gpointer feature, Registry registry)
	{
		bit consumed = false;
		
		foreach ( void delegate(gpointer, Registry) dlg ; registry.onFeatureAddedListeners )
		{
			dlg(feature, registry);
		}
		
		return consumed;
	}
	
	void delegate(gpointer, Registry)[] onPluginAddedListeners;
	void addOnPluginAdded(void delegate(gpointer, Registry) dlg)
	{
		if ( !("plugin-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"plugin-added",
			cast(GCallback)&callBackPluginAdded,
			cast(void*)this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["plugin-added"] = 1;
		}
		onPluginAddedListeners ~= dlg;
	}
	extern(C) static void callBackPluginAdded(GstRegistry* registryStruct, gpointer plugin, Registry registry)
	{
		bit consumed = false;
		
		foreach ( void delegate(gpointer, Registry) dlg ; registry.onPluginAddedListeners )
		{
			dlg(plugin, registry);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Retrieves the default registry. The caller does not own a reference on the
	 * registry, as it is alive as long as GStreamer is initialized.
	 * Returns:
	 *  The default GstRegistry.
	 */
	public static Registry getDefault()
	{
		// GstRegistry* gst_registry_get_default (void);
		return new Registry( gst_registry_get_default() );
	}
	
	/**
	 * Retrieves a GList of GstPluginFeature of type.
	 * registry:
	 *  a GstRegistry
	 * type:
	 *  a GType.
	 * Returns:
	 *  a GList of GstPluginFeature of type. gst_plugin_feature_list_free
	 * after usage.
	 * MT safe.
	 */
	public ListG getFeatureList(GType type)
	{
		// GList* gst_registry_get_feature_list (GstRegistry *registry,  GType type);
		return new ListG( gst_registry_get_feature_list(gstRegistry, type) );
	}
	
	/**
	 * Retrieves a GList of features of the plugin with name name.
	 * registry:
	 *  a GstRegistry.
	 * name:
	 *  a plugin name.
	 * Returns:
	 *  a GList of GstPluginFeature. gst_plugin_feature_list_free() after usage.
	 */
	public ListG getFeatureListByPlugin(char[] name)
	{
		// GList* gst_registry_get_feature_list_by_plugin  (GstRegistry *registry,  const gchar *name);
		return new ListG( gst_registry_get_feature_list_by_plugin(gstRegistry, Str.toStringz(name)) );
	}
	
	/**
	 * Get the list of paths for the given registry.
	 * registry:
	 *  the registry to get the pathlist of
	 * Returns:
	 *  A Glist of paths as strings. g_list_free after use.
	 * MT safe.
	 */
	public ListG getPathList()
	{
		// GList* gst_registry_get_path_list (GstRegistry *registry);
		return new ListG( gst_registry_get_path_list(gstRegistry) );
	}
	
	/**
	 * Get a copy of all plugins registered in the given registry. The refcount
	 * of each element in the list in incremented.
	 * registry:
	 *  the registry to search
	 * Returns:
	 *  a GList of GstPlugin. gst_plugin_list_free after use.
	 * MT safe.
	 */
	public ListG getPluginList()
	{
		// GList* gst_registry_get_plugin_list (GstRegistry *registry);
		return new ListG( gst_registry_get_plugin_list(gstRegistry) );
	}
	
	/**
	 * Add the plugin to the registry. The plugin-added signal will be emitted.
	 * This function will sink plugin.
	 * registry:
	 *  the registry to add the plugin to
	 * plugin:
	 *  the plugin to add
	 * Returns:
	 *  TRUE on success.
	 * MT safe.
	 */
	public int addPlugin(Plugin plugin)
	{
		// gboolean gst_registry_add_plugin (GstRegistry *registry,  GstPlugin *plugin);
		return gst_registry_add_plugin(gstRegistry, (plugin is null) ? null : plugin.getPluginStruct());
	}
	
	/**
	 * Remove the plugin from the registry.
	 * MT safe.
	 * registry:
	 *  the registry to remove the plugin from
	 * plugin:
	 *  the plugin to remove
	 */
	public void removePlugin(Plugin plugin)
	{
		// void gst_registry_remove_plugin (GstRegistry *registry,  GstPlugin *plugin);
		gst_registry_remove_plugin(gstRegistry, (plugin is null) ? null : plugin.getPluginStruct());
	}
	
	/**
	 * Runs a filter against all plugins in the registry and returns a GList with
	 * the results. If the first flag is set, only the first match is
	 * returned (as a list with a single object).
	 * Every plugin is reffed; use gst_plugin_list_free() after use, which
	 * will unref again.
	 * registry:
	 *  registry to query
	 * filter:
	 *  the filter to use
	 * first:
	 *  only return first match
	 * user_data:
	 *  user data passed to the filter function
	 * Returns:
	 *  a GList of GstPlugin. Use gst_plugin_list_free() after usage.
	 * MT safe.
	 */
	public ListG pluginFilter(GstPluginFilter filter, int first, void* userData)
	{
		// GList* gst_registry_plugin_filter (GstRegistry *registry,  GstPluginFilter filter,  gboolean first,  gpointer user_data);
		return new ListG( gst_registry_plugin_filter(gstRegistry, filter, first, userData) );
	}
	
	/**
	 * Runs a filter against all features of the plugins in the registry
	 * and returns a GList with the results.
	 * If the first flag is set, only the first match is
	 * returned (as a list with a single object).
	 * registry:
	 *  registry to query
	 * filter:
	 *  the filter to use
	 * first:
	 *  only return first match
	 * user_data:
	 *  user data passed to the filter function
	 * Returns:
	 *  a GList of plugin features, gst_plugin_feature_list_free after use.
	 * MT safe.
	 */
	public ListG featureFilter(GstPluginFeatureFilter filter, int first, void* userData)
	{
		// GList* gst_registry_feature_filter (GstRegistry *registry,  GstPluginFeatureFilter filter,  gboolean first,  gpointer user_data);
		return new ListG( gst_registry_feature_filter(gstRegistry, filter, first, userData) );
	}
	
	/**
	 * Find the plugin with the given name in the registry.
	 * The plugin will be reffed; caller is responsible for unreffing.
	 * registry:
	 *  the registry to search
	 * name:
	 *  the plugin name to find
	 * Returns:
	 *  The plugin with the given name or NULL if the plugin was not found.
	 * gst_object_unref() after usage.
	 * MT safe.
	 */
	public Plugin findPlugin(char[] name)
	{
		// GstPlugin* gst_registry_find_plugin (GstRegistry *registry,  const gchar *name);
		return new Plugin( gst_registry_find_plugin(gstRegistry, Str.toStringz(name)) );
	}
	
	/**
	 * Find the pluginfeature with the given name and type in the registry.
	 * registry:
	 *  the registry to search
	 * name:
	 *  the pluginfeature name to find
	 * type:
	 *  the pluginfeature type to find
	 * Returns:
	 *  The pluginfeature with the given name and type or NULL
	 * if the plugin was not found. gst_object_unref() after usage.
	 * MT safe.
	 */
	public PluginFeature findFeature(char[] name, GType type)
	{
		// GstPluginFeature* gst_registry_find_feature (GstRegistry *registry,  const gchar *name,  GType type);
		return new PluginFeature( gst_registry_find_feature(gstRegistry, Str.toStringz(name), type) );
	}
	
	/**
	 * Find a GstPluginFeature with name in registry.
	 * registry:
	 *  a GstRegistry
	 * name:
	 *  a GstPluginFeature name
	 * Returns:
	 *  a GstPluginFeature with its refcount incremented, use
	 * gst_object_unref() after usage.
	 * MT safe.
	 */
	public PluginFeature lookupFeature(char[] name)
	{
		// GstPluginFeature* gst_registry_lookup_feature  (GstRegistry *registry,  const char *name);
		return new PluginFeature( gst_registry_lookup_feature(gstRegistry, Str.toStringz(name)) );
	}
	
	/**
	 * Add the given path to the registry. The syntax of the
	 * path is specific to the registry. If the path has already been
	 * added, do nothing.
	 * registry:
	 *  the registry to add the path to
	 * path:
	 *  the path to add to the registry
	 * Returns:
	 *  TRUE if registry changed
	 */
	public int scanPath(char[] path)
	{
		// gboolean gst_registry_scan_path (GstRegistry *registry,  const gchar *path);
		return gst_registry_scan_path(gstRegistry, Str.toStringz(path));
	}
	
	/**
	 * Read the contents of the binary cache file at location into registry.
	 * registry:
	 *  a GstRegistry
	 * location:
	 *  a filename
	 * Returns:
	 *  TRUE on success.
	 */
	public int binaryReadCache(char[] location)
	{
		// gboolean gst_registry_binary_read_cache (GstRegistry *registry,  const char *location);
		return gst_registry_binary_read_cache(gstRegistry, Str.toStringz(location));
	}
	
	/**
	 * Write the cache to file. Part of the code was taken from gstregistryxml.c
	 * registry:
	 * location:
	 * Returns:
	 */
	public int binaryWriteCache(char[] location)
	{
		// gboolean gst_registry_binary_write_cache (GstRegistry *registry,  const char *location);
		return gst_registry_binary_write_cache(gstRegistry, Str.toStringz(location));
	}
	
	/**
	 * Read the contents of the XML cache file at location into registry.
	 * registry:
	 *  a GstRegistry
	 * location:
	 *  a filename
	 * Returns:
	 *  TRUE on success.
	 */
	public int xmlReadCache(char[] location)
	{
		// gboolean gst_registry_xml_read_cache (GstRegistry *registry,  const char *location);
		return gst_registry_xml_read_cache(gstRegistry, Str.toStringz(location));
	}
	
	/**
	 * Write registry in an XML format at the location given by
	 * location. Directories are automatically created.
	 * registry:
	 *  a GstRegistry
	 * location:
	 *  a filename
	 * Returns:
	 *  TRUE on success.
	 */
	public int xmlWriteCache(char[] location)
	{
		// gboolean gst_registry_xml_write_cache (GstRegistry *registry,  const char *location);
		return gst_registry_xml_write_cache(gstRegistry, Str.toStringz(location));
	}
	
	/**
	 * Look up a plugin in the given registry with the given filename.
	 * If found, plugin is reffed.
	 * registry:
	 *  the registry to look up in
	 * filename:
	 *  the name of the file to look up
	 * Returns:
	 *  the GstPlugin if found, or NULL if not. gst_object_unref()
	 * after usage.
	 */
	public Plugin lookup(char[] filename)
	{
		// GstPlugin* gst_registry_lookup (GstRegistry *registry,  const char *filename);
		return new Plugin( gst_registry_lookup(gstRegistry, Str.toStringz(filename)) );
	}
	
	/**
	 * Remove the feature from the registry.
	 * MT safe.
	 * registry:
	 *  the registry to remove the feature from
	 * feature:
	 *  the feature to remove
	 */
	public void removeFeature(PluginFeature feature)
	{
		// void gst_registry_remove_feature (GstRegistry *registry,  GstPluginFeature *feature);
		gst_registry_remove_feature(gstRegistry, (feature is null) ? null : feature.getPluginFeatureStruct());
	}
	
	/**
	 * Add the feature to the registry. The feature-added signal will be emitted.
	 * This function sinks feature.
	 * registry:
	 *  the registry to add the plugin to
	 * feature:
	 *  the feature to add
	 * Returns:
	 *  TRUE on success.
	 * MT safe.
	 */
	public int addFeature(PluginFeature feature)
	{
		// gboolean gst_registry_add_feature (GstRegistry *registry,  GstPluginFeature *feature);
		return gst_registry_add_feature(gstRegistry, (feature is null) ? null : feature.getPluginFeatureStruct());
	}
	
	/**
	 * Checks whether a plugin feature by the given name exists in the
	 * default registry and whether its version is at least the
	 * version required.
	 * feature_name:
	 *  the name of the feature (e.g. "oggdemux")
	 * min_major:
	 *  the minimum major version number
	 * min_minor:
	 *  the minimum minor version number
	 * min_micro:
	 *  the minimum micro version number
	 * Returns:
	 *  TRUE if the feature could be found and the version is
	 * the same as the required version or newer, and FALSE otherwise.
	 */
	public static int defaultRegistryCheckFeatureVersion(char[] featureName, uint minMajor, uint minMinor, uint minMicro)
	{
		// gboolean gst_default_registry_check_feature_version  (const gchar *feature_name,  guint min_major,  guint min_minor,  guint min_micro);
		return gst_default_registry_check_feature_version(Str.toStringz(featureName), minMajor, minMinor, minMicro);
	}
	
	
	
	
	
	
	
	
}