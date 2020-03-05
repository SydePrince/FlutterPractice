package com.example.myblindapplication_2;

import androidx.appcompat.app.AppCompatActivity;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterEngineCache;
import io.flutter.embedding.engine.dart.DartExecutor;

import android.os.Bundle;
import android.util.Log;
import android.view.View;

public class MainActivity extends AppCompatActivity {
    private static final String TAG = "wangzhuo";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        FlutterEngine flutterEngine = new FlutterEngine(this);
        flutterEngine.addEngineLifecycleListener(new FlutterEngine.EngineLifecycleListener() {
            @Override
            public void onPreEngineRestart() {
                Log.i(TAG, "onPreEngineRestart: ");
            }
        });
        flutterEngine.getNavigationChannel().setInitialRoute("router2");
        flutterEngine.getDartExecutor().executeDartEntrypoint(DartExecutor.DartEntrypoint.createDefault());
        FlutterEngineCache.getInstance().put("cache_id_1", flutterEngine);
    }

    public void startFlutterActivity(View view) {
        startActivity(FlutterActivity.withNewEngine().initialRoute("router1").build(MainActivity.this));
    }

    public void startFlutterActivity2(View view) {
        startActivity(FlutterActivity.withCachedEngine("cache_id_1").build(MainActivity.this));
    }

    public void startFlutterActivity3(View view) {
        startActivity(FlutterActivity.createDefaultIntent(MainActivity.this));
    }
}
