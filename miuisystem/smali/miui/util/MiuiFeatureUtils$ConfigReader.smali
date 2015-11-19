.class Lmiui/util/MiuiFeatureUtils$ConfigReader;
.super Ljava/lang/Object;
.source "MiuiFeatureUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/MiuiFeatureUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigReader"
.end annotation


# instance fields
.field private mConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentGroupName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    .line 87
    iput-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    .line 93
    iput-object p1, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private findEqualSignPos(Ljava/lang/String;)I
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, -0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private matchGroup(Ljava/lang/String;)Z
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseInternal()Z
    .locals 8

    .prologue
    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 113
    .local v1, "finished":Z
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 116
    .local v2, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 117
    invoke-direct {p0, v2}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->parseLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 121
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v5, "MiuiFeatureUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse feature file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    if-eqz v3, :cond_0

    .line 125
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return v1

    .line 119
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    const/4 v1, 0x1

    .line 123
    if-eqz v4, :cond_3

    .line 125
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 127
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 126
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    move-object v3, v4

    .line 127
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 123
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_2

    .line 125
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 127
    :cond_2
    :goto_4
    throw v5

    .line 126
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 123
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 120
    .end local v2    # "line":Ljava/lang/String;
    :catch_4
    move-exception v0

    goto :goto_1

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private parseLine(Ljava/lang/String;)V
    .locals 8
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-direct {p0, p1}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->removeComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-direct {p0, p1}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->matchGroup(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentGroupName:Ljava/lang/String;

    .line 148
    iget-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentGroupName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    goto :goto_0

    .line 154
    :cond_2
    iget-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    if-nez v4, :cond_3

    .line 155
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    .line 159
    :cond_3
    iget-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    iget-object v5, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentGroupName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    .line 160
    iget-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 161
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    .line 162
    iget-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    iget-object v5, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentGroupName:Ljava/lang/String;

    iget-object v6, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_4
    iget-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->findEqualSignPos(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "equalSignPos":I
    if-lt v0, v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_0

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "result":Ljava/lang/Boolean;
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "value":Ljava/lang/String;
    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 177
    :cond_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 182
    :cond_6
    :goto_1
    if-eqz v2, :cond_0

    .line 183
    iget-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 178
    :cond_7
    const-string v4, "no"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 180
    :cond_8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1
.end method

.method private removeComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    const/4 p1, 0x0

    .line 215
    .end local p1    # "target":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 211
    .restart local p1    # "target":Ljava/lang/String;
    :cond_1
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 215
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getConfigResult()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    return-object v0
.end method

.method public parse()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->parseInternal()Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
