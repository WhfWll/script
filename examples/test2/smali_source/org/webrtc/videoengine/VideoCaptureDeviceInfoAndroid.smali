.class public Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "anLive"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deviceUniqueName(ILandroid/hardware/Camera$CameraInfo;)Ljava/lang/String;
    .registers 4
    .param p0, "index"    # I
    .param p1, "info"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Facing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->isFrontFacing(Landroid/hardware/Camera$CameraInfo;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "front"

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Orientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    const-string v0, "back"

    goto :goto_19
.end method

.method private static getDeviceInfo()Ljava/lang/String;
    .registers 16

    const/16 v15, 0x7530

    const/16 v14, 0x3a98

    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_6
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move v5, v3

    :goto_c
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-ge v5, v0, :cond_150

    new-instance v7, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v7}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v5, v7}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    invoke-static {v5, v7}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceUniqueName(ILandroid/hardware/Camera$CameraInfo;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_26} :catch_6d

    const/4 v2, 0x0

    :try_start_27
    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v10

    const-string v0, "anLive"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_3c} :catch_74
    .catchall {:try_start_27 .. :try_end_3c} :catchall_99

    if-eqz v2, :cond_41

    :try_start_3e
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    :cond_41
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "width"

    iget v13, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "height"

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_6c} :catch_6d

    goto :goto_4a

    :catch_6d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_74
    move-exception v0

    :try_start_75
    const-string v4, "anLive"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Failed to open "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", skipping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_75 .. :try_end_8f} :catchall_99

    if-eqz v2, :cond_94

    :try_start_91
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    :cond_94
    :goto_94
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_c

    :catchall_99
    move-exception v0

    if-eqz v2, :cond_9f

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    :cond_9f
    throw v0

    :cond_a0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v2, v3

    move v4, v3

    :goto_a6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v13, 0x0

    aget v13, v0, v13

    if-ne v13, v15, :cond_bd

    const/4 v13, 0x1

    aget v13, v0, v13

    if-ne v13, v15, :cond_bd

    move v4, v1

    :cond_bd
    const/4 v13, 0x0

    aget v13, v0, v13

    if-ne v13, v14, :cond_15b

    const/4 v13, 0x1

    aget v0, v0, v13

    if-ne v0, v14, :cond_15b

    move v0, v1

    :goto_c8
    move v2, v0

    goto :goto_a6

    :cond_ca
    if-eqz v4, :cond_fa

    if-nez v2, :cond_fa

    const-string v0, "anLive"

    const-string v2, "Adding 15 fps support"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v4, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x3a98

    aput v2, v4, v0

    const/4 v0, 0x1

    const/16 v2, 0x3a98

    aput v2, v4, v0

    move v2, v3

    :goto_e3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_fa

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v12, 0x1

    aget v0, v0, v12

    const/4 v12, 0x1

    aget v12, v4, v12

    if-le v0, v12, :cond_128

    invoke-interface {v10, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_fa
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_103
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "min_mfps"

    const/4 v13, 0x0

    aget v13, v0, v13

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "max_mfps"

    const/4 v13, 0x1

    aget v0, v0, v13

    invoke-virtual {v10, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_103

    :cond_128
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e3

    :cond_12c
    const-string v0, "name"

    invoke-virtual {v9, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "front_facing"

    invoke-static {v7}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->isFrontFacing(Landroid/hardware/Camera$CameraInfo;)Z

    move-result v4

    invoke-virtual {v9, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "orientation"

    iget v7, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "sizes"

    invoke-virtual {v0, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "mfpsRanges"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_94

    :cond_150
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "anLive"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catch Lorg/json/JSONException; {:try_start_91 .. :try_end_15a} :catch_6d

    return-object v0

    :cond_15b
    move v0, v2

    goto/16 :goto_c8
.end method

.method private static isFrontFacing(Landroid/hardware/Camera$CameraInfo;)Z
    .registers 3
    .param p0, "info"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
