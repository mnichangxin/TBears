package com.tbears.rnBridge;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;

import com.facebook.react.bridge.JSApplicationIllegalArgumentException;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;

public class RNBridgeModule extends ReactContextBaseJavaModule {
    public RNBridgeModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "RNBridge";
    }

    @ReactMethod
    public void jumpNativePage(ReadableMap params) {
        try {
            Activity currentActivity = getCurrentActivity();

            String toActivityName = params.getString("name");
            ReadableMap toActivityParams = params.getMap("params");

            Class toActivity = Class.forName(toActivityName);

            if (currentActivity != null && toActivity != null) {
                Intent intent = new Intent(currentActivity, toActivity);
                intent.putExtra("params", toActivityParams.toHashMap().toString());
                currentActivity.startActivity(intent);
            }
        } catch (Exception e) {
            throw new JSApplicationIllegalArgumentException("Can't open " + e.getMessage());
        }
    }
}
