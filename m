Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEE61EB1E2
	for <lists+tipc-discussion@lfdr.de>; Tue,  2 Jun 2020 00:51:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jftGs-00030n-MF; Mon, 01 Jun 2020 22:51:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jftGr-00030f-BF
 for tipc-discussion@lists.sourceforge.net; Mon, 01 Jun 2020 22:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c8ROy3ZwoJbu3dY6srvdmq5Dxan3Caa8adKvt/NkrQ0=; b=dYar6HgBtouTK2CuRwN1SKob7p
 HvYQGXOBNwom6SC4TJ/NvC8VohOnI/SQnkGf4xLMfj3xpwg8aonHcCF0eWF18ReT9oM6fz3q+hTum
 soC/yNnosUHib63B76YN9k1k4JLyoGvbqUAroyWUfDu44RFZfCRQvF2hYjcAeU4NY5Zg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c8ROy3ZwoJbu3dY6srvdmq5Dxan3Caa8adKvt/NkrQ0=; b=SqqJU7Y1XtJ/CjrDdxT8gsG18Z
 qAKOILa+rGjTj1GSdEK+spikBtBhmutKjTQ6YMq19qkYAwauSm1NdNm4aeJuDBwzyfhIHtblIs814
 NhO0j1hr5yWUzbuh0SfoAf2p24w5Hyc6UrITNxT5fKajoFt64eN2wp9eWvsDtSKXq5vc=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jftGm-005Bdx-2e
 for tipc-discussion@lists.sourceforge.net; Mon, 01 Jun 2020 22:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591051852;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=c8ROy3ZwoJbu3dY6srvdmq5Dxan3Caa8adKvt/NkrQ0=;
 b=V1EkULinegqEUd+IRKGEfvOrXIhT+IH6VZwi5UE1qBRc42TqlYGuHtOoZRvqwy/nBZI527
 BHeYt3dbaakoGhBkcIeXP9IzkI4xfK4mXTyohu3Ks53WEg76claHzvm15Ce6hbde4x3VbN
 Fq/2KOI/mji8GSVCr4WiVj16+AJTQsk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-30-zPxH-UU5O3yTCV3SOJFDgQ-1; Mon, 01 Jun 2020 18:50:50 -0400
X-MC-Unique: zPxH-UU5O3yTCV3SOJFDgQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E8EE0100CC85;
 Mon,  1 Jun 2020 22:50:48 +0000 (UTC)
Received: from [10.10.117.121] (ovpn-117-121.rdu2.redhat.com [10.10.117.121])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EEF26579A3;
 Mon,  1 Jun 2020 22:50:47 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200529074816.4585-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <834aea00-16a2-9315-8a92-bacd382b37dc@redhat.com>
Date: Mon, 1 Jun 2020 18:50:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200529074816.4585-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fudan.edu.cn]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jftGm-005Bdx-2e
Subject: Re: [tipc-discussion] [net 0/2] tipc: revert two commits
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
Cc: tipc-dek@dektech.com.au
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Series acked by:
Jon Maloy <jmaloy@redhat.com>

On 5/29/20 3:48 AM, Tuong Lien wrote:
> Hi Jon, all,
>
> I can see we had two commits from 'Xiyu Yang <xiyuyang19@fudan.edu.cn>'
> without your 'Acked-by', not sure why... They have caused kernel panics
> and the TIPC encryption cannot work correctly. Therefore, so I'd revert
> them.
>
> Please help check. Thanks a lot!
>
> BR/Tuong
>
> Tuong Lien (2):
>    Revert "tipc: Fix potential tipc_node refcnt leak in tipc_rcv"
>    Revert "tipc: Fix potential tipc_aead refcnt leak in tipc_crypto_rcv"
>
>   net/tipc/crypto.c | 1 -
>   net/tipc/node.c   | 1 -
>   2 files changed, 2 deletions(-)
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
