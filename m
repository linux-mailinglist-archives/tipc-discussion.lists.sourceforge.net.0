Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1632954A1
	for <lists+tipc-discussion@lfdr.de>; Thu, 22 Oct 2020 00:05:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kVMEH-00020b-Eu; Wed, 21 Oct 2020 22:05:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dsahern@gmail.com>) id 1kUtE7-0005ee-68
 for tipc-discussion@lists.sourceforge.net; Tue, 20 Oct 2020 15:07:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TRLniivicDPBrJmWtD5VYf1FKJumtqurgTFqAYL5pRM=; b=GN52M3H+vgpe1QEAAiEwG71A+t
 u39aaxwvvn7oSqaOHkePyyDo7hQXAeWLyqBLKBEDUBa4k4nDcwArN09L2kv2aTSdyNkjogzBwHvet
 EWtcNBOkhY8lWTw8SgvziMYBf07dawQb/A+70V7xrxi1ZiCMXki2im/fjWQJIlYz+wHo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TRLniivicDPBrJmWtD5VYf1FKJumtqurgTFqAYL5pRM=; b=gVA7J5RqDDghEqZILGmd42R/fw
 CABSe6RdHStvd2oi/HN+BhavnJOhFqu2HdVFCUfotS/q3ubBbqw+F6MRtmbtZPWmjvNIBwl2yG9WJ
 kSWRSxkcLC86MESW/QMrSo98gkPbmYYYG6dUHvaOwh8GvD4CPJK3Oyi78K0JK4n8W1MA=;
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kUtDx-00HSgg-Dj
 for tipc-discussion@lists.sourceforge.net; Tue, 20 Oct 2020 15:07:03 +0000
Received: by mail-io1-f67.google.com with SMTP id y20so3841728iod.5
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 20 Oct 2020 08:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TRLniivicDPBrJmWtD5VYf1FKJumtqurgTFqAYL5pRM=;
 b=QekwbSLZj5vwDeeWNbhc2umShSFeSLnEgZiqvAmBjinqHH4cKMBpG+K22sqAunh4Jn
 784vxmj6rPcJzc+WyjxfJIUhQ4mCbjsxEETWdjqdzuLls+v+gf9311hHJyoL1clRc8qR
 6xN2g58bXoVp5olrPHKSr343Xpr2LOY2XHN2K71JVEkdAB/zqmjGaW7AVwfXhkfTLdtx
 NhBAwvHFtm81ZCp3kWiqplsEEUCB6+OKWIaFKUWqOGzLo4DDUeCkNUcf7Wo0Cs1dGL78
 nVdV8BmsxMo/WHsFs0sN1Ecq2/kWA1jgPS+455ThoEtd6uQ0aTanzKEQTdRb+NxGl6vb
 0Ksg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TRLniivicDPBrJmWtD5VYf1FKJumtqurgTFqAYL5pRM=;
 b=rFEGiIStaAExRfzaeAmGUYPtGBuDNG4kFMgged4TjedZ4u+N/JiKMYHOh/OGn9VKaB
 SFN4frbOIiYhTVTAPLaFIPxnhqB/nE6YENbzaUa0LmJwAy+0blsSCZT5EgclKKAvmCkI
 yx+Ner9xeH6Z6s1yGg4Zd1Dzv1+EKQG/MXUJE8TGR5b4y1bJ9I71zrybxKKiyMd8hF7p
 M9G9yhEA7+M28oDkLUrjKN/nSVLPJ31ZMD6HauJg0u4is8pzH61tGN1dQXGc4oGvjdWV
 MpJEcE9U9r2gU4uVHs4/J8h3b+qTsND19LL8Jdkimk4WYZF8k0aZNT1TACvlvyxh/5Rp
 uifQ==
X-Gm-Message-State: AOAM533A/WpAL4UNxjg5ZuTeklKTIDIoOmlpHeTKZeyRi37dh0Lb4ZPl
 KtUXNAIZQOx8xaW8u3S1xgBp1NxWQxE=
X-Google-Smtp-Source: ABdhPJxod+PxVrSaCiVitZe9GGgiFHhjqmV8thrE+U1dAKxbdMUzfCk4zHY0/tjExqNjVP9qVV0YNQ==
X-Received: by 2002:a05:6602:2d85:: with SMTP id
 k5mr2523144iow.165.1603206400722; 
 Tue, 20 Oct 2020 08:06:40 -0700 (PDT)
Received: from Davids-MacBook-Pro.local
 ([2601:282:803:7700:2cd9:64d4:cacf:1e54])
 by smtp.googlemail.com with ESMTPSA id z21sm1702069ioq.35.2020.10.20.08.06.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Oct 2020 08:06:40 -0700 (PDT)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com, netdev@vger.kernel.org
References: <20201016160201.7290-1-tuong.t.lien@dektech.com.au>
From: David Ahern <dsahern@gmail.com>
Message-ID: <942f4e8e-baf5-b8c4-bd5d-88872dfe7762@gmail.com>
Date: Tue, 20 Oct 2020 09:06:37 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20201016160201.7290-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dsahern[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kUtDx-00HSgg-Dj
X-Mailman-Approved-At: Wed, 21 Oct 2020 22:05:07 +0000
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 10/16/20 10:01 AM, Tuong Lien wrote:
> This series adds two new options in the 'iproute2/tipc' command, enabling users
> to use the new TIPC encryption features, i.e. the master key and rekeying which
> have been recently merged in kernel.
> 
> The help menu of the "tipc node set key" command is also updated accordingly:
> 
> # tipc node set key --help
> Usage: tipc node set key KEY [algname ALGNAME] [PROPERTIES]
>        tipc node set key rekeying REKEYING
> 
> KEY
>   Symmetric KEY & SALT as a composite ASCII or hex string (0x...) in form:
>   [KEY: 16, 24 or 32 octets][SALT: 4 octets]
> 
> ALGNAME
>   Cipher algorithm [default: "gcm(aes)"]
> 
> PROPERTIES
>   master                - Set KEY as a cluster master key
>   <empty>               - Set KEY as a cluster key
>   nodeid NODEID         - Set KEY as a per-node key for own or peer
> 
> REKEYING
>   INTERVAL              - Set rekeying interval (in minutes) [0: disable]
>   now                   - Trigger one (first) rekeying immediately
> 
> EXAMPLES
>   tipc node set key this_is_a_master_key master
>   tipc node set key 0x746869735F69735F615F6B657931365F73616C74
>   tipc node set key this_is_a_key16_salt algname "gcm(aes)" nodeid 1001002
>   tipc node set key rekeying 600
> 
> Tuong Lien (2):
>   tipc: add option to set master key for encryption
>   tipc: add option to set rekeying for encryption
> 
>  tipc/cmdl.c |  2 +-
>  tipc/cmdl.h |  1 +
>  tipc/node.c | 81 +++++++++++++++++++++++++++++++++++++++--------------
>  3 files changed, 62 insertions(+), 22 deletions(-)
> 

applied to iproute2-next


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
