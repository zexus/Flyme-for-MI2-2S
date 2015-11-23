.class Lcom/android/settings_ext/applications/ManageApplications$1$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Hn:Lcom/android/settings_ext/applications/ManageApplications$1;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/ManageApplications$1;)V
    .locals 0

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$1$1;->Hn:Lcom/android/settings_ext/applications/ManageApplications$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$1$1;->Hn:Lcom/android/settings_ext/applications/ManageApplications$1;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications$1;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$1$1;->Hn:Lcom/android/settings_ext/applications/ManageApplications$1;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications$1;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications;->h(Lcom/android/settings_ext/applications/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1243
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$1$1;->Hn:Lcom/android/settings_ext/applications/ManageApplications$1;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications$1;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications;->c(Lcom/android/settings_ext/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1244
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$1$1;->Hn:Lcom/android/settings_ext/applications/ManageApplications$1;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications$1;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications;->c(Lcom/android/settings_ext/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    .line 1245
    iget-object v2, v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_0

    .line 1246
    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 1243
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$1$1;->Hn:Lcom/android/settings_ext/applications/ManageApplications$1;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications$1;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_2

    .line 1250
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$1$1;->Hn:Lcom/android/settings_ext/applications/ManageApplications$1;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications$1;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications;->Hf:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$1$1;->Hn:Lcom/android/settings_ext/applications/ManageApplications$1;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ManageApplications$1;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings_ext/applications/ManageApplications;->i(Lcom/android/settings_ext/applications/ManageApplications;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1253
    :cond_2
    return-void
.end method
