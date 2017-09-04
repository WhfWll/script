.class Lcn/domob/android/ads/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/b;->a(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/b;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/b;)V
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Lcn/domob/android/ads/a/b$2;->a:Lcn/domob/android/ads/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcn/domob/android/ads/a/b$2;->a:Lcn/domob/android/ads/a/b;

    invoke-static {v0}, Lcn/domob/android/ads/a/b;->c(Lcn/domob/android/ads/a/b;)Z

    .line 233
    return-void
.end method
