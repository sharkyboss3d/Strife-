photon_realtime_init();

photon_realtime_set_callback_connected(function(_error_code, _error_string, _region) {
    if (_error_code == PhotonRealtimeAppErrorCode.Ok) {
        show_debug_message($"Connected to region {_region}");
        photon_realtime_operation_join_or_create_room("my_room", new PhotonRealtimeRoomOptions(), {});
    } else {
        show_debug_message($"Connect failed: {_error_string}");
    }
});

photon_realtime_set_callback_disconnected(function() {
    show_debug_message("Disconnected");
});

var _app_id = extension_get_option_value("GMPhoton", "appIdRealtime");
photon_realtime_connect(_app_id, "1.0", new PhotonRealtimeConnectOptions());