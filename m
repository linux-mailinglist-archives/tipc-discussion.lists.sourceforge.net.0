Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9129CD6E58
	for <lists+tipc-discussion@lfdr.de>; Tue, 15 Oct 2019 06:50:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iKEmR-0006tU-SW; Tue, 15 Oct 2019 04:49:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iKEmR-0006tO-3o
 for tipc-discussion@lists.sourceforge.net; Tue, 15 Oct 2019 04:49:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hYgpAEIZp6dnJRM7SierRxENqqx5D1cnJ2C+u5Uqq7Y=; b=ChzBcTQ3czf5ZrM1YhhsJWI9vR
 s6x2/gzPXOduC/LUPHBeO3vlamcZizTxKejGlhokLlw5/nySs/T8OHvXMbM7lVi2dKG4T8HyBIKjM
 FE+hgEkbU6TNQ+owPvgRySk0x+/p9UwWpOg/9tsIy71a0CbqlE8FvJ9erqZZ7am+mKLI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hYgpAEIZp6dnJRM7SierRxENqqx5D1cnJ2C+u5Uqq7Y=; b=XivWli70JcQnjoZhA/PrSNlNph
 5OncmaXe9yc80QyC6xbiYcx+3WWajhds9jRQPryuKK/r//e/rGa1D52Ptn4c8U+6N1i5jG5Ro5JFy
 g8DcXqMUImeN2dXHMfDaZCscI/lvGFYd6CrFDVW+dCuX8wvyF3vHVfnWM5tQv2XZLnGA=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iKEmN-001RKg-Dj
 for tipc-discussion@lists.sourceforge.net; Tue, 15 Oct 2019 04:49:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 1BAE348C13;
 Tue, 15 Oct 2019 15:49:43 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1571114982; bh=QVo9nWUYIP/EWC
 oh8n6bxaHHHxp/jzvrzldfcz6U0ac=; b=R7CaOUdq2IUgzannEIdflF7c5XNQpr
 OS9T5NfcFroLXymJaEinxxKPUqYJSWO9Npg32raA7j9O04J6GBs4xYS4DbeHGgP5
 QLARf3DF4e9q4LxH5A9MGgV60tybLBMkUlGIAwux6msb7Vula4cevZ/5IdqFg9en
 P1D/QXjrhCMUc=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id hBVlL1V93l9M; Tue, 15 Oct 2019 15:49:42 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id A788A48C9A;
 Tue, 15 Oct 2019 15:49:42 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id A5F3748C13;
 Tue, 15 Oct 2019 15:49:41 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Xue, Ying'" <Ying.Xue@windriver.com>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20190829113607.13772-1-tuong.t.lien@dektech.com.au>
 <20190829113607.13772-2-tuong.t.lien@dektech.com.au>
 <25A14D9CFAB7B34FB9440F90AFD35233013CA328B3@ALA-MBD.corp.ad.wrs.com>
In-Reply-To: <25A14D9CFAB7B34FB9440F90AFD35233013CA328B3@ALA-MBD.corp.ad.wrs.com>
Date: Tue, 15 Oct 2019 11:48:31 +0700
Message-ID: <174a01d58313$cca5e8a0$65f1b9e0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQLbwsHF9wbQlAzY2mrDrM3WljeEMwFVLH4NAf/SpT+lM/Ov0A==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iKEmN-001RKg-Dj
Subject: Re: [tipc-discussion] [PATCH RFC 2/2] tipc: improve message
 bundling algorithm
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

Hi Ying,

Agree, it's hard to trace...
I've changed the way we approach, will post it as a new patch, please take a
look from there!
Thanks a lot!

BR/Tuong

-----Original Message-----
From: Xue, Ying <Ying.Xue@windriver.com> 
Sent: Friday, October 11, 2019 9:52 PM
To: Tuong Lien <tuong.t.lien@dektech.com.au>;
tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com;
maloy@donjonn.com
Subject: RE: [PATCH RFC 2/2] tipc: improve message bundling algorithm

I can recognize this is a good improvement except that the following switch
cases of return values of tipc_msg_try_bundle() are not very friendly for
code reader. Although I do understand their real meanings, I have to spend
time checking its context back and forth. At least we should the meaningless
hard code case numbers or we try to change return value numbers of
tipc_msg_try_bundle().

+		n = tipc_msg_try_bundle(&l->backlog[imp].target_bskb, skb,
+					mtu - INT_H_SIZE,
+					l->addr);
+		switch (n) {
+		case 0:
+			break;
+		case 1:
+			__skb_queue_tail(backlogq, skb);
 			l->backlog[imp].len++;
-			l->stats.sent_bundled++;
+			continue;
+		case 2:
 			l->stats.sent_bundles++;
+			l->stats.sent_bundled++;
+		default:
+			kfree_skb(skb);
+			l->stats.sent_bundled++;
 			continue;






_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
