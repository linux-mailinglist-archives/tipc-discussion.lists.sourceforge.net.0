Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAE42F1F97
	for <lists+tipc-discussion@lfdr.de>; Mon, 11 Jan 2021 20:35:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kz2xz-0005Up-8d; Mon, 11 Jan 2021 19:35:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kz2xx-0005UX-KV
 for tipc-discussion@lists.sourceforge.net; Mon, 11 Jan 2021 19:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9PW+QQor2PLszAm++mgxNtaVrM8Lk9LVX+LOh4t0tUw=; b=ex5ruWSDGgc2T0wKhlS5dj840E
 EELDjMFuO3UMFz64dm2NGonVO5y1/vHY71Rv4gKp/4ZOwT97QXp3w6jxx1fm4+1JZe9/aFxyN8q1d
 P9ur1vZQ4Ai4bQy/kvBGS8SMPBV26YSRumtpKOY9UodHq4iV+DxhiBhKH8ngVo/zBMX8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9PW+QQor2PLszAm++mgxNtaVrM8Lk9LVX+LOh4t0tUw=; b=EDDrd8C9FXCmNC4eZ1bucWUs3V
 TzRjlM8eLV+bvJdPp6DwmWh/jfkgWXZuWZjHxce7jAaXL4dD4HSwjJcpmX37YY3vmuLXQfWdJmddt
 TVyQudNBNwMpq/5leT9UBtTD4+KUs4tOBc55ulropSFCUytEU52+uC0SQHwMckDeAKvI=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kz2xs-001tgz-TJ
 for tipc-discussion@lists.sourceforge.net; Mon, 11 Jan 2021 19:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1610393690;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9PW+QQor2PLszAm++mgxNtaVrM8Lk9LVX+LOh4t0tUw=;
 b=Mxod28QsuG7SAUg/mmGHTzcB/AUaT9YOlkaMVLHKdR7vpae/LtXzZo1KhILg8qX/IOHelE
 zcbbr6psv1hm7ZnyedoNj904HUnaw96cf31SvjgkxYk64vJModw9GzCjSdNux/UBArj1bQ
 kz18CGeDZARhP1EiyqCMt8RZx7hBJGk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-421-rg-_Bdo3Nyu-RIvjiRYR-w-1; Mon, 11 Jan 2021 14:34:49 -0500
X-MC-Unique: rg-_Bdo3Nyu-RIvjiRYR-w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AFF6F15721;
 Mon, 11 Jan 2021 19:34:47 +0000 (UTC)
Received: from [10.10.117.154] (ovpn-117-154.rdu2.redhat.com [10.10.117.154])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 65E2B5D9F8;
 Mon, 11 Jan 2021 19:34:46 +0000 (UTC)
To: "Xue, Ying" <Ying.Xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-9-jmaloy@redhat.com>
 <DM6PR11MB3964CC67244CFB0167EAEC8684AB0@DM6PR11MB3964.namprd11.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <a548ee90-baaa-f0d6-deb1-24c6a913b626@redhat.com>
Date: Mon, 11 Jan 2021 14:34:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB3964CC67244CFB0167EAEC8684AB0@DM6PR11MB3964.namprd11.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kz2xs-001tgz-TJ
Subject: Re: [tipc-discussion] [net-next 08/16] tipc: refactor
 tipc_sendmsg() and tipc_lookup_anycast()
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
Cc: "xinl@redhat.com" <xinl@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 1/11/21 9:20 AM, Xue, Ying wrote:
> -	seq = &dest->addr.nameseq;
> -	if (dest->addrtype == TIPC_ADDR_MCAST)
> -		return tipc_sendmcast(sock, seq, m, dlen, timeout);
> -
> -	if (dest->addrtype == TIPC_SERVICE_ADDR) {
> -		type = dest->addr.name.name.type;
> -		inst = dest->addr.name.name.instance;
> -		dnode = dest->addr.name.domain;
> -		dport = tipc_nametbl_lookup_anycast(net, type, inst, &dnode);
> -		if (unlikely(!dport && !dnode))
> +	/* Determine destination */
> +	if (atype == TIPC_SERVICE_RANGE) {
>
> [Ying] Regarding my understanding, we should compare "atype" with TIPC_ADDR_MCAST rather than TIPC_SERVICE_RANGE. Please help to confirm.
Right. Except that they are the same (value == 1). I wanted to simplify 
by only using one of the macros inside the kernel code.

///jon

>
> +		return tipc_sendmcast(sock, &ua->sr, m, dlen, timeout);
> +	} else if (atype == TIPC_SERVICE_ADDR) {
> +		skaddr.node = ua->lookup_node;
> +		ua->scope = skaddr.node ? TIPC_NODE_SCOPE : TIPC_CLUSTER_SCOPE;
> +		if (!tipc_nametbl_lookup_anycast(net, ua, &skaddr))
>   			return -EHOSTUNREACH;
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
