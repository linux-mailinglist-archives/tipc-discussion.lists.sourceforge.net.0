Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C619458577
	for <lists+tipc-discussion@lfdr.de>; Sun, 21 Nov 2021 18:32:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1moqh9-0006YL-UN; Sun, 21 Nov 2021 17:32:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1moqh8-0006YF-TE
 for tipc-discussion@lists.sourceforge.net; Sun, 21 Nov 2021 17:32:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gcd/+bVis+JiiLaGKyyno9B85Gq/9PgmQrY9edyMVaw=; b=D9zZ1xBopJAobvmYlKomOmviP8
 SSmXvpsHTvo5/yZUI8oGPgntQ7gQQx+86JxAjRUraRS06PsiL5WpRHRJ42bS6P0HbU7T//34xSVL3
 zm8nueSF081Qu75pKkdDyFI9k5igD1t6x5XWhtkx7BVo5qvmwZD36hXhKPmFVd6Ih9hM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gcd/+bVis+JiiLaGKyyno9B85Gq/9PgmQrY9edyMVaw=; b=H
 M7qBmVHYg1IoDYFp4Wc1OrWcd5kCq8Z1jKAoLyFLlXjOyf9GtxtQLRyYdsGo5W2StN98uFxIVkbq5
 dYTjV4aq9s1Nnv57FKDu8CizOrD4PWeJi++UsVMZu/P1y6WoKXoxbBA47+8MV21xBFsAFRW4IimDr
 lxkop/P3GTAjA6q8=;
Received: from mail-qt1-f180.google.com ([209.85.160.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1moqh6-003fPT-I0
 for tipc-discussion@lists.sourceforge.net; Sun, 21 Nov 2021 17:32:03 +0000
Received: by mail-qt1-f180.google.com with SMTP id t34so14411032qtc.7
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 21 Nov 2021 09:32:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gcd/+bVis+JiiLaGKyyno9B85Gq/9PgmQrY9edyMVaw=;
 b=QNV3/Vo+kEbmsks7FPytmCvvo1xVJxlhLVJ7vNqECuMDuyv6RhbLq9FW2MZPh4QnNw
 MxIHsWhPes4NtFW5gqDmJ90cf5iKGrS5vzEVF7BumQdED2vz+I6/oeDAqx1WbI+TLc6s
 9cu4RMBpoFS7+4pdX8gW0Wy1rtSt3egSWURNMgGmi2vmvYpccKDu0f9wriHLwfaCgPHK
 /Of+Un82pBm9JHZqjIXmRMEqMAtIosMit3GwNGJNwCruZp7ozcBE3S2HzY50zb2Y8CfW
 NaqrE4X58SIOJ0iF4i8xOco36GO+6cuhPy16d+QAQ3yZY8HIFOQp+21l8jFUUXAkNUVh
 mN0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gcd/+bVis+JiiLaGKyyno9B85Gq/9PgmQrY9edyMVaw=;
 b=MYpGUOUdENxx7mGJT2Sy0/ePW0MZTf5UQl4pgeeQAzPIvD/8n5oiKyrNu7RpFf2VZj
 szndn8jkMMc3kwkFlpAQGhzluRUs1vAOofNpStOJAO1fi8LOC3jIQI/6rZEgr4Rr7OFq
 l7QbgqQkIempv3rQOZ7kvoq+qIOMAA5YDGB6aYAokDcf1lCWYI62Q0B2dGaCEuOGvESk
 x98L0iZHEhPVunD/YTVLOIwCGn14b3apfYNgHJARYkyUD6tOToYHU0dGfe1P5yTRWpsW
 zrcXM7jEIXtE08bg9407ixLTtm3L6QXTzgDXvZuxtcnRpW7Tq3HnY7TyVIiwGKxhDfKV
 9R/A==
X-Gm-Message-State: AOAM530gMt2gZCUocCb8mxTl8BBIHwX2oorVZ6T0ymPoXgdIa8Bh9SKP
 VgOAsO6u5pJhWfDphDZZqw8JAzP7s/UkmA==
X-Google-Smtp-Source: ABdhPJw8numz1sPWM8YYnyhjFiN/Eo7SB33TXgspU+SDRJiA51Or5sf4eFkv1m2JMh3g5ZNil+XcHg==
X-Received: by 2002:a05:622a:44a:: with SMTP id
 o10mr24159663qtx.251.1637515913839; 
 Sun, 21 Nov 2021 09:31:53 -0800 (PST)
Received: from wsfd-netdev15.ntdv.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id 14sm3194418qtx.84.2021.11.21.09.31.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Nov 2021 09:31:53 -0800 (PST)
From: Xin Long <lucien.xin@gmail.com>
To: tipc-discussion@lists.sourceforge.net
Date: Sun, 21 Nov 2021 12:31:52 -0500
Message-Id: <4666eadb17aa2ed47fadee50b4813be38cf7da2d.1637515912.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When a skb comes to tipc_aead_encrypt(), it's always linear.
 The unlikely check 'skb_cloned(skb) && tailen <= skb_tailroom(skb)' can
 completely
 be taken care of in skb_cow_data() by the code in branch [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.180 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.180 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1moqh6-003fPT-I0
Subject: [tipc-discussion] [PATCH net-next] tipc: delete the unlikely branch
 in tipc_aead_encrypt
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

When a skb comes to tipc_aead_encrypt(), it's always linear. The
unlikely check 'skb_cloned(skb) && tailen <= skb_tailroom(skb)'
can completely be taken care of in skb_cow_data() by the code
in branch "if (!skb_has_frag_list())".

Also, remove the 'TODO:' annotation, as the pages in skbs are not
writable, see more on commit 3cf4375a0904 ("tipc: do not write
skb_shinfo frags when doing decrytion").

Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/crypto.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
index e701651f6533..c5eefe4a8c4d 100644
--- a/net/tipc/crypto.c
+++ b/net/tipc/crypto.c
@@ -757,21 +757,10 @@ static int tipc_aead_encrypt(struct tipc_aead *aead, struct sk_buff *skb,
 			 skb_tailroom(skb), tailen);
 	}
 
-	if (unlikely(!skb_cloned(skb) && tailen <= skb_tailroom(skb))) {
-		nsg = 1;
-		trailer = skb;
-	} else {
-		/* TODO: We could avoid skb_cow_data() if skb has no frag_list
-		 * e.g. by skb_fill_page_desc() to add another page to the skb
-		 * with the wanted tailen... However, page skbs look not often,
-		 * so take it easy now!
-		 * Cloned skbs e.g. from link_xmit() seems no choice though :(
-		 */
-		nsg = skb_cow_data(skb, tailen, &trailer);
-		if (unlikely(nsg < 0)) {
-			pr_err("TX: skb_cow_data() returned %d\n", nsg);
-			return nsg;
-		}
+	nsg = skb_cow_data(skb, tailen, &trailer);
+	if (unlikely(nsg < 0)) {
+		pr_err("TX: skb_cow_data() returned %d\n", nsg);
+		return nsg;
 	}
 
 	pskb_put(skb, trailer, tailen);
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
