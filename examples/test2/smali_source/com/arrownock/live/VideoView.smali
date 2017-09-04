.class public Lcom/arrownock/live/VideoView;
.super Landroid/opengl/GLSurfaceView;


# instance fields
.field private a:I

.field private a:Lbj;

.field private a:Lct;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/live/VideoView;

    const v1, 0xd4

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/arrownock/live/VideoView;->a:Lbj;

    iput-object v1, p0, Lcom/arrownock/live/VideoView;->a:Lct;

    iput v0, p0, Lcom/arrownock/live/VideoView;->a:I

    iput v0, p0, Lcom/arrownock/live/VideoView;->b:I

    return-void
.end method


# virtual methods
.method public final native a(II)V
.end method

.method public final native a(Lbj;)V
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method protected native onSizeChanged(IIII)V
.end method

.method public native setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
.end method
