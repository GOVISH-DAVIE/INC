package com.ie.cais

import io.flutter.embedding.android.FlutterActivity
import android.app.NotificationChannel
import android.app.NotificationManager
import android.os.Build
import androidx.core.app.NotificationCompat
import android.app.Service
import android.app.Notification
import android.content.Intent
import android.os.IBinder


class ForegroundService : Service() {

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            createNotificationChannel()
        }

        // Build the notification
        val notification: Notification = NotificationCompat.Builder(this, "my_foreground_service_channel")
            .setContentTitle("Service Running")
            .setContentText("Foreground service is running")
            .setSmallIcon(R.drawable.ic_launcher)  // Ensure this icon exists in drawable
            .build()

        // Start the service in the foreground with the notification
        startForeground(1, notification)

        // Background task logic
        return START_STICKY
    }

    // Create the notification channel for Android 8.0+
    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val serviceChannel = NotificationChannel(
                "my_foreground_service_channel",
                "Foreground Service Channel",
                NotificationManager.IMPORTANCE_LOW
            )
            val manager = getSystemService(NotificationManager::class.java)
            manager?.createNotificationChannel(serviceChannel)
        }
    }

    override fun onBind(intent: Intent?): IBinder? {
        return null
    }
}
class MainActivity: FlutterActivity(){}
