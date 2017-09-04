.class public abstract Lss/ss/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static b:Lss/ss/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lss/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lss/ss/d;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lss/ac;)Lss/ss/e;
.end method

.method public abstract a(Lss/l;)Lss/ss/i;
.end method

.method public abstract a(Lss/l;Lss/a;Lss/ss/gK/w;)Lss/ss/pK/c;
.end method

.method public abstract a(Lss/n;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract a(Lss/w$a;Ljava/lang/String;)V
.end method

.method public abstract a(Lss/l;Lss/ss/pK/c;)Z
.end method

.method public abstract b(Lss/l;Lss/ss/pK/c;)V
.end method
