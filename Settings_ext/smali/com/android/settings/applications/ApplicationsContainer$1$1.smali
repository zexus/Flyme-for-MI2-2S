.class Lcom/android/settings/applications/ApplicationsContainer$1$1;
.super Ljava/lang/Object;
.source "ApplicationsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic DT:Lcom/android/settings/applications/ApplicationsContainer$1;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsContainer$1;)V
    .locals 0

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$1$1;->DT:Lcom/android/settings/applications/ApplicationsContainer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$1$1;->DT:Lcom/android/settings/applications/ApplicationsContainer$1;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsContainer$1;->DS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer;->a(Lcom/android/settings/applications/ApplicationsContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 964
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$1$1;->DT:Lcom/android/settings/applications/ApplicationsContainer$1;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsContainer$1;->DS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer;->b(Lcom/android/settings/applications/ApplicationsContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$1$1;->DT:Lcom/android/settings/applications/ApplicationsContainer$1;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsContainer$1;->DS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer;->b(Lcom/android/settings/applications/ApplicationsContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    .line 966
    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v2, :cond_0

    .line 967
    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->pause()V

    .line 964
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 970
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$1$1;->DT:Lcom/android/settings/applications/ApplicationsContainer$1;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsContainer$1;->DS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer;->c(Lcom/android/settings/applications/ApplicationsContainer;)Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 971
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$1$1;->DT:Lcom/android/settings/applications/ApplicationsContainer$1;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsContainer$1;->DS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer;->c(Lcom/android/settings/applications/ApplicationsContainer;)Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$1$1;->DT:Lcom/android/settings/applications/ApplicationsContainer$1;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsContainer$1;->DS:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-static {v1}, Lcom/android/settings/applications/ApplicationsContainer;->d(Lcom/android/settings/applications/ApplicationsContainer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->resume(I)V

    .line 974
    :cond_2
    return-void
.end method
