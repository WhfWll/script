.class Lcn/domob/android/j/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/a;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/a;


# direct methods
.method constructor <init>(Lcn/domob/android/j/a;)V
    .registers 2

    .prologue
    .line 350
    iput-object p1, p0, Lcn/domob/android/j/a$8;->a:Lcn/domob/android/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 354
    invoke-static {}, Lcn/domob/android/j/a;->m()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "video play error"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcn/domob/android/j/a$8;->a:Lcn/domob/android/j/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/j/a;->a(Lcn/domob/android/j/a;Z)Z

    .line 358
    iget-object v0, p0, Lcn/domob/android/j/a$8;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->b(Lcn/domob/android/j/a;)V

    .line 359
    const/4 v0, 0x1

    return v0
.end method
