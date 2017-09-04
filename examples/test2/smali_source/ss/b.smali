.class public interface abstract Lss/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lss/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lss/c;

    invoke-direct {v0}, Lss/c;-><init>()V

    sput-object v0, Lss/b;->a:Lss/b;

    return-void
.end method


# virtual methods
.method public abstract a(Lss/an;Lss/ak;)Lss/ag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
