.class synthetic Lorg/apache/cordova/AudioPlayer$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$cordova$AudioPlayer$MODE:[I

.field static final synthetic $SwitchMap$org$apache$cordova$AudioPlayer$STATE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 466
    invoke-static {}, Lorg/apache/cordova/AudioPlayer$STATE;->values()[Lorg/apache/cordova/AudioPlayer$STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$STATE:[I

    :try_start_9
    sget-object v0, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$STATE:[I

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_NONE:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v1}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_86

    :goto_14
    :try_start_14
    sget-object v0, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$STATE:[I

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_LOADING:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v1}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_84

    :goto_1f
    :try_start_1f
    sget-object v0, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$STATE:[I

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STARTING:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v1}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_82

    :goto_2a
    :try_start_2a
    sget-object v0, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$STATE:[I

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v1}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_80

    :goto_35
    :try_start_35
    sget-object v0, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$STATE:[I

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_PAUSED:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v1}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_7e

    :goto_40
    :try_start_40
    sget-object v0, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$STATE:[I

    sget-object v1, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_STOPPED:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v1}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_7c

    .line 133
    :goto_4b
    invoke-static {}, Lorg/apache/cordova/AudioPlayer$MODE;->values()[Lorg/apache/cordova/AudioPlayer$MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$MODE:[I

    :try_start_54
    sget-object v0, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$MODE:[I

    sget-object v1, Lorg/apache/cordova/AudioPlayer$MODE;->PLAY:Lorg/apache/cordova/AudioPlayer$MODE;

    invoke-virtual {v1}, Lorg/apache/cordova/AudioPlayer$MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_7a

    :goto_5f
    :try_start_5f
    sget-object v0, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$MODE:[I

    sget-object v1, Lorg/apache/cordova/AudioPlayer$MODE;->NONE:Lorg/apache/cordova/AudioPlayer$MODE;

    invoke-virtual {v1}, Lorg/apache/cordova/AudioPlayer$MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_78

    :goto_6a
    :try_start_6a
    sget-object v0, Lorg/apache/cordova/AudioPlayer$1;->$SwitchMap$org$apache$cordova$AudioPlayer$MODE:[I

    sget-object v1, Lorg/apache/cordova/AudioPlayer$MODE;->RECORD:Lorg/apache/cordova/AudioPlayer$MODE;

    invoke-virtual {v1}, Lorg/apache/cordova/AudioPlayer$MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_76

    :goto_75
    return-void

    :catch_76
    move-exception v0

    goto :goto_75

    :catch_78
    move-exception v0

    goto :goto_6a

    :catch_7a
    move-exception v0

    goto :goto_5f

    .line 466
    :catch_7c
    move-exception v0

    goto :goto_4b

    :catch_7e
    move-exception v0

    goto :goto_40

    :catch_80
    move-exception v0

    goto :goto_35

    :catch_82
    move-exception v0

    goto :goto_2a

    :catch_84
    move-exception v0

    goto :goto_1f

    :catch_86
    move-exception v0

    goto :goto_14
.end method
