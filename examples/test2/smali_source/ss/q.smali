.class public interface abstract Lss/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lss/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lss/r;

    invoke-direct {v0}, Lss/r;-><init>()V

    sput-object v0, Lss/q;->a:Lss/q;

    return-void
.end method


# virtual methods
.method public abstract a(Lss/y;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/y;",
            ")",
            "Ljava/util/List",
            "<",
            "Lss/p;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lss/y;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/y;",
            "Ljava/util/List",
            "<",
            "Lss/p;",
            ">;)V"
        }
    .end annotation
.end method
