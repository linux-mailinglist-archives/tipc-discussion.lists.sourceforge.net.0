Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F025A1803
	for <lists+tipc-discussion@lfdr.de>; Thu, 29 Aug 2019 13:18:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1i3IRz-0006PG-7K; Thu, 29 Aug 2019 11:18:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1i3IRw-0006P3-Dr
 for tipc-discussion@lists.sourceforge.net; Thu, 29 Aug 2019 11:18:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h0wY7S1ThTQrPFR6+72NkOU2OMFatX1VvckNChFiX8E=; b=BvYyjsmbv52pKT0QguRfHDPefj
 pjCl5Jld0SuzsJqy2P6ckSktY2G8E5Nmjeqq0nGYDMBsUTrBtp4t5ywlx7pWMaEgLWk7X0L8aYDLG
 MgYtIeC9mR3EMOyh98YJFNTmM0VrZ9pWPDRV+bbKjIxJUA2tQqzQ6KXrZvMlU6z6YR4A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h0wY7S1ThTQrPFR6+72NkOU2OMFatX1VvckNChFiX8E=; b=d5ikR2QxBwthTRIvyHnZVQ//k5
 mpyLyaBIM8eczEV5LUTluieQvY4x/uiplVN1NVdB38ZXGSlX2VMD1REXT0H4BoAfCn0aak80a0vUF
 2xFgm0vRgQA6bkfYP6tRB7a58RVk9gjK4UXjFQXjg6f1JnKuX+mSjrYEZj1fQ/ngroy4=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i3IRt-002lJE-E2
 for tipc-discussion@lists.sourceforge.net; Thu, 29 Aug 2019 11:18:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 80EC74930F;
 Thu, 29 Aug 2019 21:18:32 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1567077512; bh=OYqngf85otgIEw
 Anwde+IIk/7QhFgo90h00B1pVpGn8=; b=GUrs9Jb+GYxypzy4JMxGTM5LtAv1/T
 x5ZNXJ6j30Sx4TB56ENX7Jgm1odhzJtaeyieDj8l0wVzQ5nDU4x7Jf5CtWaJYt0E
 F3rPVpvmmG0m0PeuyOcnAHyGU+JfvKW9Quw78BLcVLvPZeilXLfYeDfaUt9S3iMX
 ddl5AwPrODdsE=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id q1c2L-A7db1l; Thu, 29 Aug 2019 21:18:32 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 2942849314;
 Thu, 29 Aug 2019 21:18:31 +1000 (AEST)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id E84BF4930F;
 Thu, 29 Aug 2019 21:18:29 +1000 (AEST)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Jon Maloy'" <jon.maloy@ericsson.com>, <maloy@donjonn.com>,
 <ying.xue@windriver.com>, <tipc-discussion@lists.sourceforge.net>
References: <20190826114558.12881-1-tuong.t.lien@dektech.com.au>
 <CH2PR15MB357545567CDB5599A33BCFF69AA30@CH2PR15MB3575.namprd15.prod.outlook.com>
In-Reply-To: <CH2PR15MB357545567CDB5599A33BCFF69AA30@CH2PR15MB3575.namprd15.prod.outlook.com>
Date: Thu, 29 Aug 2019 18:18:26 +0700
Message-ID: <0bd301d55e5b$7d366790$77a336b0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ1OXJMpclekQ3pzhu/y/OnEzphWQHrYMx8pcLo9XA=
Content-Language: en-us
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i3IRt-002lJE-E2
Subject: Re: [tipc-discussion] [PATCH RFC] tipc: improve bundle algorithm
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

Hi Jon,

Thanks, yes we don't need that if-clause anymore, I have updated it along
with a commit message.
Also, I will send you another patch as mentioned before.

BR/Tuong

-----Original Message-----
From: Jon Maloy <jon.maloy@ericsson.com> 
Sent: Wednesday, August 28, 2019 9:29 PM
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; maloy@donjonn.com;
ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
Subject: RE: [PATCH RFC] tipc: improve bundle algorithm



> -----Original Message-----
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Sent: 26-Aug-19 07:46
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com; tipc-discussion@lists.sourceforge.net
> Subject: [PATCH RFC] tipc: improve bundle algorithm
> 
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/link.c | 29 ++++++++++++++++++-----------  net/tipc/msg.c  |  4
++--
>  2 files changed, 20 insertions(+), 13 deletions(-)


[...]

> @@ -544,7 +544,7 @@ bool tipc_msg_make_bundle(struct sk_buff **skb,
> struct tipc_msg *msg,
>  	tipc_msg_init(msg_prevnode(msg), bmsg, MSG_BUNDLER, 0,
>  		      INT_H_SIZE, dnode);
>  	if (msg_isdata(msg))
> -		msg_set_importance(bmsg, TIPC_CRITICAL_IMPORTANCE);
> +		msg_set_importance(bmsg, msg_importance(msg));
>  	else
>  		msg_set_importance(bmsg, TIPC_SYSTEM_IMPORTANCE);

The if-clause is not necessary any more. You can assign the importance of
the inner message directly to the bundle.
You can do that here, or inside the "tipc_make_bundle" branch of
tipc_link_xmit().
Otherwise I think this is a smart, although not very elegant, solution to
our problem.
Maybe you could steal some of the log text from my first suggestion to this
patch? I think that describes the problem well.

Acked-by: Jon

///jon


>  	msg_set_seqno(bmsg, msg_seqno(msg));
> --
> 2.13.7




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
