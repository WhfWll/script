.class public final Lcm;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static a:Ljava/lang/String;

.field public static final b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    const-string v0, "10.1.215.152:3002"

    sput-object v0, Lcm;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcm;->a:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcm;->b:Ljava/lang/Boolean;

    return-void
.end method
