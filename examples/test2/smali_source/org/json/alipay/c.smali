.class public Lorg/json/alipay/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/json/alipay/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/json/alipay/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/json/alipay/c$a;-><init>(B)V

    sput-object v0, Lorg/json/alipay/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/json/alipay/c;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lorg/json/alipay/d;

    invoke-direct {v0, p1}, Lorg/json/alipay/d;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/alipay/c;-><init>(Lorg/json/alipay/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_a
    iput-object p1, p0, Lorg/json/alipay/c;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/json/alipay/d;)V
    .registers 5

    invoke-direct {p0}, Lorg/json/alipay/c;-><init>()V

    invoke-virtual {p1}, Lorg/json/alipay/d;->c()C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_15

    const-string v0, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p1, v0}, Lorg/json/alipay/d;->a(Ljava/lang/String;)Lorg/json/alipay/a;

    move-result-object v0

    throw v0

    :cond_12
    invoke-virtual {p1}, Lorg/json/alipay/d;->a()V

    :cond_15
    invoke-virtual {p1}, Lorg/json/alipay/d;->c()C

    move-result v0

    sparse-switch v0, :sswitch_data_82

    invoke-virtual {p1}, Lorg/json/alipay/d;->a()V

    invoke-virtual {p1}, Lorg/json/alipay/d;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/alipay/d;->c()C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_4f

    invoke-virtual {p1}, Lorg/json/alipay/d;->b()C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_3a

    invoke-virtual {p1}, Lorg/json/alipay/d;->a()V

    :cond_3a
    invoke-virtual {p1}, Lorg/json/alipay/d;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_5a

    new-instance v0, Lorg/json/alipay/a;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lorg/json/alipay/a;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_48
    const-string v0, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v0}, Lorg/json/alipay/d;->a(Ljava/lang/String;)Lorg/json/alipay/a;

    move-result-object v0

    throw v0

    :cond_4f
    const/16 v2, 0x3a

    if-eq v1, v2, :cond_3a

    const-string v0, "Expected a \':\' after a key"

    invoke-virtual {p1, v0}, Lorg/json/alipay/d;->a(Ljava/lang/String;)Lorg/json/alipay/a;

    move-result-object v0

    throw v0

    :cond_5a
    if-eqz v1, :cond_72

    invoke-static {v1}, Lorg/json/alipay/c;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/json/alipay/c;->b:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_64
    invoke-virtual {p1}, Lorg/json/alipay/d;->c()C

    move-result v0

    sparse-switch v0, :sswitch_data_8c

    const-string v0, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v0}, Lorg/json/alipay/d;->a(Ljava/lang/String;)Lorg/json/alipay/a;

    move-result-object v0

    throw v0

    :cond_72
    iget-object v1, p0, Lorg/json/alipay/c;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :sswitch_78
    invoke-virtual {p1}, Lorg/json/alipay/d;->c()C

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_12

    :sswitch_80
    return-void

    nop

    :sswitch_data_82
    .sparse-switch
        0x0 -> :sswitch_48
        0x7d -> :sswitch_80
    .end sparse-switch

    :sswitch_data_8c
    .sparse-switch
        0x2c -> :sswitch_78
        0x3b -> :sswitch_78
        0x7d -> :sswitch_80
    .end sparse-switch
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    const-string v0, "null"

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_62

    check-cast p0, Ljava/lang/Number;

    if-nez p0, :cond_1d

    new-instance v0, Lorg/json/alipay/a;

    const-string v1, "Null pointer"

    invoke-direct {v0, v1}, Lorg/json/alipay/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-static {p0}, Lorg/json/alipay/c;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_c

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_c

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_c

    :goto_3c
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_4f
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_62
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_6e

    instance-of v0, p0, Lorg/json/alipay/c;

    if-nez v0, :cond_6e

    instance-of v0, p0, Lorg/json/alipay/b;

    if-eqz v0, :cond_73

    :cond_6e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_73
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_83

    new-instance v0, Lorg/json/alipay/c;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lorg/json/alipay/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/alipay/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_83
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_94

    new-instance v0, Lorg/json/alipay/b;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Lorg/json/alipay/b;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/alipay/b;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :cond_94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a9

    new-instance v0, Lorg/json/alipay/b;

    invoke-direct {v0, p0}, Lorg/json/alipay/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/alipay/b;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :cond_a9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/alipay/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c
.end method

.method private static b(Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_3c

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1f

    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_17

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_17
    new-instance v0, Lorg/json/alipay/a;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lorg/json/alipay/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3c

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_34

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_34
    new-instance v0, Lorg/json/alipay/a;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lorg/json/alipay/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v8, 0x5c

    const/16 v7, 0x22

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    :cond_d
    const-string v0, "\"\""

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x4

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v0

    :goto_1f
    if-ge v0, v3, :cond_a3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_ac

    const/16 v1, 0x20

    if-lt v2, v1, :cond_3c

    const/16 v1, 0x80

    if-lt v2, v1, :cond_34

    const/16 v1, 0xa0

    if-lt v2, v1, :cond_3c

    :cond_34
    const/16 v1, 0x2000

    if-lt v2, v1, :cond_9f

    const/16 v1, 0x2100

    if-ge v2, v1, :cond_9f

    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "000"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\\u"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_6b
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1f

    :sswitch_6f
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6b

    :sswitch_76
    const/16 v5, 0x3c

    if-ne v1, v5, :cond_7d

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6b

    :sswitch_81
    const-string v1, "\\b"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6b

    :sswitch_87
    const-string v1, "\\t"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6b

    :sswitch_8d
    const-string v1, "\\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6b

    :sswitch_93
    const-string v1, "\\f"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6b

    :sswitch_99
    const-string v1, "\\r"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6b

    :cond_9f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6b

    :cond_a3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :sswitch_data_ac
    .sparse-switch
        0x8 -> :sswitch_81
        0x9 -> :sswitch_87
        0xa -> :sswitch_8d
        0xc -> :sswitch_93
        0xd -> :sswitch_99
        0x22 -> :sswitch_6f
        0x2f -> :sswitch_76
        0x5c -> :sswitch_6f
    .end sparse-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    if-nez p1, :cond_24

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_2b

    new-instance v0, Lorg/json/alipay/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/json/alipay/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/alipay/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget-object v0, p0, Lorg/json/alipay/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_2b
    return-object v0
.end method

.method public final a()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/json/alipay/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/json/alipay/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lorg/json/alipay/c;->a()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1d

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json/alipay/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/json/alipay/c;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/json/alipay/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    :catch_3f
    move-exception v0

    const/4 v0, 0x0

    :goto_41
    return-object v0

    :cond_42
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_3f

    move-result-object v0

    goto :goto_41
.end method
