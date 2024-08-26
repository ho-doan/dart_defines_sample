package com.example.same_define

import android.os.Bundle
import android.util.Log
import com.example.same_define.core.env.Env
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {
    private lateinit var env: Env
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        env = Env(context)
        Log.e("///", "onCreate: ${env.appName}")
    }
}
