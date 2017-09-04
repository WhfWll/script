.class public final Ljr;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public a:Ljs;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljs;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljr;->a:Ljs;

    iput-object p1, p0, Ljr;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljr;->a:Ljava/lang/String;

    return-object v0
.end method
