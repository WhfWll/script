.class Lcn/domob/android/offerwall/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/offerwall/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/offerwall/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/offerwall/h;


# direct methods
.method constructor <init>(Lcn/domob/android/offerwall/h;)V
    .registers 2

    iput-object p1, p0, Lcn/domob/android/offerwall/h$1;->a:Lcn/domob/android/offerwall/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/offerwall/k;)V
    .registers 5

    invoke-static {}, Lcn/domob/android/offerwall/h;->d()Lcn/domob/android/offerwall/m;

    move-result-object v0

    const-string v1, "Offer Info Request Finished."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_3c

    invoke-static {}, Lcn/domob/android/offerwall/h;->d()Lcn/domob/android/offerwall/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomobOfferResponse to String: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/android/offerwall/k;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/h$1;->a:Lcn/domob/android/offerwall/h;

    invoke-static {v0, p1}, Lcn/domob/android/offerwall/h;->a(Lcn/domob/android/offerwall/h;Lcn/domob/android/offerwall/k;)Lcn/domob/android/offerwall/k;

    iget-object v0, p0, Lcn/domob/android/offerwall/h$1;->a:Lcn/domob/android/offerwall/h;

    invoke-static {v0}, Lcn/domob/android/offerwall/h;->a(Lcn/domob/android/offerwall/h;)Lcn/domob/android/offerwall/DomobOfferWallView;

    move-result-object v0

    invoke-virtual {p1}, Lcn/domob/android/offerwall/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/DomobOfferWallView;->a(Ljava/lang/String;)V

    :goto_3b
    return-void

    :cond_3c
    invoke-static {}, Lcn/domob/android/offerwall/h;->d()Lcn/domob/android/offerwall/m;

    move-result-object v0

    const-string v1, "Response is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/h$1;->a:Lcn/domob/android/offerwall/h;

    invoke-static {v0}, Lcn/domob/android/offerwall/h;->a(Lcn/domob/android/offerwall/h;)Lcn/domob/android/offerwall/DomobOfferWallView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/offerwall/DomobOfferWallView;->a()V

    goto :goto_3b
.end method