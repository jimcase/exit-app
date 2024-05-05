package com.getcapacitor.community.exitapp;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "ExitApp")
public class ExitAppPlugin extends Plugin {

    private ExitApp implementation = new ExitApp();

    @PluginMethod
    public void echo(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", implementation.echo(value));
        call.resolve(ret);
    }

    @PluginMethod
    public void exitApp(PluginCall call) {
        unsetAppListeners();
        call.resolve();
        getBridge().getActivity().finish();
    }

    private void unsetAppListeners() {
        bridge.getApp().setStatusChangeListener(null);
        bridge.getApp().setAppRestoredListener(null);
    }
}
