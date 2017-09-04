.class public final Lic;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lic;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lic;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    const/4 v3, -0x1

    iget v0, p0, Lic;->a:I

    if-ne v0, v3, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lic;->a:Ljava/lang/String;

    const/16 v1, 0x2e

    iget v2, p0, Lic;->a:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v3, :cond_1e

    iget-object v0, p0, Lic;->a:Ljava/lang/String;

    iget v1, p0, Lic;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput v3, p0, Lic;->a:I

    goto :goto_6

    :cond_1e
    iget-object v0, p0, Lic;->a:Ljava/lang/String;

    iget v2, p0, Lic;->a:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lic;->a:I

    goto :goto_6
.end method
