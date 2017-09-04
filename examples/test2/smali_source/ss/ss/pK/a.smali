.class public interface abstract Lss/ss/pK/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lss/ss/pK/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lss/ss/pK/b;

    invoke-direct {v0}, Lss/ss/pK/b;-><init>()V

    sput-object v0, Lss/ss/pK/a;->a:Lss/ss/pK/a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/io/File;)Z
.end method

.method public abstract c(Ljava/io/File;)J
.end method
