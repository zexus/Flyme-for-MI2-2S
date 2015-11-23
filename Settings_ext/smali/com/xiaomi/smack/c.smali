.class public Lcom/xiaomi/smack/c;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static aMb:Ljava/lang/String;

.field public static aMc:Ljava/lang/String;


# instance fields
.field private aMd:Ljava/lang/String;

.field private aMe:Z

.field private aMf:Z

.field private aMg:Ljava/lang/String;

.field private aMh:Lcom/xiaomi/smack/f;

.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "wcc-ml-test10.bj"

    sput-object v0, Lcom/xiaomi/smack/c;->aMb:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/smack/c;->aMc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/f;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-boolean v0, Lcom/xiaomi/smack/a;->aLN:Z

    iput-boolean v0, p0, Lcom/xiaomi/smack/c;->aMe:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/c;->aMf:Z

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/smack/c;->a(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/f;)V

    .line 113
    return-void
.end method

.method public static final Cx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/xiaomi/smack/c;->aMc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/xiaomi/smack/c;->aMc:Ljava/lang/String;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "app.chat.xiaomi.net"

    goto :goto_0
.end method

.method private a(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/smack/f;)V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/xiaomi/smack/c;->Cx()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/c;->host:Ljava/lang/String;

    .line 128
    iput p2, p0, Lcom/xiaomi/smack/c;->port:I

    .line 129
    iput-object p3, p0, Lcom/xiaomi/smack/c;->aMd:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/xiaomi/smack/c;->aMh:Lcom/xiaomi/smack/f;

    .line 131
    return-void
.end method


# virtual methods
.method public Cc()[B
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public Cn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/xiaomi/smack/c;->aMg:Ljava/lang/String;

    return-object v0
.end method

.method public Cy()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/xiaomi/smack/c;->aMe:Z

    return v0
.end method

.method public bU(Z)V
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/xiaomi/smack/c;->aMe:Z

    .line 203
    return-void
.end method

.method public dD(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/xiaomi/smack/c;->aMg:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/xiaomi/smack/c;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/xiaomi/smack/c;->port:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/xiaomi/smack/c;->aMd:Ljava/lang/String;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/xiaomi/smack/c;->host:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/xiaomi/smack/c;->aMd:Ljava/lang/String;

    .line 140
    return-void
.end method
