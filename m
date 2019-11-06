Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B9BF13B5
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Nov 2019 11:17:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSINI-0003vd-GC; Wed, 06 Nov 2019 10:17:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iSING-0003vV-R1
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 10:17:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oRTdwBIzofwAJejkqYU/6H6WLhC61UXN0KuHtsCHJYU=; b=ZQzLRGd8m2M+udXq1gUL/bMqNv
 w0H19/y3YRsI7CCTJRMYtiS30bIJp5QxpNAbqaZwPyGjn5BV8RvNapwuIz8g6BqOVYqa7ILkvBm84
 jALp5ILphSgZ3IGVdVb+ttfdsnoC3L17lEY6Q5HjrcCnu6o3uwKVAZSsY+La9CUN7WIw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oRTdwBIzofwAJejkqYU/6H6WLhC61UXN0KuHtsCHJYU=; b=BMLgMNp+zUwSXrCJpoUPWjmHaV
 n+rXc8hFx6foFYAYsv0LeCOEI358bTJ0+IaU1ck97KOC5PhsTtT6ODN3h97RgpCnEo0lT32poKPbw
 WjU6UWmoVi1sQMdfvtKaG+fpgNH0D4Yh3szd95HRVjrL+KUOVGAX9nBKi7XMWbEncbSM=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSINB-0022EF-KP
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 10:17:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id E5CD54AA75;
 Wed,  6 Nov 2019 21:16:58 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1573035418; bh=kzMbYWi6GcjZ+h
 j4f6Uyws2vbhATS4dSG1jO6QpP+Yk=; b=m3HiY45kWBQP6b48/MOEUSgERII/3m
 SR/fjsF3wmhCUd4W3hrw7nl9PvKVaNtvs5RpySQm11qwbUjoaPzcVYT3BthyWqDU
 9JAx8xwZ3IIxRzJ6IHGmxb45dqaMdIGgUfI/XyW4N2rXilP90F8J21H4lU4p5JYE
 2FjUjTcPjgDiA=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id IwtPvnsepyGa; Wed,  6 Nov 2019 21:16:58 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 9435C4AA7A;
 Wed,  6 Nov 2019 21:16:58 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 973E54AA75;
 Wed,  6 Nov 2019 21:16:57 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Ying Xue'" <ying.xue@windriver.com>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191105105056.15779-1-tuong.t.lien@dektech.com.au>
 <20191105105056.15779-5-tuong.t.lien@dektech.com.au>
 <8d08c853-430f-21de-1d3f-43428fdb9faa@windriver.com>
In-Reply-To: <8d08c853-430f-21de-1d3f-43428fdb9faa@windriver.com>
Date: Wed, 6 Nov 2019 17:16:56 +0700
Message-ID: <0dbb01d5948b$526d56c0$f7480440$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQEPQsZYIYMNMIQIxE5H/XUm2Tf7AgLDZ/4wAaOnyt+o51a3AA==
Content-Language: en-us
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iSINB-0022EF-KP
Subject: Re: [tipc-discussion] [PATCH v2 4/5] tipc: introduce TIPC
 encryption & authentication
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

Ok, I will remove that "ifdef ... else", I don't like it either, just worried about a compiler warning but I have tested & it is ok.
I think we can pass the node pointer to the "__dnode" anyway (don't need a NULL), so can remove the other "ifdef ... else" at every function calls (total = 8), do you agree?

BR/Tuong

-----Original Message-----
From: Ying Xue <ying.xue@windriver.com> 
Sent: Wednesday, November 6, 2019 3:42 PM
To: Tuong Lien <tuong.t.lien@dektech.com.au>; tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com; maloy@donjonn.com
Subject: Re: [PATCH v2 4/5] tipc: introduce TIPC encryption & authentication

On 11/5/19 6:50 PM, Tuong Lien wrote:
>  void tipc_bearer_xmit(struct net *net, u32 bearer_id,
>  		      struct sk_buff_head *xmitq,
> -		      struct tipc_media_addr *dst)
> +#ifdef CONFIG_TIPC_CRYPTO
> +		      struct tipc_media_addr *dst,
> +		      struct tipc_node *__dnode
> +#else
> +		      struct tipc_media_addr *dst
> +#endif
> +		      )

To make code simpler, I think we can directly add one new parameter (ie,
__dnode) no matter whether CONFIG_TIPC_CRYPTO is enabled or not.

When CONFIG_TIPC_CRYPTO is disabled, we just pass NULL to "__dnode"
parameter. As a consequence, we don't need to use CONFIG_TIPC_CRYPTO
config to separate the two different situations of whether
CONFIG_TIPC_CRYPTO is enabled or not whenever tipc_bearer_xmit() is called.



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
