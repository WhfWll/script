.class final enum Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

.field public static final enum RENDERER_TEXTURE:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

.field public static final enum RENDERER_YUV:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    const-string v1, "RENDERER_YUV"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->RENDERER_YUV:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    new-instance v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    const-string v1, "RENDERER_TEXTURE"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->RENDERER_TEXTURE:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    sget-object v1, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->RENDERER_YUV:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->RENDERER_TEXTURE:Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->$VALUES:[Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;
    .registers 1

    sget-object v0, Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->$VALUES:[Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    invoke-virtual {v0}, [Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/VideoRendererGui$YuvImageRenderer$RendererType;

    return-object v0
.end method
