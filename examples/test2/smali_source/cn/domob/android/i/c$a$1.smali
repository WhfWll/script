.class Lcn/domob/android/i/c$a$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/i/c$a;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/location/LocationManager;

.field final synthetic b:Landroid/location/LocationListener;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/domob/android/i/c$a;


# direct methods
.method constructor <init>(Lcn/domob/android/i/c$a;Landroid/location/LocationManager;Landroid/location/LocationListener;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 815
    iput-object p1, p0, Lcn/domob/android/i/c$a$1;->d:Lcn/domob/android/i/c$a;

    iput-object p2, p0, Lcn/domob/android/i/c$a$1;->a:Landroid/location/LocationManager;

    iput-object p3, p0, Lcn/domob/android/i/c$a$1;->b:Landroid/location/LocationListener;

    iput-object p4, p0, Lcn/domob/android/i/c$a$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 818
    iget-object v0, p0, Lcn/domob/android/i/c$a$1;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcn/domob/android/i/c$a$1;->b:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 819
    invoke-static {}, Lcn/domob/android/i/c;->i()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/i/c$a$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stop listening position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 820
    return-void
.end method
