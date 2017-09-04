.class Lss/ss/ss/y;
.super Ljava/util/zip/Inflater;


# instance fields
.field final synthetic a:Lss/ss/ss/w;


# direct methods
.method constructor <init>(Lss/ss/ss/w;)V
    .registers 2

    iput-object p1, p0, Lss/ss/ss/y;->a:Lss/ss/ss/w;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lss/ss/ss/y;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v0, Lss/ss/ss/ad;->a:[B

    invoke-virtual {p0, v0}, Lss/ss/ss/y;->setDictionary([B)V

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    :cond_15
    return v0
.end method
