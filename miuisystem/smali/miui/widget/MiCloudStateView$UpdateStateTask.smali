.class Lmiui/widget/MiCloudStateView$UpdateStateTask;
.super Landroid/os/AsyncTask;
.source "MiCloudStateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/MiCloudStateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateStateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field counts:[I

.field enabled:Z

.field syncing:Z

.field final synthetic this$0:Lmiui/widget/MiCloudStateView;


# direct methods
.method private constructor <init>(Lmiui/widget/MiCloudStateView;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/MiCloudStateView;Lmiui/widget/MiCloudStateView$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/widget/MiCloudStateView;
    .param p2, "x1"    # Lmiui/widget/MiCloudStateView$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lmiui/widget/MiCloudStateView$UpdateStateTask;-><init>(Lmiui/widget/MiCloudStateView;)V

    return-void
.end method

.method private getTotalCount([I)I
    .locals 6
    .param p1, "counts"    # [I

    .prologue
    .line 236
    const/4 v4, 0x0

    .line 237
    .local v4, "totalCount":I
    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_0

    .line 238
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 239
    .local v1, "cnt":I
    add-int/2addr v4, v1

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "arr$":[I
    .end local v1    # "cnt":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return v4
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudStateView$UpdateStateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    invoke-virtual {v2}, Lmiui/widget/MiCloudStateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 187
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 188
    iput-boolean v3, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->enabled:Z

    .line 189
    iput-boolean v3, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->syncing:Z

    .line 196
    :goto_0
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    iget-boolean v3, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->syncing:Z

    # setter for: Lmiui/widget/MiCloudStateView;->mSyncing:Z
    invoke-static {v2, v3}, Lmiui/widget/MiCloudStateView;->access$202(Lmiui/widget/MiCloudStateView;Z)Z

    .line 197
    iget-boolean v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->enabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->syncing:Z

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;
    invoke-static {v2}, Lmiui/widget/MiCloudStateView;->access$100(Lmiui/widget/MiCloudStateView;)Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    move-result-object v2

    iget-object v3, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    invoke-virtual {v3}, Lmiui/widget/MiCloudStateView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lmiui/widget/MiCloudStateView$ISyncInfoProvider;->getUnsyncedCount(Landroid/content/Context;)[I

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->counts:[I

    .line 200
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 191
    :cond_1
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;
    invoke-static {v2}, Lmiui/widget/MiCloudStateView;->access$100(Lmiui/widget/MiCloudStateView;)Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    move-result-object v2

    invoke-interface {v2}, Lmiui/widget/MiCloudStateView$ISyncInfoProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "authority":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->enabled:Z

    .line 193
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->syncing:Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudStateView$UpdateStateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 207
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->counts:[I

    invoke-direct {p0, v2}, Lmiui/widget/MiCloudStateView$UpdateStateTask;->getTotalCount([I)I

    move-result v1

    .line 208
    .local v1, "totalCount":I
    iget-boolean v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->enabled:Z

    if-nez v2, :cond_1

    .line 209
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;
    invoke-static {v2}, Lmiui/widget/MiCloudStateView;->access$300(Lmiui/widget/MiCloudStateView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/miui/system/internal/R$string;->cloud_state_disabled:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 220
    :goto_0
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    invoke-virtual {v2}, Lmiui/widget/MiCloudStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 221
    .local v0, "context":Landroid/content/Context;
    iget-boolean v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->syncing:Z

    if-nez v2, :cond_4

    if-lez v1, :cond_4

    .line 222
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;
    invoke-static {v2}, Lmiui/widget/MiCloudStateView;->access$300(Lmiui/widget/MiCloudStateView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mCloudStatusHighlightTextAppearance:I
    invoke-static {v3}, Lmiui/widget/MiCloudStateView;->access$500(Lmiui/widget/MiCloudStateView;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 227
    :goto_1
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    const/4 v3, 0x0

    # setter for: Lmiui/widget/MiCloudStateView;->mCurrentUpdateTask:Lmiui/widget/MiCloudStateView$UpdateStateTask;
    invoke-static {v2, v3}, Lmiui/widget/MiCloudStateView;->access$702(Lmiui/widget/MiCloudStateView;Lmiui/widget/MiCloudStateView$UpdateStateTask;)Lmiui/widget/MiCloudStateView$UpdateStateTask;

    .line 229
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z
    invoke-static {v2}, Lmiui/widget/MiCloudStateView;->access$800(Lmiui/widget/MiCloudStateView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    const/4 v3, 0x0

    # setter for: Lmiui/widget/MiCloudStateView;->mPendingUpdate:Z
    invoke-static {v2, v3}, Lmiui/widget/MiCloudStateView;->access$802(Lmiui/widget/MiCloudStateView;Z)Z

    .line 231
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiui/widget/MiCloudStateView;->updateState(Z)V

    .line 233
    :cond_0
    return-void

    .line 210
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-boolean v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->syncing:Z

    if-nez v2, :cond_3

    .line 211
    if-lez v1, :cond_2

    .line 212
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;
    invoke-static {v2}, Lmiui/widget/MiCloudStateView;->access$300(Lmiui/widget/MiCloudStateView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mSyncInfoProvider:Lmiui/widget/MiCloudStateView$ISyncInfoProvider;
    invoke-static {v3}, Lmiui/widget/MiCloudStateView;->access$100(Lmiui/widget/MiCloudStateView;)Lmiui/widget/MiCloudStateView$ISyncInfoProvider;

    move-result-object v3

    iget-object v4, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lmiui/widget/MiCloudStateView;->access$400(Lmiui/widget/MiCloudStateView;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->counts:[I

    invoke-interface {v3, v4, v5}, Lmiui/widget/MiCloudStateView$ISyncInfoProvider;->getUnsyncedCountText(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;
    invoke-static {v2}, Lmiui/widget/MiCloudStateView;->access$300(Lmiui/widget/MiCloudStateView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/miui/system/internal/R$string;->cloud_state_finished:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;
    invoke-static {v2}, Lmiui/widget/MiCloudStateView;->access$300(Lmiui/widget/MiCloudStateView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/miui/system/internal/R$string;->cloud_state_syncing:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 224
    .restart local v0    # "context":Landroid/content/Context;
    :cond_4
    iget-object v2, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mMiCloudStatusText:Landroid/widget/TextView;
    invoke-static {v2}, Lmiui/widget/MiCloudStateView;->access$300(Lmiui/widget/MiCloudStateView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lmiui/widget/MiCloudStateView$UpdateStateTask;->this$0:Lmiui/widget/MiCloudStateView;

    # getter for: Lmiui/widget/MiCloudStateView;->mCloudStatusNormalTextAppearance:I
    invoke-static {v3}, Lmiui/widget/MiCloudStateView;->access$600(Lmiui/widget/MiCloudStateView;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method
