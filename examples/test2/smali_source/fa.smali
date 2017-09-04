.class final Lfa;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/io/InputStream;

.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lfa;->a:Ljava/lang/String;

    return-void
.end method
