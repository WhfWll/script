.class Lcn/domob/android/i/e$a$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/i/e$a;->a(Landroid/location/LocationManager;Lcn/domob/android/i/e$a$b;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/domob/android/i/e$a$b;

.field final synthetic c:Landroid/location/LocationManager;

.field final synthetic d:Lcn/domob/android/i/e$a;


# direct methods
.method constructor <init>(Lcn/domob/android/i/e$a;Ljava/lang/String;Lcn/domob/android/i/e$a$b;Landroid/location/LocationManager;)V
    .registers 5

    .prologue
    .line 258
    iput-object p1, p0, Lcn/domob/android/i/e$a$1;->d:Lcn/domob/android/i/e$a;

    iput-object p2, p0, Lcn/domob/android/i/e$a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/domob/android/i/e$a$1;->b:Lcn/domob/android/i/e$a$b;

    iput-object p4, p0, Lcn/domob/android/i/e$a$1;->c:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 261
    iget-object v0, p0, Lcn/domob/android/i/e$a$1;->a:Ljava/lang/String;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 262
    iget-object v0, p0, Lcn/domob/android/i/e$a$1;->d:Lcn/domob/android/i/e$a;

    iget-object v1, p0, Lcn/domob/android/i/e$a$1;->b:Lcn/domob/android/i/e$a$b;

    invoke-static {v0, v1}, Lcn/domob/android/i/e$a;->a(Lcn/domob/android/i/e$a;Lcn/domob/android/i/e$a$b;)V

    .line 264
    :cond_11
    iget-object v0, p0, Lcn/domob/android/i/e$a$1;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcn/domob/android/i/e$a$1;->b:Lcn/domob/android/i/e$a$b;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 265
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove the listener of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/i/e$a$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 266
    return-void
.end method
