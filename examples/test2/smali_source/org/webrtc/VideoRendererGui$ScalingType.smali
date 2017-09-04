.class public final enum Lorg/webrtc/VideoRendererGui$ScalingType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/VideoRendererGui$ScalingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/VideoRendererGui$ScalingType;

.field public static final enum SCALE_ASPECT_FILL:Lorg/webrtc/VideoRendererGui$ScalingType;

.field public static final enum SCALE_ASPECT_FIT:Lorg/webrtc/VideoRendererGui$ScalingType;

.field public static final enum SCALE_FILL:Lorg/webrtc/VideoRendererGui$ScalingType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/webrtc/VideoRendererGui$ScalingType;

    const-string v1, "SCALE_ASPECT_FIT"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/VideoRendererGui$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/VideoRendererGui$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/VideoRendererGui$ScalingType;

    new-instance v0, Lorg/webrtc/VideoRendererGui$ScalingType;

    const-string v1, "SCALE_ASPECT_FILL"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/VideoRendererGui$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/VideoRendererGui$ScalingType;->SCALE_ASPECT_FILL:Lorg/webrtc/VideoRendererGui$ScalingType;

    new-instance v0, Lorg/webrtc/VideoRendererGui$ScalingType;

    const-string v1, "SCALE_FILL"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/VideoRendererGui$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/VideoRendererGui$ScalingType;->SCALE_FILL:Lorg/webrtc/VideoRendererGui$ScalingType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/VideoRendererGui$ScalingType;

    sget-object v1, Lorg/webrtc/VideoRendererGui$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/VideoRendererGui$ScalingType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/VideoRendererGui$ScalingType;->SCALE_ASPECT_FILL:Lorg/webrtc/VideoRendererGui$ScalingType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/VideoRendererGui$ScalingType;->SCALE_FILL:Lorg/webrtc/VideoRendererGui$ScalingType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/VideoRendererGui$ScalingType;->$VALUES:[Lorg/webrtc/VideoRendererGui$ScalingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/VideoRendererGui$ScalingType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lorg/webrtc/VideoRendererGui$ScalingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$ScalingType;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/VideoRendererGui$ScalingType;
    .registers 1

    sget-object v0, Lorg/webrtc/VideoRendererGui$ScalingType;->$VALUES:[Lorg/webrtc/VideoRendererGui$ScalingType;

    invoke-virtual {v0}, [Lorg/webrtc/VideoRendererGui$ScalingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/VideoRendererGui$ScalingType;

    return-object v0
.end method
