.class public final Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SyncRootProtos.java"

# interfaces
.implements Lcom/android/settings_ext/backup/t;


# static fields
.field private static final Mb:Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private setting_:Lcom/android/settings_ext/backup/SettingProtos$Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 313
    new-instance v0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;-><init>(Z)V

    sput-object v0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->Mb:Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;

    .line 314
    sget-object v0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->Mb:Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;

    invoke-direct {v0}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->ko()V

    .line 315
    return-void
.end method

.method private constructor <init>(Lcom/android/settings_ext/backup/s;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 50
    iput-byte v0, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    .line 67
    iput v0, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/backup/s;Lcom/android/settings_ext/backup/r;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;-><init>(Lcom/android/settings_ext/backup/s;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 50
    iput-byte v0, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    .line 67
    iput v0, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;Lcom/android/settings_ext/backup/SettingProtos$Settings;)Lcom/android/settings_ext/backup/SettingProtos$Settings;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->setting_:Lcom/android/settings_ext/backup/SettingProtos$Settings;

    return-object p1
.end method

.method public static a(Ljava/io/InputStream;)Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->ls()Lcom/android/settings_ext/backup/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/backup/s;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/backup/s;

    invoke-static {v0}, Lcom/android/settings_ext/backup/s;->a(Lcom/android/settings_ext/backup/s;)Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;)Lcom/android/settings_ext/backup/s;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->ls()Lcom/android/settings_ext/backup/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/backup/s;->b(Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;)Lcom/android/settings_ext/backup/s;

    move-result-object v0

    return-object v0
.end method

.method private ko()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/android/settings_ext/backup/SettingProtos$Settings;->kL()Lcom/android/settings_ext/backup/SettingProtos$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->setting_:Lcom/android/settings_ext/backup/SettingProtos$Settings;

    .line 49
    return-void
.end method

.method public static lo()Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->Mb:Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;

    return-object v0
.end method

.method public static ls()Lcom/android/settings_ext/backup/s;
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/android/settings_ext/backup/s;->lB()Lcom/android/settings_ext/backup/s;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->lp()Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 69
    iget v0, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    .line 70
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 78
    :goto_0
    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 73
    iget v1, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 74
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->setting_:Lcom/android/settings_ext/backup/SettingProtos$Settings;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_1
    iput v0, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 52
    iget-byte v1, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    .line 53
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 56
    :goto_0
    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_1
    iput-byte v0, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public lp()Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->Mb:Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;

    return-object v0
.end method

.method public lq()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 41
    iget v1, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lr()Lcom/android/settings_ext/backup/SettingProtos$Settings;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->setting_:Lcom/android/settings_ext/backup/SettingProtos$Settings;

    return-object v0
.end method

.method public lt()Lcom/android/settings_ext/backup/s;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->ls()Lcom/android/settings_ext/backup/s;

    move-result-object v0

    return-object v0
.end method

.method public lu()Lcom/android/settings_ext/backup/s;
    .locals 1

    .prologue
    .line 160
    invoke-static {p0}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->a(Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;)Lcom/android/settings_ext/backup/s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->lt()Lcom/android/settings_ext/backup/s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->lu()Lcom/android/settings_ext/backup/s;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->getSerializedSize()I

    .line 62
    iget v0, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/android/settings_ext/backup/SyncRootProtos$SyncRoot;->setting_:Lcom/android/settings_ext/backup/SettingProtos$Settings;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 65
    :cond_0
    return-void
.end method
