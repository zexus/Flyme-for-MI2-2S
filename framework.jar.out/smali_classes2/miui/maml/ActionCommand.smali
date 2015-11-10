.class public abstract Lmiui/maml/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$1;,
        Lmiui/maml/ActionCommand$LoopCommand;,
        Lmiui/maml/ActionCommand$MultiCommand;,
        Lmiui/maml/ActionCommand$ScreenElementMethodCommand;,
        Lmiui/maml/ActionCommand$ActionPerformCommand;,
        Lmiui/maml/ActionCommand$AnimationCommand;,
        Lmiui/maml/ActionCommand$TargetCommand;,
        Lmiui/maml/ActionCommand$AnimationProperty;,
        Lmiui/maml/ActionCommand$VisibilityProperty;,
        Lmiui/maml/ActionCommand$PropertyCommand;,
        Lmiui/maml/ActionCommand$DelayCommand;,
        Lmiui/maml/ActionCommand$ConditionCommand;,
        Lmiui/maml/ActionCommand$ExternCommand;,
        Lmiui/maml/ActionCommand$SoundCommand;,
        Lmiui/maml/ActionCommand$IntentCommand;,
        Lmiui/maml/ActionCommand$VariableBinderCommand;,
        Lmiui/maml/ActionCommand$VariableAssignmentCommand;,
        Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;,
        Lmiui/maml/ActionCommand$BluetoothSwitchCommand;,
        Lmiui/maml/ActionCommand$DataSwitchCommand;,
        Lmiui/maml/ActionCommand$WifiSwitchCommand;,
        Lmiui/maml/ActionCommand$WifiStateTracker;,
        Lmiui/maml/ActionCommand$StateTracker;,
        Lmiui/maml/ActionCommand$OnOffCommandHelper;,
        Lmiui/maml/ActionCommand$RingModeCommand;,
        Lmiui/maml/ActionCommand$ModeToggleHelper;,
        Lmiui/maml/ActionCommand$NotificationReceiver;,
        Lmiui/maml/ActionCommand$StatefulActionCommand;
    }
.end annotation


# static fields
.field private static final COMMAND_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field private static final COMMAND_DATA:Ljava/lang/String; = "Data"

.field private static final COMMAND_RING_MODE:Ljava/lang/String; = "RingMode"

.field private static final COMMAND_USB_STORAGE:Ljava/lang/String; = "UsbStorage"

.field private static final COMMAND_WIFI:Ljava/lang/String; = "Wifi"

