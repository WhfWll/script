.class Lcn/domob/android/ads/g$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/g;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/g;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/g;)V
    .registers 2

    .prologue
    .line 1078
    iput-object p1, p0, Lcn/domob/android/ads/g$4;->a:Lcn/domob/android/ads/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/a/a/a/a/e;)V
    .registers 4

    .prologue
    .line 1082
    iget-object v0, p0, Lcn/domob/android/ads/g$4;->a:Lcn/domob/android/ads/g;

    const-string v1, "reso_dl_succ"

    invoke-virtual {v0, v1, p1}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;La/a/a/a/a/e;)V

    .line 1083
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1113
    iget-object v0, p0, Lcn/domob/android/ads/g$4;->a:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/g$4;->a:Lcn/domob/android/ads/g;

    iget-object v1, v1, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/j;

    const-string v2, "cached_reso_not_exist"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method public b(La/a/a/a/a/e;)V
    .registers 4

    .prologue
    .line 1087
    iget-object v0, p0, Lcn/domob/android/ads/g$4;->a:Lcn/domob/android/ads/g;

    const-string v1, "resog_dl_succ"

    invoke-virtual {v0, v1, p1}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;La/a/a/a/a/e;)V

    .line 1088
    return-void
.end method

.method public c(La/a/a/a/a/e;)V
    .registers 4

    .prologue
    .line 1092
    iget-object v0, p0, Lcn/domob/android/ads/g$4;->a:Lcn/domob/android/ads/g;

    const-string v1, "reso_dl_failed_process_error"

    invoke-virtual {v0, v1, p1}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;La/a/a/a/a/e;)V

    .line 1093
    return-void
.end method

.method public d(La/a/a/a/a/e;)V
    .registers 4

    .prologue
    .line 1097
    iget-object v0, p0, Lcn/domob/android/ads/g$4;->a:Lcn/domob/android/ads/g;

    const-string v1, "reso_dl_failed_space_not_enough"

    invoke-virtual {v0, v1, p1}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;La/a/a/a/a/e;)V

    .line 1098
    return-void
.end method

.method public e(La/a/a/a/a/e;)V
    .registers 4

    .prologue
    .line 1102
    iget-object v0, p0, Lcn/domob/android/ads/g$4;->a:Lcn/domob/android/ads/g;

    const-string v1, "reso_dl_failed_no_sd"

    invoke-virtual {v0, v1, p1}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;La/a/a/a/a/e;)V

    .line 1103
    return-void
.end method

.method public f(La/a/a/a/a/e;)V
    .registers 4

    .prologue
    .line 1107
    iget-object v0, p0, Lcn/domob/android/ads/g$4;->a:Lcn/domob/android/ads/g;

    const-string v1, "reso_dl_failed_conn_error"

    invoke-virtual {v0, v1, p1}, Lcn/domob/android/ads/g;->a(Ljava/lang/String;La/a/a/a/a/e;)V

    .line 1108
    return-void
.end method
