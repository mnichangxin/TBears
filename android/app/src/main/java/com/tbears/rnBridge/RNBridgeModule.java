package com.tbears.rnBridge;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;

import com.facebook.react.bridge.JSApplicationIllegalArgumentException;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReadableMap;

public class RNBridgeModule extends ReactContextBaseJavaModule {
    public RNBridgeModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "RNBridge";
    }

    public void jumpNativePage(ReadableMap params) {
        try {
            Activity currentActivity = getCurrentActivity();

            if (currentActivity != null) {
                String toActivityName = params.getString("name");
                ReadableMap toActivityParams = params.getMap("params");

                Log.d("rnBridge", toActivityName);

                Class toActivity = Class.forName(toActivityName);
                Intent intent = new Intent(currentActivity, toActivity);
                intent.putExtra("params", params.toString());
                currentActivity.startActivity(intent);
            }
        } catch (Exception e) {
            throw new JSApplicationIllegalArgumentException("Can't open " + e.getMessage());
        }
    }
}
