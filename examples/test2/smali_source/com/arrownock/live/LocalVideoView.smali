.class public Lcom/arrownock/live/LocalVideoView;
.super Lcom/arrownock/live/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/arrownock/live/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method
