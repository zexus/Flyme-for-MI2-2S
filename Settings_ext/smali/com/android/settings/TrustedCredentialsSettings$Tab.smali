.class final enum Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# static fields
.field public static final enum yR:Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

.field public static final enum yS:Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

.field private static final synthetic yT:[Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mCheckbox:Z

.field private final mExpandableList:I

.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 72
    new-instance v0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    const-string v3, "system"

    const v4, 0x7f0908ba

    const v5, 0x7f1002aa

    const v6, 0x7f1002ab

    const v7, 0x7f1002ac

    const v8, 0x7f1002ad

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->yR:Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    .line 79
    new-instance v0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    const-string v1, "USER"

    const/4 v2, 0x1

    const-string v3, "user"

    const v4, 0x7f0908bb

    const v5, 0x7f1002ae

    const v6, 0x7f1002af

    const v7, 0x7f1002b0

    const v8, 0x7f1002b1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->yS:Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->yR:Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->yS:Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->yT:[Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput-object p3, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 98
    iput p4, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 99
    iput p5, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mView:I

    .line 100
    iput p6, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 101
    iput p7, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mList:I

    .line 102
    iput p8, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mExpandableList:I

    .line 103
    iput-boolean p9, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gU;)I
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->k(Lcom/android/settings_ext/gU;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/android/settings_ext/gQ;->yK:[I

    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :pswitch_0
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :pswitch_1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->a(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;ZLcom/android/settings_ext/gU;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->a(ZLcom/android/settings_ext/gU;)V

    return-void
.end method

.method private a(ZLcom/android/settings_ext/gU;)V
    .locals 1

    .prologue
    .line 150
    if-eqz p1, :cond_2

    .line 151
    invoke-static {p2}, Lcom/android/settings_ext/gU;->e(Lcom/android/settings_ext/gU;)Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    if-eqz v0, :cond_1

    .line 152
    invoke-static {p2}, Lcom/android/settings_ext/gU;->d(Lcom/android/settings_ext/gU;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, v0}, Lcom/android/settings_ext/gU;->a(Lcom/android/settings_ext/gU;Z)Z

    .line 156
    :goto_1
    invoke-static {p2}, Lcom/android/settings_ext/gU;->f(Lcom/android/settings_ext/gU;)Lcom/android/settings_ext/gW;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ext/gW;->notifyDataSetChanged()V

    .line 161
    :goto_2
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {p2}, Lcom/android/settings_ext/gU;->f(Lcom/android/settings_ext/gU;)Lcom/android/settings_ext/gW;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings_ext/gW;->b(Lcom/android/settings_ext/gU;)V

    goto :goto_1

    .line 159
    :cond_2
    invoke-static {p2}, Lcom/android/settings_ext/gU;->f(Lcom/android/settings_ext/gU;)Lcom/android/settings_ext/gW;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ext/gW;->load()V

    goto :goto_2
.end method

.method private a(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    sget-object v1, Lcom/android/settings_ext/gQ;->yK:[I

    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :pswitch_0
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 121
    :cond_0
    :pswitch_1
    return v0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->a(Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Lcom/android/settings_ext/gU;)I
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->l(Lcom/android/settings_ext/gU;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic d(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic e(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mExpandableList:I

    return v0
.end method

.method static synthetic f(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method static synthetic g(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic h(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    return v0
.end method

.method private k(Lcom/android/settings_ext/gU;)I
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/android/settings_ext/gQ;->yK:[I

    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 135
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :pswitch_0
    invoke-static {p1}, Lcom/android/settings_ext/gU;->d(Lcom/android/settings_ext/gU;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const v0, 0x7f0908bd

    .line 133
    :goto_0
    return v0

    .line 131
    :cond_0
    const v0, 0x7f0908bc

    goto :goto_0

    .line 133
    :pswitch_1
    const v0, 0x7f0908be

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private l(Lcom/android/settings_ext/gU;)I
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/android/settings_ext/gQ;->yK:[I

    invoke-virtual {p0}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :pswitch_0
    invoke-static {p1}, Lcom/android/settings_ext/gU;->d(Lcom/android/settings_ext/gU;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const v0, 0x7f0908bf

    .line 145
    :goto_0
    return v0

    .line 143
    :cond_0
    const v0, 0x7f0908c0

    goto :goto_0

    .line 145
    :pswitch_1
    const v0, 0x7f0908c1

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->yT:[Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
