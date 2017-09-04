.class public interface abstract Lss/t;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lss/t;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lss/u;

    invoke-direct {v0}, Lss/u;-><init>()V

    sput-object v0, Lss/t;->a:Lss/t;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
