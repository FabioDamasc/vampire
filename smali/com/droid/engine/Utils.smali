.class public Lcom/droid/engine/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ANDOIRD_DEVICE_ID:Ljava/lang/String; = "0000000000000000"

.field public static final ANDOIRD_DEVICE_REFERER:Ljava/lang/String; = "ece80d3df6244588b99ca22fd0ed233c"

.field private static final CURRENTSTAGE:Ljava/lang/String; = "CURRENTSTAGE"

.field public static final DEBUG:Z

.field public static final LOG_TAG:Ljava/lang/String; = "Utils"

.field public static final SAVESTAGE_INFOS:Ljava/lang/String; = "SAVESTAGE_INFOS"

.field private static final UPDATESTAGE:Ljava/lang/String; = "UPDATESTAGE"

.field public static saveStage:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/droid/util/config;->DEBUG:Z

    sput-boolean v0, Lcom/droid/engine/Utils;->DEBUG:Z

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/droid/engine/Utils;->saveStage:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static androidPitEnable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lng"    # Ljava/lang/String;

    .prologue
    .line 896
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 897
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkStage(I)Z
    .locals 5
    .param p0, "needUpdateStage"    # I

    .prologue
    const/4 v2, 0x0

    .line 1018
    sget-object v3, Lcom/droid/engine/Utils;->saveStage:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1019
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/droid/engine/Utils;->saveStage:Landroid/content/SharedPreferences;

    const-string v4, "CURRENTSTAGE"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1020
    .local v0, "currentStage":I
    if-ge v0, p0, :cond_0

    .line 1021
    const-string v2, "UPDATESTAGE"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1022
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1023
    const/4 v2, 0x1

    .line 1025
    :cond_0
    return v2
.end method

