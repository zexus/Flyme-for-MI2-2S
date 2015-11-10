.class public Lmiui/push/MiPushMessage;
.super Ljava/lang/Object;
.source "MiPushMessage.java"


# static fields
.field private static final KEY_ALIAS:Ljava/lang/String; = "alias"

.field private static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final KEY_CONTENT:Ljava/lang/String; = "content"

.field private static final KEY_DESC:Ljava/lang/String; = "description"

.field private static final KEY_EXTRA:Ljava/lang/String; = "extra"

.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field private static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "messageType"

.field private static final KEY_NOTIFIED:Ljava/lang/String; = "isNotified"

.field private static final KEY_NOTIFY_ID:Ljava/lang/String; = "notifyId"

.field private static final KEY_NOTIFY_TYPE:Ljava/lang/String; = "notifyType"

.field private static final KEY_PASS_THROUGH:Ljava/lang/String; = "passThrough"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_TOPIC:Ljava/lang/String; = "topic"

.field public static final MESSAGE_TYPE_ALIAS:I = 0x1

.field public static final MESSAGE_TYPE_REG:I = 0x0

.field public static final MESSAGE_TYPE_TOPIC:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private alias:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private extra:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isNotified:Z

.field private messageId:Ljava/lang/String;

.field private messageType:I

.field private notifyId:I

.field private notifyType:I

.field private passThrough:I

.field private title:Ljava/lang/String;

.field private topic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lmiui/push/MiPushMessage;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 220
    new-instance v0, Lmiui/push/MiPushMessage;

    invoke-direct {v0}, Lmiui/push/MiPushMessage;-><init>()V

    .line 221
    .local v0, "message":Lmiui/push/MiPushMessage;
    const-string v1, "messageId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->messageId:Ljava/lang/String;

    .line 222
    const-string v1, "messageType"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lmiui/push/MiPushMessage;->messageType:I

    .line 223
    const-string v1, "passThrough"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lmiui/push/MiPushMessage;->passThrough:I

    .line 224
    const-string v1, "alias"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->alias:Ljava/lang/String;

    .line 225
    const-string v1, "topic"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->topic:Ljava/lang/String;

    .line 226
    const-string v1, "content"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->content:Ljava/lang/String;

    .line 227
    const-string v1, "description"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->description:Ljava/lang/String;

    .line 228
    const-string v1, "title"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->title:Ljava/lang/String;

    .line 229
    const-string v1, "isNotified"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lmiui/push/MiPushMessage;->isNotified:Z

    .line 230
    const-string v1, "notifyId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lmiui/push/MiPushMessage;->notifyId:I

    .line 231
    const-string v1, "notifyType"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lmiui/push/MiPushMessage;->notifyType:I

    .line 232
    const-string v1, "category"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/push/MiPushMessage;->category:Ljava/lang/String;

    .line 233
    const-string v1, "extra"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    .line 234
    return-object v0
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmiui/push/MiPushMessage;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lmiui/push/MiPushMessage;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmiui/push/MiPushMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lmiui/push/MiPushMessage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmiui/push/MiPushMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lmiui/push/MiPushMessage;->messageType:I

    return v0
.end method

.method public getNotifyId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lmiui/push/MiPushMessage;->notifyId:I

    return v0
.end method

.method public getNotifyType()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lmiui/push/MiPushMessage;->notifyType:I

    return v0
.end method

.method public getPassThrough()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lmiui/push/MiPushMessage;->passThrough:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmiui/push/MiPushMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/push/MiPushMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public isNotified()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lmiui/push/MiPushMessage;->isNotified:Z

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lmiui/push/MiPushMessage;->alias:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lmiui/push/MiPushMessage;->category:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lmiui/push/MiPushMessage;->content:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lmiui/push/MiPushMessage;->description:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setExtra(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 167
    :cond_0
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lmiui/push/MiPushMessage;->messageId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setMessageType(I)V
    .locals 0
    .param p1, "messageType"    # I

    .prologue
    .line 75
    iput p1, p0, Lmiui/push/MiPushMessage;->messageType:I

    .line 76
    return-void
.end method

.method public setNotified(Z)V
    .locals 0
    .param p1, "isNotified"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lmiui/push/MiPushMessage;->isNotified:Z

    .line 124
    return-void
.end method

.method public setNotifyId(I)V
    .locals 0
    .param p1, "notifyId"    # I

    .prologue
    .line 115
    iput p1, p0, Lmiui/push/MiPushMessage;->notifyId:I

    .line 116
    return-void
.end method

.method public setNotifyType(I)V
    .locals 0
    .param p1, "notifyType"    # I

    .prologue
    .line 107
    iput p1, p0, Lmiui/push/MiPushMessage;->notifyType:I

    .line 108
    return-void
.end method

.method public setPassThrough(I)V
    .locals 0
    .param p1, "passThrough"    # I

    .prologue
    .line 155
    iput p1, p0, Lmiui/push/MiPushMessage;->passThrough:I

    .line 156
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lmiui/push/MiPushMessage;->title:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lmiui/push/MiPushMessage;->topic:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "messageId"

    iget-object v2, p0, Lmiui/push/MiPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "passThrough"

    iget v2, p0, Lmiui/push/MiPushMessage;->passThrough:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v1, "messageType"

    iget v2, p0, Lmiui/push/MiPushMessage;->messageType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    iget-object v1, p0, Lmiui/push/MiPushMessage;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const-string v1, "alias"

    iget-object v2, p0, Lmiui/push/MiPushMessage;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object v1, p0, Lmiui/push/MiPushMessage;->topic:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    const-string v1, "topic"

    iget-object v2, p0, Lmiui/push/MiPushMessage;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_1
    const-string v1, "content"

    iget-object v2, p0, Lmiui/push/MiPushMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lmiui/push/MiPushMessage;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 195
    const-string v1, "description"

    iget-object v2, p0, Lmiui/push/MiPushMessage;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_2
    iget-object v1, p0, Lmiui/push/MiPushMessage;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 199
    const-string v1, "title"

    iget-object v2, p0, Lmiui/push/MiPushMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_3
    const-string v1, "isNotified"

    iget-boolean v2, p0, Lmiui/push/MiPushMessage;->isNotified:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    const-string v1, "notifyId"

    iget v2, p0, Lmiui/push/MiPushMessage;->notifyId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v1, "notifyType"

    iget v2, p0, Lmiui/push/MiPushMessage;->notifyType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    iget-object v1, p0, Lmiui/push/MiPushMessage;->category:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 208
    const-string v1, "category"

    iget-object v2, p0, Lmiui/push/MiPushMessage;->category:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_4
    iget-object v1, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    .line 212
    const-string v1, "extra"

    iget-object v2, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 215
    :cond_5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messageId={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},passThrough={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/push/MiPushMessage;->passThrough:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},alias={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},topic={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},content={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},description={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},title={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},isNotified={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/push/MiPushMessage;->isNotified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},notifyId={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/push/MiPushMessage;->notifyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},notifyType={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/push/MiPushMessage;->notifyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, category={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, extra={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/MiPushMessage;->extra:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
