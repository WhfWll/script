.class public final Lga;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final a:Ljava/io/InputStream;

.field private final a:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-static {p1}, Lid;->a(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lga;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga;->a:Ljava/io/InputStream;

    iput p2, p0, Lga;->a:I

    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lga;->a:[[B

    return-void
.end method


# virtual methods
.method public final a()Lfg;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lga;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lga;->a:Ljava/io/InputStream;

    instance-of v0, v0, Lhy;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lga;->a:Ljava/io/InputStream;

    check-cast v0, Lhy;

    invoke-virtual {v0, v2}, Lhy;->a(Z)V

    :cond_1a
    iget-object v0, p0, Lga;->a:Ljava/io/InputStream;

    invoke-static {v0, v3}, Lfl;->a(Ljava/io/InputStream;I)I

    move-result v4

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_39

    move v0, v1

    :goto_25
    iget-object v2, p0, Lga;->a:Ljava/io/InputStream;

    iget v5, p0, Lga;->a:I

    invoke-static {v2, v5}, Lfl;->b(Ljava/io/InputStream;I)I

    move-result v2

    if-gez v2, :cond_94

    if-nez v0, :cond_3b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    move v0, v2

    goto :goto_25

    :cond_3b
    new-instance v0, Lhy;

    iget-object v2, p0, Lga;->a:Ljava/io/InputStream;

    iget v5, p0, Lga;->a:I

    invoke-direct {v0, v2, v5}, Lhy;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Lga;

    iget v5, p0, Lga;->a:I

    invoke-direct {v2, v0, v5}, Lga;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_55

    new-instance v0, Lfd;

    invoke-direct {v0, v4, v2}, Lfd;-><init>(ILga;)V

    goto :goto_c

    :cond_55
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_5f

    new-instance v0, Lgn;

    invoke-direct {v0, v1, v4, v2}, Lgn;-><init>(ZILga;)V

    goto :goto_c

    :cond_5f
    sparse-switch v4, :sswitch_data_128

    new-instance v0, Lfj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown BER object encountered: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfj;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_7b
    new-instance v0, Lgv;

    invoke-direct {v0, v2}, Lgv;-><init>(Lga;)V

    goto :goto_c

    :sswitch_81
    new-instance v0, Lgh;

    invoke-direct {v0, v2}, Lgh;-><init>(Lga;)V

    goto :goto_c

    :sswitch_87
    new-instance v0, Lgj;

    invoke-direct {v0, v2}, Lgj;-><init>(Lga;)V

    goto :goto_c

    :sswitch_8d
    new-instance v0, Lgl;

    invoke-direct {v0, v2}, Lgl;-><init>(Lga;)V

    goto/16 :goto_c

    :cond_94
    new-instance v5, Lhw;

    iget-object v1, p0, Lga;->a:Ljava/io/InputStream;

    invoke-direct {v5, v1, v2}, Lhw;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v1, v3, 0x40

    if-eqz v1, :cond_ab

    new-instance v1, Lgp;

    invoke-virtual {v5}, Lhw;->a()[B

    move-result-object v2

    invoke-direct {v1, v0, v4, v2}, Lgp;-><init>(ZI[B)V

    move-object v0, v1

    goto/16 :goto_c

    :cond_ab
    and-int/lit16 v1, v3, 0x80

    if-eqz v1, :cond_bc

    new-instance v1, Lgn;

    new-instance v2, Lga;

    invoke-direct {v2, v5}, Lga;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0, v4, v2}, Lgn;-><init>(ZILga;)V

    move-object v0, v1

    goto/16 :goto_c

    :cond_bc
    if-eqz v0, :cond_10c

    sparse-switch v4, :sswitch_data_13a

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_dc
    new-instance v0, Lgh;

    new-instance v1, Lga;

    invoke-direct {v1, v5}, Lga;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lgh;-><init>(Lga;)V

    goto/16 :goto_c

    :sswitch_e8
    new-instance v0, Lhj;

    new-instance v1, Lga;

    invoke-direct {v1, v5}, Lga;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lhj;-><init>(Lga;)V

    goto/16 :goto_c

    :sswitch_f4
    new-instance v0, Lhl;

    new-instance v1, Lga;

    invoke-direct {v1, v5}, Lga;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lhl;-><init>(Lga;)V

    goto/16 :goto_c

    :sswitch_100
    new-instance v0, Lgv;

    new-instance v1, Lga;

    invoke-direct {v1, v5}, Lga;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lgv;-><init>(Lga;)V

    goto/16 :goto_c

    :cond_10c
    packed-switch v4, :pswitch_data_14c

    :try_start_10f
    iget-object v0, p0, Lga;->a:[[B

    invoke-static {v4, v5, v0}, Lfl;->a(ILhw;[[B)Lfv;
    :try_end_114
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10f .. :try_end_114} :catch_11e

    move-result-object v0

    goto/16 :goto_c

    :pswitch_117
    new-instance v0, Lhf;

    invoke-direct {v0, v5}, Lhf;-><init>(Lhw;)V

    goto/16 :goto_c

    :catch_11e
    move-exception v0

    new-instance v1, Lfj;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lfj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :sswitch_data_128
    .sparse-switch
        0x4 -> :sswitch_81
        0x8 -> :sswitch_7b
        0x10 -> :sswitch_87
        0x11 -> :sswitch_8d
    .end sparse-switch

    :sswitch_data_13a
    .sparse-switch
        0x4 -> :sswitch_dc
        0x8 -> :sswitch_100
        0x10 -> :sswitch_e8
        0x11 -> :sswitch_f4
    .end sparse-switch

    :pswitch_data_14c
    .packed-switch 0x4
        :pswitch_117
    .end packed-switch
.end method

.method final a()Lfh;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lfh;

    invoke-direct {v1}, Lfh;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lga;->a()Lfg;

    move-result-object v0

    if-eqz v0, :cond_21

    instance-of v2, v0, Lhx;

    if-eqz v2, :cond_19

    check-cast v0, Lhx;

    invoke-interface {v0}, Lhx;->a()Lfv;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfh;->a(Lfg;)V

    goto :goto_5

    :cond_19
    invoke-interface {v0}, Lfg;->b()Lfv;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfh;->a(Lfg;)V

    goto :goto_5

    :cond_21
    return-object v1
.end method

.method final a(ZI)Lfv;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_18

    iget-object v0, p0, Lga;->a:Ljava/io/InputStream;

    check-cast v0, Lhw;

    new-instance v1, Lhn;

    new-instance v2, Lhe;

    invoke-virtual {v0}, Lhw;->a()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lhe;-><init>([B)V

    invoke-direct {v1, v3, p2, v2}, Lhn;-><init>(ZILfg;)V

    move-object v0, v1

    :goto_17
    return-object v0

    :cond_18
    invoke-virtual {p0}, Lga;->a()Lfh;

    move-result-object v1

    iget-object v0, p0, Lga;->a:Ljava/io/InputStream;

    instance-of v0, v0, Lhy;

    if-eqz v0, :cond_3e

    iget-object v0, v1, Lfh;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v2, :cond_34

    new-instance v0, Lgm;

    invoke-virtual {v1, v3}, Lfh;->a(I)Lfg;

    move-result-object v1

    invoke-direct {v0, v2, p2, v1}, Lgm;-><init>(ZILfg;)V

    goto :goto_17

    :cond_34
    new-instance v0, Lgm;

    invoke-static {v1}, Lge;->a(Lfh;)Lgi;

    move-result-object v1

    invoke-direct {v0, v3, p2, v1}, Lgm;-><init>(ZILfg;)V

    goto :goto_17

    :cond_3e
    iget-object v0, v1, Lfh;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v2, :cond_50

    new-instance v0, Lhn;

    invoke-virtual {v1, v3}, Lfh;->a(I)Lfg;

    move-result-object v1

    invoke-direct {v0, v2, p2, v1}, Lhn;-><init>(ZILfg;)V

    goto :goto_17

    :cond_50
    new-instance v0, Lhn;

    invoke-static {v1}, Lgw;->a(Lfh;)Lfw;

    move-result-object v1

    invoke-direct {v0, v3, p2, v1}, Lhn;-><init>(ZILfg;)V

    goto :goto_17
.end method