.method public static compVersion(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 518
    sget-boolean v3, Lcom/droid/util/config;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 519
    const/4 v3, 0x1

    sput v3, Lcom/droid/engine/DroidGame;->localVer:I

    .line 520
    :cond_0
    invoke-static {p0}, Lcom/droid/engine/Utils;->getServerVersion(Landroid/content/Context;)V

    .line 521
    sget-object v3, Lcom/droid/engine/Utils;->saveStage:Landroid/content/SharedPreferences;

    const-string v4, "CURRENTSTAGE"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 522
    .local v0, "currentStage":I
    sget-object v3, Lcom/droid/engine/Utils;->saveStage:Landroid/content/SharedPreferences;

    const-string v4, "UPDATESTAGE"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 523
    .local v2, "updateStage":I
    const/4 v1, 0x0

    .line 524
    .local v1, "needUpdate":Z
    sget v3, Lcom/droid/engine/DroidGame;->localVer:I

    sget v4, Lcom/droid/engine/DroidGame;->serverVer:I

    if-lt v3, v4, :cond_1

    if-ge v0, v2, :cond_2

    .line 525
    :cond_1
    const/4 v1, 0x1

    .line 527
    :cond_2
    return v1
.end method

.method public static copyBaseVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dest"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 828
    invoke-static {p0, p1, p2}, Lcom/droid/engine/Utils;->copyBaseVersionRecursive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ver.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/droid/engine/Utils;->getLocalVersion(Ljava/lang/String;)V

    .line 830
    invoke-static {p0}, Lcom/droid/engine/Utils;->updateJsInfomation(Landroid/content/Context;)V

    .line 831
    return-void
.end method

.method public static copyBaseVersionRecursive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dest"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 835
    const/4 v7, 0x0

    .line 836
    .local v7, "in":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 838
    .local v10, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 842
    .local v5, "files":[Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 843
    .local v9, "mWorkingPath":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 844
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-nez v13, :cond_0

    .line 847
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v13, v5

    if-ge v6, v13, :cond_4

    .line 848
    aget-object v4, v5, v6

    .line 850
    .local v4, "fileName":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_5

    .line 851
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 865
    :goto_1
    :try_start_2
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 866
    .local v12, "outFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 867
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 869
    :cond_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 871
    .end local v10    # "out":Ljava/io/OutputStream;
    .local v11, "out":Ljava/io/OutputStream;
    const/16 v13, 0x400

    :try_start_3
    new-array v1, v13, [B

    .line 873
    .local v1, "buf":[B
    :goto_2
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    if-lez v8, :cond_7

    .line 874
    const/4 v13, 0x0

    invoke-virtual {v11, v1, v13, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 876
    .end local v1    # "buf":[B
    .end local v8    # "len":I
    :catch_0
    move-exception v2

    move-object v10, v11

    .line 877
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "outFile":Ljava/io/File;
    .local v2, "e":Ljava/io/IOException;
    .restart local v10    # "out":Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 880
    if-eqz v7, :cond_2

    .line 881
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 882
    :cond_2
    if-eqz v10, :cond_3

    .line 883
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 884
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 847
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 839
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "files":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v9    # "mWorkingPath":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 891
    :cond_4
    return-void

    .line 853
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "files":[Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v9    # "mWorkingPath":Ljava/io/File;
    :cond_5
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v7

    goto :goto_1

    .line 854
    :catch_2
    move-exception v2

    .line 855
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 856
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_6

    .line 857
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13, v4}, Lcom/droid/engine/Utils;->copyBaseVersionRecursive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 859
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/droid/engine/Utils;->copyBaseVersionRecursive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 880
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v1    # "buf":[B
    .restart local v8    # "len":I
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "outFile":Ljava/io/File;
    :cond_7
    if-eqz v7, :cond_8

    .line 881
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 882
    :cond_8
    if-eqz v11, :cond_9

    .line 883
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 884
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_9
    move-object v10, v11

    .line 888
    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    goto :goto_4

    .line 886
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    .line 887
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v10, v11

    .line 889
    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    goto/16 :goto_4

    .line 886
    .end local v1    # "buf":[B
    .end local v8    # "len":I
    .end local v12    # "outFile":Ljava/io/File;
    :catch_4
    move-exception v2

    .line 887
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 879
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 880
    :goto_5
    if-eqz v7, :cond_a

    .line 881
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 882
    :cond_a
    if-eqz v10, :cond_b

    .line 883
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 884
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 888
    :cond_b
    :goto_6
    throw v13

    .line 886
    :catch_5
    move-exception v2

    .line 887
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 879
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v12    # "outFile":Ljava/io/File;
    :catchall_1
    move-exception v13

    move-object v10, v11

    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    goto :goto_5

    .line 876
    .end local v12    # "outFile":Ljava/io/File;
    :catch_6
    move-exception v2

    goto/16 :goto_3
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "fromFile"    # Ljava/lang/String;
    .param p1, "toFile"    # Ljava/lang/String;

    .prologue
    .line 762
    const/4 v2, 0x0

    .line 763
    .local v2, "copyResult":Z
    const/4 v5, 0x0

    .line 764
    .local v5, "fosfrom":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 767
    .local v7, "fosto":Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    .end local v5    # "fosfrom":Ljava/io/InputStream;
    .local v6, "fosfrom":Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 769
    .end local v7    # "fosto":Ljava/io/OutputStream;
    .local v8, "fosto":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 771
    .local v0, "bt":[B
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "c":I
    if-lez v1, :cond_2

    .line 773
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 777
    .end local v0    # "bt":[B
    .end local v1    # "c":I
    :catch_0
    move-exception v4

    move-object v7, v8

    .end local v8    # "fosto":Ljava/io/OutputStream;
    .restart local v7    # "fosto":Ljava/io/OutputStream;
    move-object v5, v6

    .line 779
    .end local v6    # "fosfrom":Ljava/io/InputStream;
    .local v4, "ex":Ljava/lang/Exception;
    .restart local v5    # "fosfrom":Ljava/io/InputStream;
    :goto_1
    const/4 v2, 0x0

    .line 780
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 783
    if-eqz v5, :cond_0

    .line 785
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 792
    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    .line 794
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 801
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return v2

    .line 775
    .end local v5    # "fosfrom":Ljava/io/InputStream;
    .end local v7    # "fosto":Ljava/io/OutputStream;
    .restart local v0    # "bt":[B
    .restart local v1    # "c":I
    .restart local v6    # "fosfrom":Ljava/io/InputStream;
    .restart local v8    # "fosto":Ljava/io/OutputStream;
    :cond_2
    const/4 v2, 0x1

    .line 783
    if-eqz v6, :cond_3

    .line 785
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 792
    :cond_3
    :goto_4
    if-eqz v8, :cond_6

    .line 794
    :try_start_7
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object v7, v8

    .end local v8    # "fosto":Ljava/io/OutputStream;
    .restart local v7    # "fosto":Ljava/io/OutputStream;
    move-object v5, v6

    .line 798
    .end local v6    # "fosfrom":Ljava/io/InputStream;
    .restart local v5    # "fosfrom":Ljava/io/InputStream;
    goto :goto_3

    .line 786
    .end local v5    # "fosfrom":Ljava/io/InputStream;
    .end local v7    # "fosto":Ljava/io/OutputStream;
    .restart local v6    # "fosfrom":Ljava/io/InputStream;
    .restart local v8    # "fosto":Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    .line 788
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 795
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 797
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .end local v8    # "fosto":Ljava/io/OutputStream;
    .restart local v7    # "fosto":Ljava/io/OutputStream;
    move-object v5, v6

    .line 798
    .end local v6    # "fosfrom":Ljava/io/InputStream;
    .restart local v5    # "fosfrom":Ljava/io/InputStream;
    goto :goto_3

    .line 786
    .end local v0    # "bt":[B
    .end local v1    # "c":I
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 788
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 795
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 797
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 783
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v5, :cond_4

    .line 785
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 792
    :cond_4
    :goto_6
    if-eqz v7, :cond_5

    .line 794
    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 798
    :cond_5
    :goto_7
    throw v9

    .line 786
    :catch_5
    move-exception v3

    .line 788
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 795
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v3

    .line 797
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 783
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fosfrom":Ljava/io/InputStream;
    .restart local v6    # "fosfrom":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fosfrom":Ljava/io/InputStream;
    .restart local v5    # "fosfrom":Ljava/io/InputStream;
    goto :goto_5

    .end local v5    # "fosfrom":Ljava/io/InputStream;
    .end local v7    # "fosto":Ljava/io/OutputStream;
    .restart local v6    # "fosfrom":Ljava/io/InputStream;
    .restart local v8    # "fosto":Ljava/io/OutputStream;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "fosto":Ljava/io/OutputStream;
    .restart local v7    # "fosto":Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6    # "fosfrom":Ljava/io/InputStream;
    .restart local v5    # "fosfrom":Ljava/io/InputStream;
    goto :goto_5

    .line 777
    :catch_7
    move-exception v4

    goto :goto_1

    .end local v5    # "fosfrom":Ljava/io/InputStream;
    .restart local v6    # "fosfrom":Ljava/io/InputStream;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6    # "fosfrom":Ljava/io/InputStream;
    .restart local v5    # "fosfrom":Ljava/io/InputStream;
    goto :goto_1

    .end local v5    # "fosfrom":Ljava/io/InputStream;
    .end local v7    # "fosto":Ljava/io/OutputStream;
    .restart local v0    # "bt":[B
    .restart local v1    # "c":I
    .restart local v6    # "fosfrom":Ljava/io/InputStream;
    .restart local v8    # "fosto":Ljava/io/OutputStream;
    :cond_6
    move-object v7, v8

    .end local v8    # "fosto":Ljava/io/OutputStream;
    .restart local v7    # "fosto":Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6    # "fosfrom":Ljava/io/InputStream;
    .restart local v5    # "fosfrom":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static copyFiles(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "fromFile"    # Ljava/lang/String;
    .param p1, "toFile"    # Ljava/lang/String;

    .prologue
    .line 728
    const/4 v0, 0x0

    .line 730
    .local v0, "copyResult":Z
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 731
    .local v4, "root":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move v1, v0

    .line 756
    .end local v0    # "copyResult":Z
    .local v1, "copyResult":I
    :goto_0
    return v1

    .line 735
    .end local v1    # "copyResult":I
    .restart local v0    # "copyResult":Z
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 736
    .local v2, "currentFiles":[Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    .local v5, "targetDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 739
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 741
    :cond_1
    const/4 v0, 0x1

    .line 742
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_3

    .line 744
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/droid/engine/Utils;->copyFiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 754
    :cond_2
    :goto_2
    if-nez v0, :cond_5

    :cond_3
    move v1, v0

    .line 756
    .restart local v1    # "copyResult":I
    goto :goto_0

    .line 748
    .end local v1    # "copyResult":I
    :cond_4
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ver.dat"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/droid/util/config;->PATH_LOCAL_SERVER_VER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "md5.dat"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 752
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/droid/engine/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 742
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public static cutTempToBuild(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/droid/util/config;->PATH_LOCAL_TEMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/droid/engine/Utils;->copyFiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/droid/util/config;->PATH_LOCAL_TEMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "md5.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "md5.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/droid/engine/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 724
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/droid/util/config;->PATH_LOCAL_TEMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/droid/engine/Utils;->deleteFiles(Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 928
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 929
    .local v3, "input":[B
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 930
    .local v1, "decodeResult":[B
    const/4 v4, 0x0

    .line 932
    .local v4, "js_data":[B
    :try_start_0
    invoke-static {v1}, Lcom/droid/engine/Security;->init([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 938
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 939
    :goto_0
    return-object v0

    .line 933
    :catch_0
    move-exception v2

    .line 935
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 936
    const-string v0, ""

    goto :goto_0
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .locals 4
    .param p0, "fromFile"    # Ljava/lang/String;

    .prologue
    .line 808
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 809
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 824
    :cond_0
    return-void

    .line 813
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 814
    .local v0, "currentFiles":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 816
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 818
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/droid/engine/Utils;->deleteFiles(Ljava/lang/String;)V

    .line 814
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    :cond_2
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static downloadFile(Ljava/net/URL;Ljava/io/File;Z)Z
    .locals 12
    .param p0, "ori"    # Ljava/net/URL;
    .param p1, "dest"    # Ljava/io/File;
    .param p2, "boo"    # Z

    .prologue
    const/4 v10, 0x0

    .line 356
    const/4 v5, 0x0

    .line 357
    .local v5, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 359
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/droid/engine/Utils;->getInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v5

    .line 360
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "filePath":Ljava/lang/String;
    const-string v1, ""

    .line 362
    .local v1, "dirPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 363
    const-string v11, "/"

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 364
    .local v4, "idx":I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_0

    .line 365
    const/4 v11, 0x0

    invoke-virtual {v3, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 367
    .end local v4    # "idx":I
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v9, "updateFile":Ljava/io/File;
    if-eqz p2, :cond_1

    .line 369
    move-object v9, p1

    .line 371
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 372
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 373
    :cond_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .local v8, "out":Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    :try_start_1
    new-array v0, v11, [B

    .line 377
    .local v0, "buf":[B
    if-eqz v5, :cond_5

    .line 378
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    if-lez v6, :cond_5

    .line 379
    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 382
    .end local v0    # "buf":[B
    .end local v6    # "len":I
    :catch_0
    move-exception v2

    move-object v7, v8

    .line 383
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .end local v9    # "updateFile":Ljava/io/File;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    if-eqz v5, :cond_3

    .line 391
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 392
    :cond_3
    if-eqz v7, :cond_4

    .line 393
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 394
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 400
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_2
    return v10

    .line 390
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "dirPath":Ljava/lang/String;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "updateFile":Ljava/io/File;
    :cond_5
    if-eqz v5, :cond_6

    .line 391
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 392
    :cond_6
    if-eqz v8, :cond_7

    .line 393
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 394
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 400
    :cond_7
    :goto_3
    const/4 v10, 0x1

    move-object v7, v8

    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 396
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 397
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 396
    .end local v0    # "buf":[B
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .end local v9    # "updateFile":Ljava/io/File;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .line 397
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 385
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 386
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 390
    if-eqz v5, :cond_8

    .line 391
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 392
    :cond_8
    if-eqz v7, :cond_4

    .line 393
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 394
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 396
    :catch_4
    move-exception v2

    .line 397
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 389
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 390
    :goto_5
    if-eqz v5, :cond_9

    .line 391
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 392
    :cond_9
    if-eqz v7, :cond_a

    .line 393
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 394
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 398
    :cond_a
    :goto_6
    throw v10

    .line 396
    :catch_5
    move-exception v2

    .line 397
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 389
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "dirPath":Ljava/lang/String;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "updateFile":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 385
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    move-object v7, v8

    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 382
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v9    # "updateFile":Ljava/io/File;
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 908
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 909
    .local v3, "dataByte":[B
    invoke-static {v3}, Lcom/droid/engine/Security;->init_([B)[B

    move-result-object v1

    .line 910
    .local v1, "aesDateByte":[B
    new-array v0, v4, [B

    aput-byte v4, v0, v5

    .line 911
    .local v0, "aesDate":[B
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v1, v4

    if-nez v4, :cond_0

    .line 912
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    new-array v2, v4, [B

    .line 913
    .local v2, "aesDateByteWithoutZero":[B
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 914
    invoke-static {v2, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 918
    .end local v2    # "aesDateByteWithoutZero":[B
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    return-object v4

    .line 916
    :cond_0
    invoke-static {v1, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static generateRandomString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 172
    const/16 v7, 0x12

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .line 174
    .local v2, "send":[I
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 175
    .local v1, "r":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v2

    if-ge v0, v7, :cond_1

    .line 177
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    rem-int v4, v7, v8

    .line 178
    .local v4, "temp1":I
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    rem-int v5, v7, v8

    .line 179
    .local v5, "temp2":I
    if-eq v4, v5, :cond_0

    .line 181
    aget v6, v2, v4

    .line 182
    .local v6, "temp3":I
    aget v7, v2, v5

    aput v7, v2, v4

    .line 183
    aput v6, v2, v5

    .line 175
    .end local v6    # "temp3":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v4    # "temp1":I
    .end local v5    # "temp2":I
    :cond_1
    const-string v3, ""

    .line 187
    .local v3, "sendString":Ljava/lang/String;
    const/4 v0, 0x0

    :goto_1
    array-length v7, v2

    if-ge v0, v7, :cond_2

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_2
    return-object v3

    .line 172
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
    .end array-data
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const-string v8, "0000000000000000"

    .line 114
    .local v8, "udid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 117
    .local v4, "mac":Ljava/lang/String;
    :try_start_0
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 118
    .local v3, "m":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 123
    .end local v3    # "m":Landroid/telephony/TelephonyManager;
    .local v2, "imei":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_5

    .line 124
    sget-boolean v11, Lcom/droid/util/config;->OLD_GAME_SUPPORT:Z

    if-eqz v11, :cond_3

    .line 126
    move-object v9, v2

    .line 127
    .local v9, "uid":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 128
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "android-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 129
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x10

    if-gt v11, v12, :cond_1

    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 118
    .end local v2    # "imei":Ljava/lang/String;
    .end local v9    # "uid":Ljava/lang/String;
    .restart local v3    # "m":Landroid/telephony/TelephonyManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 119
    .end local v3    # "m":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "imei":Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v9    # "uid":Ljava/lang/String;
    :cond_1
    move-object v8, v9

    :goto_2
    move-object v11, v8

    .line 167
    .end local v9    # "uid":Ljava/lang/String;
    :goto_3
    return-object v11

    .line 134
    .restart local v9    # "uid":Ljava/lang/String;
    :cond_2
    const-string v8, "android-0000000000000000"

    goto :goto_2

    .line 138
    .end local v9    # "uid":Ljava/lang/String;
    :cond_3
    move-object v8, v2

    .line 164
    :goto_4
    sget-boolean v11, Lcom/droid/util/config;->DEBUG:Z

    if-eqz v11, :cond_4

    .line 165
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/droid/util/config;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 166
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ifree"

    invoke-static {v12}, Lcom/droid/engine/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/droid/engine/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 167
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "droid-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 141
    :cond_5
    const-string v11, "wifi"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 142
    .local v6, "manager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 143
    .local v10, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v10, :cond_6

    .line 144
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 146
    :cond_6
    if-eqz v4, :cond_7

    .line 147
    const-string v11, ":"

    const-string v12, ""

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "."

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 148
    move-object v8, v4

    goto :goto_4

    .line 150
    :cond_7
    const-string v11, "macdata"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 151
    .local v5, "macdata":Landroid/content/SharedPreferences;
    const-string v11, "macRandom"

    const-string v12, ""

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 152
    invoke-static {}, Lcom/droid/engine/Utils;->generateRandomString()Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, "randomString":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 155
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "macRandom"

    invoke-interface {v1, v11, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "randomString":Ljava/lang/String;
    :goto_5
    move-object v8, v4

    goto/16 :goto_4

    .line 157
    :cond_8
    const-string v11, "macRandom"

    const-string v12, ""

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 15
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v11, 0x0

    const/16 v13, 0x400

    const/4 v14, 0x0

    .line 643
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v12

    if-nez v12, :cond_0

    .line 665
    :goto_0
    return-object v11

    .line 646
    :cond_0
    const/4 v3, 0x0

    .line 647
    .local v3, "digest":Ljava/security/MessageDigest;
    const/4 v7, 0x0

    .line 648
    .local v7, "in":Ljava/io/FileInputStream;
    new-array v1, v13, [B

    .line 651
    .local v1, "buffer":[B
    :try_start_0
    const-string v12, "MD5"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 652
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 653
    .end local v7    # "in":Ljava/io/FileInputStream;
    .local v8, "in":Ljava/io/FileInputStream;
    :goto_1
    const/4 v12, 0x0

    const/16 v13, 0x400

    :try_start_1
    invoke-virtual {v8, v1, v12, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    .local v9, "len":I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_1

    .line 654
    const/4 v12, 0x0

    invoke-virtual {v3, v1, v12, v9}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 657
    .end local v9    # "len":I
    :catch_0
    move-exception v4

    move-object v7, v8

    .line 658
    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 656
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "len":I
    :cond_1
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 662
    new-instance v5, Ljava/util/Formatter;

    invoke-direct {v5}, Ljava/util/Formatter;-><init>()V

    .line 663
    .local v5, "f":Ljava/util/Formatter;
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .local v0, "arr$":[B
    array-length v10, v0

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v10, :cond_2

    aget-byte v2, v0, v6

    .line 664
    .local v2, "c":B
    const-string v11, "%02x"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-virtual {v5, v11, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 663
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 665
    .end local v2    # "c":B
    :cond_2
    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 657
    .end local v0    # "arr$":[B
    .end local v5    # "f":Ljava/util/Formatter;
    .end local v6    # "i$":I
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v9    # "len":I
    .end local v10    # "len$":I
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public static getInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 5
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "conn":Ljava/net/URLConnection;
    const/4 v3, 0x0

    .line 413
    .local v3, "in":Ljava/io/InputStream;
    const/4 v1, 0x3

    .line 416
    .local v1, "count":I
    if-nez p0, :cond_0

    .line 417
    const/4 v4, 0x0

    .line 428
    :goto_0
    return-object v4

    .line 420
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 421
    const/16 v4, 0x7530

    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 422
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 424
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 428
    goto :goto_0

    .line 425
    :catch_0
    move-exception v2

    .line 426
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getLocalVersion(Ljava/lang/String;)V
    .locals 10
    .param p0, "verFile"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v3, 0x0

    .line 240
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 243
    .local v6, "lenght":I
    new-array v0, v6, [B

    .line 244
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 245
    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "info":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 247
    const-string v7, ","

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/droid/engine/DroidGame;->localVer:I

    .line 248
    sget-boolean v7, Lcom/droid/engine/Utils;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 249
    const-string v7, "Utils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u672c\u5730\u7248\u672c\u53f7:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/droid/engine/DroidGame;->localVer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    .line 260
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 266
    .end local v0    # "buffer":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "info":Ljava/lang/String;
    .end local v6    # "lenght":I
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-void

    .line 252
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "info":Ljava/lang/String;
    .restart local v6    # "lenght":I
    :cond_2
    :try_start_3
    sget-boolean v7, Lcom/droid/engine/Utils;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 253
    const-string v7, "Utils"

    const-string v8, "No Version Found !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 255
    .end local v0    # "buffer":[B
    .end local v5    # "info":Ljava/lang/String;
    .end local v6    # "lenght":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 256
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 258
    if-eqz v3, :cond_1

    .line 260
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 261
    :catch_1
    move-exception v1

    .line 262
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "info":Ljava/lang/String;
    .restart local v6    # "lenght":I
    :catch_2
    move-exception v1

    .line 262
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 263
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 258
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "info":Ljava/lang/String;
    .end local v6    # "lenght":I
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_3

    .line 260
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 263
    :cond_3
    :goto_4
    throw v7

    .line 261
    :catch_3
    move-exception v1

    .line 262
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 255
    .end local v2    # "file":Ljava/io/File;
    :catch_4
    move-exception v1

    goto :goto_2

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "info":Ljava/lang/String;
    .restart local v6    # "lenght":I
    :cond_4
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static getMD5FileList(Landroid/content/Context;)Ljava/util/Map;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/net/URL;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 575
    .local v8, "fileList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URL;Ljava/io/File;>;"
    sget-object v25, Lcom/droid/engine/Utils;->saveStage:Landroid/content/SharedPreferences;

    const-string v26, "CURRENTSTAGE"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 576
    .local v4, "currentStage":I
    sget-object v25, Lcom/droid/engine/Utils;->saveStage:Landroid/content/SharedPreferences;

    const-string v26, "UPDATESTAGE"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 577
    .local v23, "updateStage":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/droid/engine/DroidGame;->serverURL:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "md5.dat"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/droid/engine/Utils;->readServerFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 579
    .local v9, "fileString":Ljava/lang/String;
    move/from16 v0, v23

    if-ge v4, v0, :cond_0

    .line 580
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_0
    move/from16 v0, v23

    if-gt v12, v0, :cond_1

    .line 581
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v27, Lcom/droid/engine/DroidGame;->serverURL:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "md5.dat"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/droid/engine/Utils;->readServerFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 580
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 585
    .end local v12    # "i":I
    :cond_0
    const/4 v12, 0x1

    .restart local v12    # "i":I
    :goto_1
    if-gt v12, v4, :cond_1

    .line 586
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v27, Lcom/droid/engine/DroidGame;->serverURL:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "md5.dat"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/droid/engine/Utils;->readServerFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 585
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 589
    :cond_1
    if-eqz v9, :cond_6

    .line 590
    const-string v25, ";"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 591
    .local v22, "paths":[Ljava/lang/String;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 592
    .local v19, "md5List":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v3, v22

    .local v3, "arr$":[Ljava/lang/String;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_2
    if-ge v13, v14, :cond_3

    aget-object v20, v3, v13

    .line 593
    .local v20, "path":Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 594
    const-string v25, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 595
    .local v21, "pathInfo":[Ljava/lang/String;
    if-eqz v21, :cond_2

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    const/16 v25, 0x1

    aget-object v25, v21, v25

    const-string v26, "ver.dat"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    const/16 v25, 0x1

    aget-object v25, v21, v25

    const-string v26, "md5.dat"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 598
    const/16 v25, 0x1

    aget-object v25, v21, v25

    const/16 v26, 0x0

    aget-object v26, v21, v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .end local v21    # "pathInfo":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 604
    .end local v20    # "path":Ljava/lang/String;
    :cond_3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "md5.dat"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/droid/engine/Utils;->readFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 605
    .local v15, "local_fileString":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 606
    const-string v25, ";"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 607
    .local v18, "local_paths":[Ljava/lang/String;
    move-object/from16 v3, v18

    array-length v14, v3

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_5

    aget-object v16, v3, v13

    .line 608
    .local v16, "local_path":Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 609
    const-string v25, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 610
    .local v17, "local_pathInfo":[Ljava/lang/String;
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_4

    .line 611
    const/16 v25, 0x1

    aget-object v25, v17, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    const/16 v25, 0x0

    aget-object v25, v17, v25

    const/16 v26, 0x1

    aget-object v26, v17, v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 612
    const/16 v25, 0x1

    aget-object v25, v17, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .end local v17    # "local_pathInfo":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 619
    .end local v16    # "local_path":Ljava/lang/String;
    .end local v18    # "local_paths":[Ljava/lang/String;
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 621
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 622
    .local v10, "file_path":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/droid/engine/DroidGame;->serverURL:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 623
    .local v24, "url":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/droid/util/config;->PATH_LOCAL_TEMP:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 626
    .local v11, "filepath":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    .local v7, "file":Ljava/io/File;
    new-instance v25, Ljava/net/URL;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 628
    .end local v7    # "file":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 630
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 634
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "file_path":Ljava/lang/String;
    .end local v11    # "filepath":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "len$":I
    .end local v15    # "local_fileString":Ljava/lang/String;
    .end local v19    # "md5List":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "paths":[Ljava/lang/String;
    .end local v24    # "url":Ljava/lang/String;
    :cond_6
    return-object v8
.end method

.method public static getMacAdress(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const-string v2, ""

    .line 95
    .local v2, "macAdress":Ljava/lang/String;
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 96
    .local v3, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 97
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "mac":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 100
    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 102
    move-object v2, v1

    .line 106
    .end local v1    # "mac":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static getServerVersion(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, "conn":Ljava/net/URLConnection;
    const/4 v0, 0x0

    .line 304
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/droid/util/config;->SERVER_VALUE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/droid/util/config;->PATH_LOCAL_SERVER_VER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?_p="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/droid/util/config;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 305
    .local v6, "url":Ljava/net/URL;
    sget-boolean v9, Lcom/droid/engine/Utils;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 306
    new-instance v6, Ljava/net/URL;

    .end local v6    # "url":Ljava/net/URL;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/droid/util/config;->PATH_DEBUG_SERVER_VER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?_p="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/droid/util/config;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v6    # "url":Ljava/net/URL;
    :cond_0
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 310
    const/16 v9, 0x7530

    invoke-virtual {v2, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 311
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 313
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 314
    .local v4, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "s":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_1

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 318
    sget-object v9, Lcom/droid/engine/DroidGame;->versionInfo:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 322
    :cond_1
    sget-boolean v9, Lcom/droid/engine/Utils;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 323
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v10, Lcom/droid/engine/DroidGame;->versionInfo:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 326
    :cond_2
    sget-object v9, Lcom/droid/engine/DroidGame;->versionInfo:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, "versionInfos":[Ljava/lang/String;
    if-eqz v7, :cond_4

    array-length v9, v7

    if-lez v9, :cond_4

    .line 328
    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, "versions":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/droid/engine/DroidGame;->serverVer:I

    .line 330
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 331
    :cond_3
    const/4 v9, 0x1

    aget-object v9, v8, v9

    sput-object v9, Lcom/droid/engine/DroidGame;->serverURL:Ljava/lang/String;

    .line 333
    .end local v8    # "versions":[Ljava/lang/String;
    :cond_4
    sget-boolean v9, Lcom/droid/engine/Utils;->DEBUG:Z

    if-eqz v9, :cond_5

    .line 334
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u670d\u52a1\u5668\u7248\u672c\u53f7:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/droid/engine/DroidGame;->serverVer:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 339
    :cond_5
    if-eqz v1, :cond_6

    .line 340
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    move-object v0, v1

    .line 346
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "versionInfos":[Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_7
    :goto_1
    return-void

    .line 341
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "s":Ljava/lang/String;
    .restart local v6    # "url":Ljava/net/URL;
    .restart local v7    # "versionInfos":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 342
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 344
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 335
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "versionInfos":[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 336
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    if-eqz v0, :cond_7

    .line 340
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 341
    :catch_2
    move-exception v3

    .line 342
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 338
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 339
    :goto_3
    if-eqz v0, :cond_8

    .line 340
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 343
    :cond_8
    :goto_4
    throw v9

    .line 341
    :catch_3
    move-exception v3

    .line 342
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 338
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 335
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 945
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 946
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 947
    .local v2, "sign":Landroid/content/pm/Signature;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/droid/engine/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 951
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "sign":Landroid/content/pm/Signature;
    :goto_0
    return-object v3

    .line 948
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 951
    const-string v3, ""

    goto :goto_0
.end method

.method public static getSyscode(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-string v8, "0000000000000000"

    .line 196
    .local v8, "udid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 199
    .local v4, "mac":Ljava/lang/String;
    :try_start_0
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 200
    .local v3, "m":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 205
    .end local v3    # "m":Landroid/telephony/TelephonyManager;
    .local v2, "imei":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    .line 206
    move-object v8, v2

    .line 230
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ifree-syscode"

    invoke-static {v11}, Lcom/droid/engine/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/droid/engine/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 231
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "droid-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 200
    .end local v2    # "imei":Ljava/lang/String;
    .restart local v3    # "m":Landroid/telephony/TelephonyManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 201
    .end local v3    # "m":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "imei":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 209
    .local v6, "manager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 210
    .local v9, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_2

    .line 211
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 213
    :cond_2
    if-eqz v4, :cond_3

    .line 214
    const-string v10, ":"

    const-string v11, ""

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "."

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 215
    move-object v8, v4

    goto :goto_1

    .line 217
    :cond_3
    const-string v10, "macdata"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 218
    .local v5, "macdata":Landroid/content/SharedPreferences;
    const-string v10, "macRandom"

    const-string v11, ""

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 219
    invoke-static {}, Lcom/droid/engine/Utils;->generateRandomString()Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "randomString":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 222
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "macRandom"

    invoke-interface {v1, v10, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "randomString":Ljava/lang/String;
    :goto_2
    move-object v8, v4

    goto/16 :goto_1

    .line 224
    :cond_4
    const-string v10, "macRandom"

    const-string v11, ""

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public static httpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 552
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 554
    .local v0, "http":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 556
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 558
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 564
    .end local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v2

    .line 562
    :catch_0
    move-exception v3

    .line 564
    :cond_0
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 561
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static httpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 534
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 536
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 538
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 546
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v3

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 546
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_1
    const-string v3, "FAILED,"

    goto :goto_0

    .line 543
    :catch_1
    move-exception v0

    .line 544
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static initSharedPreferences(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 65
    const-string v0, "SAVESTAGE_INFOS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/droid/engine/Utils;->saveStage:Landroid/content/SharedPreferences;

    .line 66
    return-void
.end method

.method public static invokeParentOrSubclassMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 9
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 970
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, p1, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-boolean v6, Lcom/droid/util/config;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 972
    const-string v6, "watch:"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8c03\u7528\u5b50\u7c7b\u65b9\u6cd5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 973
    :catch_0
    move-exception v1

    .line 976
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 977
    .local v5, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v6, Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eq v0, v6, :cond_1

    .line 979
    :try_start_2
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v5

    .line 977
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 985
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 987
    if-eqz v5, :cond_0

    .line 989
    :try_start_4
    invoke-virtual {v5, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-boolean v6, Lcom/droid/util/config;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 991
    const-string v6, "watch:"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8c03\u7528\u7236\u7c7b\u65b9\u6cd5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 993
    :catch_1
    move-exception v2

    .line 994
    .local v2, "e1":Ljava/lang/IllegalArgumentException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1001
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e1":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    goto :goto_0

    .line 995
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v3

    .line 996
    .local v3, "e2":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 997
    .end local v3    # "e2":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v4

    .line 998
    .local v4, "e3":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 981
    .end local v4    # "e3":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v6

    goto :goto_2
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 72
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 73
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 76
    .local v3, "messageDigest":[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v1, "hexString":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 78
    aget-byte v5, v3, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 80
    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v4    # "v":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 90
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hexString":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .end local v3    # "messageDigest":[B
    :goto_1
    return-object v5

    .line 86
    :catch_0
    move-exception v5

    .line 90
    const-string v5, ""

    goto :goto_1
.end method

.method public static readFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 697
    const/4 v3, 0x0

    .line 699
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 700
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 702
    .local v6, "lenght":I
    new-array v0, v6, [B

    .line 703
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 704
    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 709
    .local v5, "info":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 711
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 717
    .end local v0    # "buffer":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "info":Ljava/lang/String;
    .end local v6    # "lenght":I
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_1
    return-object v5

    .line 712
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "info":Ljava/lang/String;
    .restart local v6    # "lenght":I
    :catch_0
    move-exception v1

    .line 713
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 706
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "info":Ljava/lang/String;
    .end local v6    # "lenght":I
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 707
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 709
    if-eqz v3, :cond_1

    .line 711
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 717
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 712
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 713
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 709
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_2

    .line 711
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 714
    :cond_2
    :goto_5
    throw v7

    .line 712
    :catch_3
    move-exception v1

    .line 713
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 709
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 706
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static readServerFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_url"    # Ljava/lang/String;

    .prologue
    .line 440
    if-eqz p1, :cond_0

    .line 441
    const-string v8, "%@"

    sget-object v9, Lcom/droid/util/config;->SERVER_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 443
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 444
    .local v5, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 445
    .local v2, "conn":Ljava/net/URLConnection;
    const/4 v0, 0x0

    .line 447
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    .local v7, "url":Ljava/net/URL;
    if-nez v7, :cond_2

    .line 450
    const/4 v8, 0x0

    .line 470
    if-eqz v0, :cond_1

    .line 471
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 476
    .end local v7    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-object v8

    .line 472
    .restart local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 473
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 453
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 454
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 455
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 457
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 458
    .local v4, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 461
    .local v6, "s":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_3

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 462
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    goto :goto_1

    .line 470
    :cond_3
    if-eqz v1, :cond_4

    .line 471
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v0, v1

    .line 476
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 472
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "s":Ljava/lang/String;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 473
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 475
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 466
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    :catch_2
    move-exception v3

    .line 467
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 470
    if-eqz v0, :cond_5

    .line 471
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 472
    :catch_3
    move-exception v3

    .line 473
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 469
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 470
    :goto_4
    if-eqz v0, :cond_6

    .line 471
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 474
    :cond_6
    :goto_5
    throw v8

    .line 472
    :catch_4
    move-exception v3

    .line 473
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 469
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 466
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static saveStage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1007
    sget-object v3, Lcom/droid/engine/Utils;->saveStage:Landroid/content/SharedPreferences;

    const-string v4, "CURRENTSTAGE"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1008
    .local v0, "currentStage":I
    sget-object v3, Lcom/droid/engine/Utils;->saveStage:Landroid/content/SharedPreferences;

    const-string v4, "UPDATESTAGE"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1009
    .local v2, "updateStage":I
    sget-object v3, Lcom/droid/engine/Utils;->saveStage:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1010
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-ge v0, v2, :cond_0

    .line 1011
    move v0, v2

    .line 1013
    :cond_0
    const-string v3, "CURRENTSTAGE"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1014
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1015
    return-void
.end method

.method public static updateJsInfomation(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 480
    const/4 v3, 0x0

    .line 481
    .local v3, "out":Ljava/io/OutputStream;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 482
    .local v5, "outRect":Landroid/graphics/Rect;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 483
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 485
    .local v6, "statusBarHeight":I
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "data/boot.js"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_1
    sget v8, Lcom/droid/engine/DroidGame;->screenWidth:I

    .line 488
    .local v8, "width":I
    sget v2, Lcom/droid/engine/DroidGame;->screenHeight:I

    .line 490
    .local v2, "height":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "window.webviewsize={width:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",height:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-int v11, v2, v6

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "};"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 492
    .local v7, "webSize":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 493
    sget-boolean v9, Lcom/droid/engine/Utils;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 494
    const-string v9, "Utils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u4fee\u6b63   data/boot.js --> window._l=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/droid/util/config;->LANGUAGE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\';window._p=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/droid/util/config;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\';window._paycenter="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/droid/util/config;->ENABLE_PAYCENTER:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";window._in_device=true;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "window._fullscreen="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v9, Lcom/droid/util/config;->ENABLE_INCESSANTLY:Z

    if-nez v9, :cond_3

    move v9, v10

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ";window._l=\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lcom/droid/util/config;->LANGUAGE:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\';window._p=\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lcom/droid/util/config;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\';window._paycenter="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v11, Lcom/droid/util/config;->ENABLE_PAYCENTER:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ";window._in_device=true;window.devicesize={width:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",height:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "};"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "window._third_platform="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v11, Lcom/droid/util/config;->ENABLE_THIRDPLATFORM:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write([B)V

    .line 496
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 501
    :cond_1
    if-eqz v4, :cond_2

    .line 503
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 508
    :cond_2
    :goto_1
    sput v10, Lcom/droid/engine/Update;->updated:I

    move-object v3, v4

    .line 510
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "height":I
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v7    # "webSize":Ljava/lang/String;
    .end local v8    # "width":I
    .restart local v3    # "out":Ljava/io/OutputStream;
    :goto_2
    return-void

    .line 495
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "height":I
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v7    # "webSize":Ljava/lang/String;
    .restart local v8    # "width":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 498
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "height":I
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v7    # "webSize":Ljava/lang/String;
    .end local v8    # "width":I
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 501
    if-eqz v3, :cond_4

    .line 503
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 508
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    sput v10, Lcom/droid/engine/Update;->updated:I

    goto :goto_2

    .line 504
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 505
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 501
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v3, :cond_5

    .line 503
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 508
    :cond_5
    :goto_6
    sput v10, Lcom/droid/engine/Update;->updated:I

    throw v9

    .line 504
    :catch_3
    move-exception v0

    .line 505
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 501
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_5

    .line 498
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method public static updateVersionFile(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "verFile"    # Ljava/lang/String;
    .param p2, "ver"    # I

    .prologue
    const/4 v7, 0x1

    .line 269
    sget v4, Lcom/droid/engine/DroidGame;->serverVer:I

    sget v5, Lcom/droid/engine/DroidGame;->localVer:I

    if-gt v4, v5, :cond_0

    .line 294
    :goto_0
    return-void

    .line 271
    :cond_0
    const/4 v2, 0x0

    .line 273
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    if-eqz v3, :cond_2

    .line 276
    :try_start_1
    sget-boolean v4, Lcom/droid/engine/Utils;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 277
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4fee\u6b63\u672c\u5730\u7248\u672c:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 279
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/droid/util/config;->ROOT_UPDATE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ver.dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/droid/engine/Utils;->getLocalVersion(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    :cond_2
    if-eqz v3, :cond_3

    .line 287
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 292
    :cond_3
    :goto_1
    sput v7, Lcom/droid/engine/Update;->updated:I

    move-object v2, v3

    .line 293
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 288
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 282
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    if-eqz v2, :cond_4

    .line 287
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    sput v7, Lcom/droid/engine/Update;->updated:I

    goto :goto_0

    .line 288
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_5

    .line 287
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 292
    :cond_5
    :goto_5
    sput v7, Lcom/droid/engine/Update;->updated:I

    throw v4

    .line 288
    :catch_3
    move-exception v0

    .line 289
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_4

    .line 282
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static writeFileData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 670
    const/4 v3, 0x0

    .line 672
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 673
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 674
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 675
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 676
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 678
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    if-eqz v4, :cond_1

    .line 680
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 681
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 686
    :cond_1
    if-eqz v4, :cond_4

    .line 688
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 694
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_2
    :goto_0
    return-void

    .line 689
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 690
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 691
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 683
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 684
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 686
    if-eqz v3, :cond_2

    .line 688
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 689
    :catch_2
    move-exception v1

    .line 690
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 686
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_3

    .line 688
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 691
    :cond_3
    :goto_3
    throw v5

    .line 689
    :catch_3
    move-exception v1

    .line 690
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 686
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 683
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_1

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :cond_4
    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method
