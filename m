Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 279E528C48E
	for <lists+tipc-discussion@lfdr.de>; Tue, 13 Oct 2020 00:13:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kS64P-0007RR-1X; Mon, 12 Oct 2020 22:13:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kS64N-0007RK-Ug
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Oct 2020 22:13:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XEV5cTkGGvOLxWmzLvtWF18nepz4+bfcPlTTxk9JvOE=; b=kYvHgEHts6IP5SwgTdfezC4TTk
 sNvFtVNQYQnDQgSY/vllLgVH2FTQgtonDRVz4IuUKYyqitiaeLhC9vm64vG0WZhj1h7LhQikwJ2ym
 JgdsoOoGeoYs0Mm/PbExoJCT+5g407qSR0FIVuWjYHUAxO7olbrjAXVsQLNUOfBhrUEU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XEV5cTkGGvOLxWmzLvtWF18nepz4+bfcPlTTxk9JvOE=; b=jCcXo5WnwyJmaq/z4CCzd2RH+0
 OxWkNaVadWfe0pjHHYPbNoIKrR7IjOCAkSdSRS/fp6dZLTJGBGq1wxrpM9+E6e38lpwSC1hP2ng5l
 bS8srrqRTo0wp7dB1hMrXt+mqXiMhDZajZ+X30EyB39Vw2xS1zW0mc9FCD53GMDbIAxI=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kS64I-007wtR-AO
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Oct 2020 22:13:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602540789;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XEV5cTkGGvOLxWmzLvtWF18nepz4+bfcPlTTxk9JvOE=;
 b=alSoPvCTvovlPQk45xaPsE1Ez1nXOQjaaVlObsuOmSgUGTbT0uRsCOURCUgYMm5NkIRaX8
 f09XCpWCDAt0hhmpdU2VjlK/7kJnE7zzLjIk3Is/3zhMW0Kf4grEIhynHngKYduoY9QMf5
 aLWh4WinFiBqksWlQD4EgiOzT5uYrCA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-577-6D0VS1ZFMoqxpWL_Uf10jQ-1; Mon, 12 Oct 2020 18:13:07 -0400
X-MC-Unique: 6D0VS1ZFMoqxpWL_Uf10jQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E026D107AD91;
 Mon, 12 Oct 2020 22:13:05 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 346AD10013DB;
 Mon, 12 Oct 2020 22:13:05 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20201011091401.10418-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <46f3f6b7-f8a8-a02c-7aa2-f823204ef2f4@redhat.com>
Date: Mon, 12 Oct 2020 18:13:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201011091401.10418-1-tuong.t.lien@dektech.com.au>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kS64I-007wtR-AO
Subject: Re: [tipc-discussion] [iproute2-next 0/2] tipc: add new options for
 TIPC encryption
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 10/11/20 5:13 AM, Tuong Lien wrote:
> This series adds two new options in the 'iproute2/tipc' command, enabling users
> to use the new TIPC encryption features, i.e. the master key and rekeying which
> have been recently merged in kernel.
>
> The help menu of the "tipc node set key" command is also updated accordingly:
>
> # tipc node set key --help
> Usage: tipc node set key KEY [algname ALGNAME] [PROPERTIES]
>         tipc node set key rekeying REKEYING
>
> KEY
>    Symmetric KEY & SALT as a composite ASCII or hex string (0x...) in form:
>    [KEY: 16, 24 or 32 octets][SALT: 4 octets]
>
> ALGNAME
>    Cipher algorithm [default: "gcm(aes)"]
>
> PROPERTIES
>    master                - Set KEY as a cluster master key
>    <empty>               - Set KEY as a cluster key
>    nodeid NODEID         - Set KEY as a per-node key for own or peer
>
> REKEYING
>    INTERVAL              - Set rekeying interval (in minutes) [0: disable]
>    now                   - Trigger one (first) rekeying immediately
>
> EXAMPLES
>    tipc node set key this_is_a_master_key master
>    tipc node set key 0x746869735F69735F615F6B657931365F73616C74
>    tipc node set key this_is_a_key16_salt algname "gcm(aes)" nodeid 1001002
>    tipc node set key rekeying 600
>
> Tuong Lien (2):
>    tipc: add option to set master key for encryption
>    tipc: add option to set rekeying for encryption
>
>   tipc/cmdl.c |  2 +-
>   tipc/cmdl.h |  1 +
>   tipc/node.c | 81 +++++++++++++++++++++++++++++++++++++++--------------
>   3 files changed, 62 insertions(+), 22 deletions(-)
>
Looks good to me.
Series
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