.field private static final LOG_TAG:Ljava/lang/String; = "ActionCommand"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field public static final TAG_NAME:Ljava/lang/String; = "Command"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field protected mScreenElement:Lmiui/maml/elements/ScreenElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lmiui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;)V
    .locals 0
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 1788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1789
    iput-object p1, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    .line 1790
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lmiui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand;
    .locals 4
    .param p0, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1761
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1783
    :cond_0
    :goto_0
    return-object v2

    .line 1765
    :cond_1
    new-instance v1, Lmiui/maml/util/Variable;

    invoke-direct {v1, p1}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 1766
    .local v1, "targetObj":Lmiui/maml/util/Variable;
    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1767
    invoke-static {p0, p1, p2}, Lmiui/maml/ActionCommand$PropertyCommand;->create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand$PropertyCommand;

    move-result-object v2

    goto :goto_0

    .line 1770
    :cond_2
    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 1771
    .local v0, "property":Ljava/lang/String;
    const-string v3, "RingMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1772
    new-instance v2, Lmiui/maml/ActionCommand$RingModeCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$RingModeCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    goto :goto_0

    .line 1773
    :cond_3
    const-string v3, "Wifi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1774
    new-instance v2, Lmiui/maml/ActionCommand$WifiSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$WifiSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    goto :goto_0

    .line 1775
    :cond_4
    const-string v3, "Data"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1776
    new-instance v2, Lmiui/maml/ActionCommand$DataSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$DataSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    goto :goto_0

    .line 1777
    :cond_5
    const-string v3, "Bluetooth"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1778
    new-instance v2, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    goto :goto_0

    .line 1779
    :cond_6
    const-string v3, "UsbStorage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1780
    new-instance v2, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static create(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/ActionCommand;
    .locals 14
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 1703
    if-nez p0, :cond_0

    .line 1704
    const/4 v5, 0x0

    .line 1757
    :goto_0
    return-object v5

    .line 1706
    :cond_0
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    const-string v11, "condition"

    invoke-interface {p0, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 1707
    .local v0, "condition":Lmiui/maml/data/Expression;
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    const-string v11, "delayCondition"

    invoke-interface {p0, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    .line 1708
    .local v1, "delayCondition":Lmiui/maml/data/Expression;
    const-string v10, "delay"

    const-wide/16 v12, 0x0

    invoke-static {p0, v10, v12, v13}, Lmiui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1709
    .local v2, "delay":J
    const/4 v5, 0x0

    .line 1710
    .local v5, "ret":Lmiui/maml/ActionCommand;
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 1711
    .local v7, "tag":Ljava/lang/String;
    const-string v10, "Command"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1712
    const-string v10, "target"

    invoke-interface {p0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1713
    .local v8, "target":Ljava/lang/String;
    const-string v10, "value"

    invoke-interface {p0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1714
    .local v9, "value":Ljava/lang/String;
    invoke-static {p1, v8, v9}, Lmiui/maml/ActionCommand;->create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand;

    move-result-object v5

    move-object v6, v5

    .line 1745
    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .end local v8    # "target":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .local v6, "ret":Lmiui/maml/ActionCommand;
    :goto_1
    if-nez v6, :cond_d

    .line 1746
    const/4 v5, 0x0

    goto :goto_0

    .line 1715
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    :cond_1
    const-string v10, "VariableCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1716
    new-instance v5, Lmiui/maml/ActionCommand$VariableAssignmentCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1717
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    :cond_2
    const-string v10, "BinderCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1718
    new-instance v5, Lmiui/maml/ActionCommand$VariableBinderCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$VariableBinderCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1719
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    :cond_3
    const-string v10, "IntentCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1720
    new-instance v5, Lmiui/maml/ActionCommand$IntentCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$IntentCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1721
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    :cond_4
    const-string v10, "SoundCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1722
    new-instance v5, Lmiui/maml/ActionCommand$SoundCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$SoundCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1723
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    :cond_5
    const-string v10, "ExternCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1724
    new-instance v5, Lmiui/maml/ActionCommand$ExternCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$ExternCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1727
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    :cond_6
    const-string v10, "MethodCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1728
    new-instance v5, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$ScreenElementMethodCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1729
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    :cond_7
    const-string v10, "MultiCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "GroupCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1730
    :cond_8
    new-instance v5, Lmiui/maml/ActionCommand$MultiCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$MultiCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1731
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    :cond_9
    const-string v10, "LoopCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1732
    new-instance v5, Lmiui/maml/ActionCommand$LoopCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$LoopCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_1

    .line 1733
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    :cond_a
    const-string v10, "AnimationCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1734
    new-instance v5, Lmiui/maml/ActionCommand$AnimationCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$AnimationCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_1

    .line 1735
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    :cond_b
    const-string v10, "ActionCommand"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1736
    new-instance v5, Lmiui/maml/ActionCommand$ActionPerformCommand;

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    invoke-direct {v5, p1, p0}, Lmiui/maml/ActionCommand$ActionPerformCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_1

    .line 1738
    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    :cond_c
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v10

    const-string v11, "ActionCommand"

    invoke-virtual {v10, v11}, Lmiui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lmiui/maml/ObjectFactory;

    move-result-object v4

    check-cast v4, Lmiui/maml/ObjectFactory$ActionCommandFactory;

    .line 1740
    .local v4, "f":Lmiui/maml/ObjectFactory$ActionCommandFactory;
    if-eqz v4, :cond_11

    .line 1741
    invoke-virtual {v4, p1, p0}, Lmiui/maml/ObjectFactory$ActionCommandFactory;->create(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lmiui/maml/ActionCommand;

    move-result-object v5

    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_1

    .line 1748
    .end local v4    # "f":Lmiui/maml/ObjectFactory$ActionCommandFactory;
    :cond_d
    if-eqz v1, :cond_e

    .line 1749
    new-instance v5, Lmiui/maml/ActionCommand$ConditionCommand;

    invoke-direct {v5, v6, v1}, Lmiui/maml/ActionCommand$ConditionCommand;-><init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V

    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .line 1751
    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    :cond_e
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_f

    .line 1752
    new-instance v5, Lmiui/maml/ActionCommand$DelayCommand;

    invoke-direct {v5, v6, v2, v3}, Lmiui/maml/ActionCommand$DelayCommand;-><init>(Lmiui/maml/ActionCommand;J)V

    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    move-object v6, v5

    .line 1754
    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    :cond_f
    if-eqz v0, :cond_10

    .line 1755
    new-instance v5, Lmiui/maml/ActionCommand$ConditionCommand;

    invoke-direct {v5, v6, v0}, Lmiui/maml/ActionCommand$ConditionCommand;-><init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V

    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_0

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    :cond_10
    move-object v5, v6

    .end local v6    # "ret":Lmiui/maml/ActionCommand;
    .restart local v5    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_0

    .restart local v4    # "f":Lmiui/maml/ObjectFactory$ActionCommandFactory;
    :cond_11
    move-object v6, v5

    .end local v5    # "ret":Lmiui/maml/ActionCommand;
    .restart local v6    # "ret":Lmiui/maml/ActionCommand;
    goto/16 :goto_1
.end method


# virtual methods
.method protected abstract doPerform()V
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 1823
    return-void
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1813
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getScreenContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final getScreenContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenElement()Lmiui/maml/elements/ScreenElement;
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    return-object v0
.end method

.method protected final getVariables()Lmiui/maml/data/Variables;
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lmiui/maml/ActionCommand;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 1820
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 1826
    return-void
.end method

.method public perform()V
    .locals 0

    .prologue
    .line 1793
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->doPerform()V

    .line 1794
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 1829
    return-void
.end method
