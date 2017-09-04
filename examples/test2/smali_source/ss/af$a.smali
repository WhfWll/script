.class Lss/af$a;
.super Ljava/lang/Object;

# interfaces
.implements Lss/aa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lss/af;

.field private final b:I

.field private final c:Lss/ag;

.field private final d:Z


# direct methods
.method constructor <init>(Lss/af;ILss/ag;Z)V
    .registers 5

    iput-object p1, p0, Lss/af$a;->a:Lss/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lss/af$a;->b:I

    iput-object p3, p0, Lss/af$a;->c:Lss/ag;

    iput-boolean p4, p0, Lss/af$a;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lss/ag;
    .registers 2

    iget-object v0, p0, Lss/af$a;->c:Lss/ag;

    return-object v0
.end method

.method public a(Lss/ag;)Lss/ak;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/af$a;->b:I

    iget-object v1, p0, Lss/af$a;->a:Lss/af;

    invoke-static {v1}, Lss/af;->a(Lss/af;)Lss/ac;

    move-result-object v1

    invoke-virtual {v1}, Lss/ac;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    new-instance v1, Lss/af$a;

    iget-object v0, p0, Lss/af$a;->a:Lss/af;

    iget v2, p0, Lss/af$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lss/af$a;->d:Z

    invoke-direct {v1, v0, v2, p1, v3}, Lss/af$a;-><init>(Lss/af;ILss/ag;Z)V

    iget-object v0, p0, Lss/af$a;->a:Lss/af;

    invoke-static {v0}, Lss/af;->a(Lss/af;)Lss/ac;

    move-result-object v0

    invoke-virtual {v0}, Lss/ac;->v()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lss/af$a;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/aa;

    invoke-interface {v0, v1}, Lss/aa;->a(Lss/aa$a;)Lss/ak;

    move-result-object v1

    if-nez v1, :cond_56

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "application interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returned null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_56
    move-object v0, v1

    :goto_57
    return-object v0

    :cond_58
    iget-object v0, p0, Lss/af$a;->a:Lss/af;

    iget-boolean v1, p0, Lss/af$a;->d:Z

    invoke-virtual {v0, p1, v1}, Lss/af;->a(Lss/ag;Z)Lss/ak;

    move-result-object v0

    goto :goto_57
.end method
