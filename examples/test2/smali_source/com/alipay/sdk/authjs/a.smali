.class public final Lcom/alipay/sdk/authjs/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/authjs/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "CallInfo"

.field public static final b:Ljava/lang/String; = "call"

.field public static final c:Ljava/lang/String; = "callback"

.field public static final d:Ljava/lang/String; = "bundleName"

.field public static final e:Ljava/lang/String; = "clientId"

.field public static final f:Ljava/lang/String; = "param"

.field public static final g:Ljava/lang/String; = "func"

.field public static final h:Ljava/lang/String; = "msgType"


# instance fields
.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Lorg/json/JSONObject;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/authjs/a;

    const v1, 0x8e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/authjs/a;->n:Z

    iput-object p1, p0, Lcom/alipay/sdk/authjs/a;->l:Ljava/lang/String;

    return-void
.end method

.method private static native a(Lcom/alipay/sdk/authjs/a$a;)Ljava/lang/String;
.end method

.method private native a(Ljava/lang/String;)V
.end method

.method private native a(Lorg/json/JSONObject;)V
.end method

.method private native a(Z)V
.end method

.method private native a()Z
.end method

.method private native b()Ljava/lang/String;
.end method

.method private native b(Ljava/lang/String;)V
.end method

.method private native c()Ljava/lang/String;
.end method

.method private native c(Ljava/lang/String;)V
.end method

.method private native d()Ljava/lang/String;
.end method

.method private native d(Ljava/lang/String;)V
.end method

.method private native e()Ljava/lang/String;
.end method

.method private native f()Lorg/json/JSONObject;
.end method

.method private native g()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
