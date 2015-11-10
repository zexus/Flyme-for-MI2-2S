.class Lmiui/maml/ActionCommand$ScreenElementMethodCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenElementMethodCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;
    }
.end annotation


# static fields
.field static PRIMITIVE_TYPE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final TAG_NAME:Ljava/lang/String; = "MethodCommand"


# instance fields
.field private mMethod:Ljava/lang/reflect/Method;

.field private mMethodName:Ljava/lang/String;

.field private mParamTypes:[Ljava/lang/String;

.field private mParamValueTypes:[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

.field private mParams:[Lmiui/maml/data/Expression;

.field private mReturnVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 1440
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    sget-object v0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    return-void
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 12
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1458
    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1459
    const-string v9, "method"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethodName:Ljava/lang/String;

    .line 1460
    const-string v9, "params"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1461
    .local v5, "params":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v9

    invoke-static {v9, v5}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    .line 1462
    const-string v9, "paramTypes"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1463
    .local v4, "paramTypes":Ljava/lang/String;
    const-string v9, ","

    invoke-static {v4, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    .line 1464
    iget-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    array-length v9, v9

    new-array v9, v9, [Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    iput-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamValueTypes:[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    .line 1465
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v1, v9, :cond_2

    .line 1466
    invoke-static {}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->values()[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    move-result-object v0

    .local v0, "arr$":[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 1467
    .local v7, "t":Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;
    iget-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v7}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1468
    iget-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamValueTypes:[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    aput-object v7, v9, v1

    .line 1466
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1465
    .end local v7    # "t":Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1472
    .end local v0    # "arr$":[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    const-string v9, "return"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1473
    .local v6, "returnVar":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1474
    const-string v9, "returnType"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v8

    .line 1475
    .local v8, "type":Lmiui/maml/data/VariableType;
    new-instance v9, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    invoke-virtual {v8}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v11

    invoke-direct {v9, v6, v10, v11}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v9, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    .line 1477
    .end local v8    # "type":Lmiui/maml/data/VariableType;
    :cond_3
    return-void
.end method

.method private final varargs findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1480
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1482
    .local v1, "m":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz p1, :cond_0

    .line 1484
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1486
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1496
    :cond_0
    :goto_1
    return-object v1

    .line 1488
    :catch_0
    move-exception v2

    .line 1489
    .local v2, "ne":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 1490
    goto :goto_0

    .line 1492
    .end local v2    # "ne":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1493
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ActionCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no such method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected doPerform()V
    .locals 10

    .prologue
    .line 1539
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getTarget()Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    .line 1540
    .local v4, "target":Lmiui/maml/elements/ScreenElement;
    if-nez v4, :cond_1

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    .line 1545
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    array-length v5, v5

    new-array v2, v5, [Ljava/lang/Object;

    .line 1546
    .local v2, "paramValues":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 1547
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamValueTypes:[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    aget-object v5, v5, v1

    if-nez v5, :cond_2

    .line 1548
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1546
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1551
    :cond_2
    sget-object v5, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$ScreenElementMethodCommand$ValueType:[I

    iget-object v6, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamValueTypes:[Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand$ValueType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 1553
    :pswitch_0
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    goto :goto_2

    .line 1557
    :pswitch_1
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    goto :goto_2

    .line 1560
    :pswitch_2
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v1

    goto :goto_2

    .line 1563
    :pswitch_3
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v1

    goto :goto_2

    .line 1566
    :pswitch_4
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-float v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v1

    goto :goto_2

    .line 1569
    :pswitch_5
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v5, v6

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v1

    goto :goto_2

    .line 1572
    :pswitch_6
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v5, v6

    int-to-short v5, v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v2, v1

    goto :goto_2

    .line 1575
    :pswitch_7
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_3

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v1

    goto/16 :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 1580
    :cond_4
    :try_start_0
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1581
    .local v3, "returnVal":Ljava/lang/Object;
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_0

    .line 1582
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 1584
    .end local v3    # "returnVal":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1585
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "ActionCommand"

    const-string v6, "illegal parameter"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1586
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1587
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "ActionCommand"

    const-string v6, "not accessible"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1588
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 1589
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "ActionCommand"

    const-string v6, "invoke exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public init()V
    .locals 8

    .prologue
    .line 1501
    invoke-super {p0}, Lmiui/maml/ActionCommand$TargetCommand;->init()V

    .line 1503
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    array-length v5, v5

    iget-object v6, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    array-length v6, v6

    if-ne v5, v6, :cond_1

    .line 1504
    iget-object v4, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    .line 1505
    .local v4, "target":Lmiui/maml/elements/ScreenElement;
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_0

    .line 1506
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mTargetArray:Lmiui/maml/elements/ElementGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lmiui/maml/elements/ElementGroup;->getChild(I)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    .line 1508
    :cond_0
    if-nez v4, :cond_2

    .line 1535
    .end local v4    # "target":Lmiui/maml/elements/ScreenElement;
    :cond_1
    :goto_0
    return-void

    .line 1511
    .restart local v4    # "target":Lmiui/maml/elements/ScreenElement;
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    .line 1512
    .local v2, "mTarget":Lmiui/maml/elements/ScreenElement;
    if-eqz v2, :cond_1

    .line 1514
    :try_start_0
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    array-length v5, v5

    new-array v3, v5, [Ljava/lang/Class;

    .line 1515
    .local v3, "paramClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 1516
    sget-object v5, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    iget-object v6, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1517
    sget-object v5, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    iget-object v6, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    aput-object v5, v3, v1

    .line 1515
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1519
    :cond_3
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    aget-object v5, v5, v1

    :goto_3
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1530
    .end local v1    # "i":I
    .end local v3    # "paramClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 1531
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "ActionCommand"

    const-string v6, "illegal paramTypes"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1519
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "i":I
    .restart local v3    # "paramClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "java.lang."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mParamTypes:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1523
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethodName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v3}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 1524
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_6

    .line 1525
    const-string v5, "ActionCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to find method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1526
    :cond_6
    iget-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1527
    const/4 v5, 0x0

    iput-object v5, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 1528
    const-string v5, "ActionCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;->mMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not accessible."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
