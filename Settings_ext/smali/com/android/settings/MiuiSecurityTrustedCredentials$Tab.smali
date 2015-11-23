.class final enum Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;
.super Ljava/lang/Enum;
.source "MiuiSecurityTrustedCredentials.java"


# static fields
.field private static final synthetic rA:[Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

.field public static final enum ry:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

.field public static final enum rz:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;


# instance fields
.field private final mCheckbox:Z

.field private final mLabel:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    const-string v1, "SYSTEM"

    const-string v3, "system"

    const v4, 0x7f0908ba

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->ry:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    .line 65
    new-instance v3, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    const-string v4, "USER"

    const-string v6, "user"

    const v7, 0x7f0908bb

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v3, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->rz:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    sget-object v1, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->ry:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->rz:Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->rA:[Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->mTag:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->mLabel:I

    .line 74
    iput-boolean p5, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->mCheckbox:Z

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;Lcom/android/settings/eu;)I
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->j(Lcom/android/settings/eu;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/android/settings/es;->rm:[I

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/org/conscrypt/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;ZLcom/android/settings/eu;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->a(ZLcom/android/settings/eu;)V

    return-void
.end method

.method private a(ZLcom/android/settings/eu;)V
    .locals 1

    .prologue
    .line 119
    if-eqz p1, :cond_2

    .line 120
    invoke-static {p2}, Lcom/android/settings/eu;->c(Lcom/android/settings/eu;)Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->mCheckbox:Z

    if-eqz v0, :cond_1

    .line 121
    invoke-static {p2}, Lcom/android/settings/eu;->b(Lcom/android/settings/eu;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, v0}, Lcom/android/settings/eu;->a(Lcom/android/settings/eu;Z)Z

    .line 125
    :goto_1
    invoke-static {p2}, Lcom/android/settings/eu;->d(Lcom/android/settings/eu;)Lcom/android/settings/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ev;->notifyDataSetChanged()V

    .line 130
    :goto_2
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p2}, Lcom/android/settings/eu;->d(Lcom/android/settings/eu;)Lcom/android/settings/ev;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ev;->a(Lcom/android/settings/ev;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_2
    invoke-static {p2}, Lcom/android/settings/eu;->d(Lcom/android/settings/eu;)Lcom/android/settings/ev;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ev;->b(Lcom/android/settings/ev;)V

    goto :goto_2
.end method

.method private a(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 86
    sget-object v1, Lcom/android/settings/es;->rm:[I

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 92
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 90
    :cond_0
    :pswitch_1
    return v0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->a(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->mLabel:I

    return v0
.end method

.method static synthetic b(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;Lcom/android/settings/eu;)I
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->k(Lcom/android/settings/eu;)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->mCheckbox:Z

    return v0
.end method

.method private j(Lcom/android/settings/eu;)I
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/android/settings/es;->rm:[I

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/eu;->b(Lcom/android/settings/eu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const v0, 0x7f0908bd

    .line 102
    :goto_0
    return v0

    .line 100
    :cond_0
    const v0, 0x7f0908bc

    goto :goto_0

    .line 102
    :pswitch_1
    const v0, 0x7f0908be

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private k(Lcom/android/settings/eu;)I
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/android/settings/es;->rm:[I

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/eu;->b(Lcom/android/settings/eu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const v0, 0x7f0908bf

    .line 114
    :goto_0
    return v0

    .line 112
    :cond_0
    const v0, 0x7f0908c0

    goto :goto_0

    .line 114
    :pswitch_1
    const v0, 0x7f0908c1

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->rA:[Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    invoke-virtual {v0}, [Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/MiuiSecurityTrustedCredentials$Tab;

    return-object v0
.end method
